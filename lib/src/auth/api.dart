
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'constants.dart';


class Api {
  static HttpConfConnection hcc = new HttpConfConnection();

  static Api api = Api(hcc); // public access variable for all API comunications;
}

class HttpConfConnection {
  static const JTW_AUTH_HEADER_PREFIXS = ['JWT', 'Bearer', 'Token'];
  static const STATUS_20n = [200, 201, 202, 204];
  static const SCHEMES = ['http', 'https', 'ftp', 'ftps'];
  static const METHOD_GET = 'GET';
  static const METHOD_POST = 'POST';
  static const METHOD_PUT = 'PUT';
  static const METHOD_PATH = 'PATH';
  static const METHOD_DELETE = 'DELETE';
  static const CSRFTOKEN = 'csrftoken';
  static const API = 'api/';
  static const API_ENDPOINTS_TO_LOWERCASE = true;

  // IMPORTANT: NEVER EVER USE 127.0.0.1 NOR localhost as this.host
  // Because either are different from Server and Device
  HttpConfConnection({this.scheme = 'http', this.host = '192.168.1.53', this.port = 8099});

  String scheme;
  String host;
  int port;
//  String _jtwAuthHeaderPrefix = JTW_AUTH_HEADER_PREFIXS[1];

}

class Api {
  Api(this.hcc);

  HttpConfConnection hcc;

  // Only one http client for app running
  HttpClient _httpClient = new HttpClient();

  // useful variables (globals) to store token, user and cookies
  String _token = '';
  String _csrfToken = '';
  Map _user;
  List<Cookie> _cookies = new List<Cookie>();

  // Uri converter from configuration + endpoint
  // ===========================================================================
  Uri _uriFromEndPoint(String endpoint) {
    return new Uri(
      scheme: this.hcc.scheme,
      host: this.hcc.host,
      port: this.hcc.port,
      path: endpoint,
    );
  }

  // Single POST for Login and any other
  // ===========================================================================
  Future<Result> post(String endpoint,
      {Map<String, String> mbody,
      Map<String, String> headers,
      bool saveCookies = false}) async {

    Result _result = new Result(Co.ERROR);

    if (HttpConfConnection.API_ENDPOINTS_TO_LOWERCASE)
      endpoint = endpoint.toLowerCase();

    Uri finalyEnd = _uriFromEndPoint(endpoint);
    HttpClientRequest _request;
    // Request
    try {
      print(finalyEnd.hasPort);
      print(finalyEnd.port);

      _request =
      await _httpClient.openUrl(HttpConfConnection.METHOD_POST, finalyEnd);
    } catch(e) {
      print(e.toString());
    }
//    print(_request.uri.toString());
    // Body
    String sbody = json.encode(mbody);
//    List<int> _ibody = utf8.encode(json.encode(mbody));

    // Headers
    _request.headers.contentType = ContentType.JSON;
//    _request.headers.add(HttpHeaders.CONTENT_LENGTH, _ibody.length.toString());
    _request.headers.add(HttpHeaders.CONTENT_LENGTH, sbody.length.toString());

    // Add Body
//    _request.add(_ibody);
    _request.write(sbody);

    String _body = '';
    try {
      // The Response
      HttpClientResponse _response = await _request.close();

      // Ok? Status 200
      if (_response.statusCode == 200) {
        if (saveCookies) {
            // ! Save the cookies for future gets/posts
            _cookies.clear(); // Borrar todas las cookies anteriores (si hay).
            _response.headers.forEach((k, v) {
              if (k == 'set-cookie') {
                v.forEach((cc) {
                  _cookies.add(Cookie.fromSetCookieValue(cc));
                });
              }
            });
print('COOKIES EN LOGIN: '+_cookies.toString());
            _cookies.forEach((cook) {
//          cook.value = cook.value + '; Domain='+_host;
//print('Cookie Domain: '+cook.domain);
              cook.domain = hcc.host;
print('Cookie Name: '+cook.name);
print('Cookie Value: '+cook.value);
print('Cookie Domain: '+cook.domain);
              if (cook.name == HttpConfConnection.CSRFTOKEN) {
                _csrfToken = cook.value;
              }
            });
print(HttpConfConnection.CSRFTOKEN +': $_csrfToken');
        }
        // Get the body from response
        _body = await _response.transform(utf8.decoder).join('');
        // Convert body to Map to take token and user data
print('_Body en POST Login: $_body');
        Map _mbody = json.decode(_body);
        _token = _mbody['token'];
print(_token);
        _user = _mbody['user'];
print(_user.toString());
      } else {
        // Another Status, any error
        _body = _response.statusCode.toString() +
            ' ' +
            _response.reasonPhrase +
            ' ' +
            await _response.transform(utf8.decoder).join('');
      }
      _result.estado = _response.statusCode;
      _result.mensaje = _response.reasonPhrase;
      _result.objeto = _body;
    } catch (e) {
      // Catch for Exception
      _result.mensaje = '$e';
    }

    return _result;
  }

  // Get in API/endpoint/
  // ===========================================================================
  Future<Result> getApi(String endpoint) async {

    Result _result = new Result(Co.ERROR);

    if (HttpConfConnection.API_ENDPOINTS_TO_LOWERCASE)
      endpoint = endpoint.toLowerCase();

    String _body;
    // The Request
    HttpClientRequest _request = await _httpClient.openUrl(
        HttpConfConnection.METHOD_GET, _uriFromEndPoint(HttpConfConnection.API + endpoint));

    _request.headers.contentType = ContentType.JSON;
print('');
print('HEADERS EN GET: ');
print(_request.headers.toString());

    try {
      // Add Cookies previously saved
print('');
print('COOKIES EN GET: ');
print(_cookies.toString());
print(_request.uri.toString());
//      _request.cookies.addAll(_cookies);
      // The Response
      HttpClientResponse _response = await _request.close();
print('');
print('RESPONSE HEADERS AFTER GET: ');
print(_response.headers.toString());
      // Ok? Status 200
      if (_response.statusCode == 200) {
        // The right body
        _body = await _response.transform(utf8.decoder).join('');
      } else {
        // Error in body
        _body = _response.statusCode.toString() +
            ' ' +
            _response.reasonPhrase +
            ' ' +
            await _response.transform(utf8.decoder).join('');
      }
      _result.estado = _response.statusCode;
      _result.mensaje = _response.reasonPhrase;
      _result.objeto = _body;
    } catch (e) {
      // Catch for Exception
      _result.mensaje = '$e';
    }

    return _result;
  }

  // ===========================================================================
  Future<Result> postApi(String endpoint, Map mbody) async {
    return await _postputApi(HttpConfConnection.METHOD_POST, endpoint, mbody);
  }

  // ===========================================================================
  Future<Result> putApi(String endpoint, Map mbody) async {
    return await _postputApi(HttpConfConnection.METHOD_PUT, endpoint, mbody);
  }

  // API POST for CRUD and others that requires api authentication & authorization
  // ===========================================================================
  Future<Result> _postputApi(String method, String endpoint, Map mbody) async {

    Result _result = new Result(Co.ERROR);

    if (HttpConfConnection.API_ENDPOINTS_TO_LOWERCASE)
      endpoint = endpoint.toLowerCase();

    // Request
    HttpClientRequest _request =
        await _httpClient.openUrl(method, _uriFromEndPoint(HttpConfConnection.API + endpoint ));

    print('En _postputApi: '+_request.uri.toString());
    // Body
    String sbody = json.encode(mbody);
print('sBody: $sbody');
//    List<int> _ibody = utf8.encode(json.encode(mbody));
//print('iBody: $_ibody');

    // Headers
    _request.headers.contentType = ContentType.JSON;
//    _request.headers.add(HttpHeaders.CONTENT_LENGTH, _ibody.length.toString());
    _request.headers.add(HttpHeaders.CONTENT_LENGTH, sbody.length.toString());
//    _request.headers.set('Authorization', '$_jtwAuthHeaderPrefix $_token');
//    _request.headers.set('x-$CSRFTOKEN', '$_csrfToken');

print('');
print('HEADERS EN $method: ');
print(_request.headers.toString());
    // Add Body
//    _request.add(_ibody);
    _request.write(sbody);

print('');
print('BODY EN $method: $sbody');
//print(mbody.toString());
    String _body = '';
    try {
      // Add Cookies previously saved
//      _request.cookies.addAll(_cookies);
print('');
print('COOKIES EN REQUEST EN $method: ');
print(_request.cookies.toString());
print(_request.uri.toString());
      // The Response
      HttpClientResponse _response = await _request.close();
print('');
print('RESPONSE HEADERS EN $method: ');
print(_response.headers.toString());

      // Ok? Status 200
      if (HttpConfConnection.STATUS_20n.indexOf(_response.statusCode) >= 0) {
        // Get the body from response
        _body = await _response.transform(utf8.decoder).join('');
print('Body Response on $method: $_body');
      } else {
        // Another Status, any error
        _body = _response.statusCode.toString() +
            ' ' +
            _response.reasonPhrase +
            ': ' +
            await _response.transform(utf8.decoder).join('');
      }
      _result.estado = _response.statusCode;
      _result.mensaje = _response.reasonPhrase;
      _result.objeto = _body;
    } catch (e) {
      // Catch for Exception
      _result.mensaje = '$e';
    }

    return _result;
  }

  // DELETE
  // ===========================================================================
  Future<Result> deleteApi(String endpoint) async {

    Result _result = new Result(Co.ERROR);

    if (HttpConfConnection.API_ENDPOINTS_TO_LOWERCASE)
      endpoint = endpoint.toLowerCase();

    // Request
    HttpClientRequest _request =
    await _httpClient.openUrl(HttpConfConnection.METHOD_DELETE, _uriFromEndPoint(HttpConfConnection.API + endpoint ));

    print('En deleteApi: '+_request.uri.toString());

    String _body = '';
    try {
 
      HttpClientResponse _response = await _request.close();
      print('');
      print('RESPONSE HEADERS EN DELETE: ');
      print(_response.headers.toString());

      // Ok? Status 200
      if (HttpConfConnection.STATUS_20n.indexOf(_response.statusCode) >= 0) {
        // Get the body from response
        _body = await _response.transform(utf8.decoder).join('');
        print('Body Response on DELETE: $_body');
      } else {
        // Another Status, any error
        _body = _response.statusCode.toString() +
            ' ' +
            _response.reasonPhrase +
            ': ' +
            await _response.transform(utf8.decoder).join('');
      }
      _result.estado = _response.statusCode;
      _result.mensaje = _response.reasonPhrase;
      _result.objeto = _body;
    } catch (e) {
      // Catch for Exception
      _result.mensaje = '$e';
    }

    return _result;
  }
}

