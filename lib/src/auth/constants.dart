class Co {
static const KEY = 'key';
static const SAVE = 'Save';
static const DELETE = 'Delete';
static const ACCEPT = 'Accept';
static const CANCEL = 'Cancel';

static const VISTA_NUEVO_REGISTRO = 'New';

static const LOG = 'log';
static const STATE = 'state';

static const ERROR = -1;

static const OK = 0;

static const ID_ZERO = 0;
static const PK_ZERO = ID_ZERO;
static const REGISTRO_NUEVO = 1000;
static const REGISTRO_MODIFICADO = 1001;
static const REGISTRO_BORRADO = 1002;

static const ES_REGISTRO = '{"id":';
static const ES_LISTA_REGISTROS = '[' + ES_REGISTRO;

static const TITULO_ABRE = ' [';
static const TITULO_CIERRA = ']';

static const MENSAJE_ESPERA = 'Waiting answer';
static const CAMPOS_OBLIGATORIOS = '* indicates mandatory data';
static const MENSAJE_REGISTRO_BORRADO = 'The record does not already exist. Deleted by another user ?';
static const MENSAJE_CORREGIR_ERRORES = 'please correct the errors in red before saving.';

static const double PADDING_LISTAS = 10.0;

static const ALTO_ITEMS_LISTADOS = 50.0;
static const MARGEN_ITEMS_LISTADOS_VERTICAL = 10.0;
static const PADDING_ITEMS_LISTADOS_VERTICAL = 5.0;

static const IDIOMA_PAIS = 'es_EC';

static const COMPONENTE_BD_SELECCIONAR = 'BDSeleccionar';
static const COMPONENTE_BD_FECHA = 'BDEdicionFecha';
static const COMPONENTE_BD_EDICION_TEXTO = 'BDEdicion';
static const COMPONENTE_BD_BINARIO = 'BDBinario';
static const COMPONENTE_BD_NUMERO = 'BDEdicionNumero';
static const COMPONENTE_BD_MEMO = 'BDMemo';
static const COMPONENTE_BD_MONEDA = 'BDEdicionMoneda';
static const COMPONENTE_BD_HORA = 'BDEdicionHora';
static const COMPONENTE_BD_RADIO = 'BDGrupoRadio';
static const COMPONENTE_BD_CALIFICACION = 'BDCalificacion';
static const COMPONENTE_BD_BUSQUEDACOMBO = 'BDBusquedaCombo';
static const COMPONENTE_BD_CHEQUEO = 'BDChequeo';
}

bool esRegistro(String s) {
return s. startsWith(Co.ES_REGISTRO);
}

bool esListaRegistro(String s) {
return s. startsWith(Co.ES_LISTA_REGISTROS);
}

class Result {
Result(this.status, {this.object = null, this.message = "});

int state;
Object object;
String message;
}

// Variables for Widgets
class Vidget {
Vidget({this.message = ", this.title = 'Widget'});

String message;
String title;
}

String campoObligatorio(String field) {
return " The field $field is required.';
}
