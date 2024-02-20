import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['it', 'pt', 'en', 'es'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? itText = '',
    String? ptText = '',
    String? enText = '',
    String? esText = '',
  }) =>
      [itText, ptText, enText, esText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    '96z2m7e5': {
      'it': 'Il Villaggio dei Carusi',
      'en': 'Il Villaggio dei Carusi',
      'es': 'Il Villaggio dei Carusi',
      'pt': 'Il Villaggio dei Carusi',
    },
    '7y3aakas': {
      'it': 'Luoghi',
      'en': 'Places',
      'es': 'Lugares',
      'pt': 'Lugares',
    },
    'aesn9e13': {
      'it': 'Notizie ed Eventi',
      'en': 'News and Events',
      'es': 'Noticias y Eventos',
      'pt': 'Novidades e Eventos',
    },
    '85jr3f6l': {
      'it': 'Dove dormire',
      'en': 'Where to sleep',
      'es': 'Dónde dormir',
      'pt': 'Onde dormir',
    },
    '6874f7ll': {
      'it': 'Food',
      'en': 'Food',
      'es': 'Food',
      'pt': 'Food',
    },
    'qjizjxtp': {
      'it': 'Contatti',
      'en': 'Contacts',
      'es': 'Contactos',
      'pt': 'Contatos',
    },
    'am2cjq4f': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // Login
  {
    'sc0f7sot': {
      'it': 'Login',
      'en': 'Login',
      'es': 'Login',
      'pt': 'Login',
    },
    '21nvr3y7': {
      'it': 'Utente',
      'en': 'User',
      'es': 'Usuario',
      'pt': 'Usuário',
    },
    'd872tm5n': {
      'it': 'Password',
      'en': 'Password',
      'es': 'Contraseña',
      'pt': 'Senha',
    },
    'ehwxf3m7': {
      'it': 'Login',
      'en': 'Login',
      'es': 'Login',
      'pt': 'Login',
    },
    '3x75qjfp': {
      'it': 'Hai dimenticato la password?',
      'en': 'Did you forget your password?',
      'es': '¿Olvidaste tu contraseña?',
      'pt': 'Você esqueceu sua senha?',
    },
    'fz5f66je': {
      'it': 'Puoi utilizzare un social network per accedere:',
      'en': 'You can use a social network to log in:',
      'es': 'Puedes utilizar una red social para iniciar sesión:',
      'pt': 'Você pode usar uma rede social para fazer login:',
    },
    'anmqicjl': {
      'it': 'Sign-up',
      'en': 'Sign-up',
      'es': 'Sign-up',
      'pt': 'Sign-up',
    },
    'whynhlxd': {
      'it': 'Username',
      'en': 'Username',
      'es': 'Nombre de usuario',
      'pt': 'Nome de usuário',
    },
    'hkfgvpmo': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    'ldbealp1': {
      'it': 'Nome',
      'en': 'Firstname',
      'es': 'Nombre de pila',
      'pt': 'Primeiro nome',
    },
    'hieul6ve': {
      'it': 'Cognome',
      'en': 'Surname',
      'es': 'Apellido',
      'pt': 'Sobrenome',
    },
    '59a63ig0': {
      'it': 'Email',
      'en': 'Email',
      'es': 'Email',
      'pt': 'Email',
    },
    'ah7e0qvr': {
      'it': 'Password',
      'en': 'Password',
      'es': 'Contraseña',
      'pt': 'Senha',
    },
    'v2jkax79': {
      'it': 'Crea Account',
      'en': 'Create Account',
      'es': 'Crear una cuenta',
      'pt': 'Criar uma conta',
    },
    'aba44983': {
      'it': 'Oppure usa un social per creare un account:',
      'en': 'Or use a social network to create an account:',
      'es': 'O utilice una red social para crear una cuenta:',
      'pt': 'Ou use uma rede social para criar uma conta:',
    },
    'x129olks': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // EsqueciSenha
  {
    'tdobbrpr': {
      'it': 'Problema con l\'accesso?',
      'en': 'Problem logging in?',
      'es': '¿Problemas para iniciar sesión?',
      'pt': 'Problema ao fazer login?',
    },
    'lrsesv6k': {
      'it':
          'Invieremo un\'email con un link per reimpostare il tua password, inserisci di seguito il nome utente associato al tuo account.',
      'en':
          'We will send an email with a link to reset your password, please enter the username associated with your account below.',
      'es':
          'Le enviaremos un correo electrónico con un enlace para restablecer su contraseña; ingrese el nombre de usuario asociado con su cuenta a continuación.',
      'pt':
          'Enviaremos um e-mail com um link para redefinir sua senha. Insira o nome de usuário associado à sua conta abaixo.',
    },
    'a3zxbfys': {
      'it': 'Utente',
      'en': 'Username',
      'es': 'Nombre de usuario',
      'pt': 'Nome de usuário',
    },
    '7w2wo3l4': {
      'it': 'Inserisci il tuo utente qui',
      'en': '',
      'es': '',
      'pt': '',
    },
    'skioxbie': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    'l1m8e249': {
      'it': 'Invia',
      'en': 'Send',
      'es': 'Enviar',
      'pt': 'Enviar',
    },
    'sw5mbq31': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // Categorias
  {
    'y5226fnh': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // formContatos
  {
    'iwx0v3ue': {
      'it': 'Oggetto',
      'en': 'Object',
      'es': 'Objeto',
      'pt': 'Assunto',
    },
    '6jmsxy1r': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    'yd3r2ieb': {
      'it': 'E-mail',
      'en': 'E-mail',
      'es': 'E-mail',
      'pt': 'E-mail',
    },
    '6khnl1h9': {
      'it': 'Inserisci il tuo messaggio qui..',
      'en': 'Enter your message here..',
      'es': 'Introduzca su mensaje aquí..',
      'pt': 'Digite sua mensagem aqui..',
    },
    '7fqnuxp6': {
      'it': 'Invia',
      'en': 'Submit',
      'es': 'Enviar',
      'pt': 'Enviar ',
    },
    'udfazkbt': {
      'it': 'Contatto',
      'en': 'Contact',
      'es': 'Contacto',
      'pt': 'Contato',
    },
    'f0td1zlk': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // Pasta_2
  {
    'w3l7ajed': {
      'it': 'Opinioni',
      'en': 'Opinions',
      'es': 'Opiniones',
      'pt': 'Opiniões',
    },
    '3ovyx4ft': {
      'it': 'Contenuti:',
      'en': 'Contents:',
      'es': 'Contenidos:',
      'pt': 'Conteúdos:',
    },
    'awhxy7kt': {
      'it': 'Download',
      'en': 'Downloads',
      'es': 'Download',
      'pt': 'Baixar',
    },
    'wll807gk': {
      'it': 'Download',
      'en': 'Downloads',
      'es': 'Download',
      'pt': 'Baixar',
    },
    '1poapus6': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // Opinioes_Pastas
  {
    '3bbkf52e': {
      'it': 'Comentar',
      'en': '',
      'es': '',
      'pt': '',
    },
    'b2swoqqg': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // texto
  {
    'd43wmuhh': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // Menu
  {
    'zcfxus2l': {
      'it': 'Profilo',
      'en': 'Profile',
      'es': 'Perfil',
      'pt': 'Perfil',
    },
    'mg9e7tdb': {
      'it': 'Lingue',
      'en': 'Languages',
      'es': 'Idiomas',
      'pt': 'Idiomas',
    },
    'l10tkw0d': {
      'it': 'QR Code',
      'en': 'QR Code',
      'es': 'QR Code',
      'pt': 'QR Code',
    },
    'j984p7ou': {
      'it': 'Cancel',
      'en': 'Cancel',
      'es': 'Cancelar',
      'pt': 'Cancelar',
    },
    '7gf2ukqb': {
      'it': '🇪🇸',
      'en': '🇪🇸',
      'es': '🇪🇸',
      'pt': '🇪🇸',
    },
    'iyituseq': {
      'it': '🇺🇸',
      'en': '🇺🇸',
      'es': '🇺🇸',
      'pt': '🇺🇸',
    },
    '22xsh6lb': {
      'it': '🇧🇷',
      'en': '🇧🇷',
      'es': '🇧🇷',
      'pt': '🇧🇷',
    },
    'r6t26g7i': {
      'it': '🇮🇹',
      'en': '🇮🇹',
      'es': '🇮🇹',
      'pt': '🇮🇹',
    },
    '8qdqbefu': {
      'it': 'Social ',
      'en': 'Social ',
      'es': 'Social ',
      'pt': 'Social ',
    },
    'mjzbfrs4': {
      'it': 'Eventi',
      'en': 'Events',
      'es': 'Eventos',
      'pt': 'Eventos',
    },
    'i4p987ta': {
      'it': 'Notifiche',
      'en': 'Notifications',
      'es': 'Notificaciones',
      'pt': 'Notificações',
    },
    'ee85szvj': {
      'it': 'Sondaggi',
      'en': 'Surveys',
      'es': 'Encuestas',
      'pt': 'Pesquisas',
    },
    '7r7gni7n': {
      'it': 'Amici',
      'en': 'Friends',
      'es': 'Amigos',
      'pt': 'Amigos',
    },
    'uw1km4nq': {
      'it': 'FAQ',
      'en': 'FAQ',
      'es': 'FAQ',
      'pt': 'FAQ',
    },
    'r9pn3wq0': {
      'it': 'Banca',
      'en': 'Bank',
      'es': 'Banco',
      'pt': 'Banco',
    },
    'us1o6ei1': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // PerfilUsuario
  {
    '0k2cq91v': {
      'it': 'Modifica \ncopertina',
      'en': 'Edit\ncover',
      'es': 'Editar\nportada',
      'pt': 'Editar\ncapa',
    },
    '2fld0k09': {
      'it': 'Modifica \nimmagine',
      'en': 'Edit\nimage',
      'es': 'Editar\nimagen',
      'pt': 'Editar\nimagem',
    },
    'v1b4h8wt': {
      'it': 'Modificare Informazioni',
      'en': 'Edit Information',
      'es': 'Editar informacion',
      'pt': 'Editar informações',
    },
    'b8l9qaul': {
      'it': 'Nome completo',
      'en': 'Full name',
      'es': 'Nombre completo',
      'pt': 'Nome completo',
    },
    '11mup1hy': {
      'it': 'Email',
      'en': 'Email',
      'es': 'Email',
      'pt': 'Email',
    },
    'ss88vdbi': {
      'it': 'Data di nascita',
      'en': 'Date of birth',
      'es': 'Fecha de nacimiento',
      'pt': 'Data de nascimento',
    },
    'rohq3677': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    'sz8pqujw': {
      'it': 'Telefono',
      'en': 'Telephone',
      'es': 'Teléfono',
      'pt': 'Telefone',
    },
    'sf1obn7s': {
      'it': 'Aggiorna',
      'en': 'Update',
      'es': 'Actualizar',
      'pt': 'Atualizar',
    },
    'ia8tulau': {
      'it': 'Log out',
      'en': 'Log out',
      'es': 'Log out',
      'pt': 'Log out',
    },
    '2yn18smg': {
      'it': 'Modifica password',
      'en': 'Change Password',
      'es': 'Cambiar la contraseña',
      'pt': 'Alterar a senha',
    },
    'swdhffav': {
      'it': 'Nuova password',
      'en': 'New Password',
      'es': 'Nueva contraseña',
      'pt': 'Nova Senha',
    },
    'xcbf88bu': {
      'it': 'Ripeti nuova password',
      'en': 'Repeat new password',
      'es': 'Repita la nueva contraseña',
      'pt': 'Repita a nova senha',
    },
    '6iarr4wd': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    '0bmrco31': {
      'it': 'Aggiorna',
      'en': 'Update',
      'es': 'Actualizar',
      'pt': 'Atualizar',
    },
    'oal9szwi': {
      'it': 'Elimina account',
      'en': 'Delete account',
      'es': 'Borrar cuenta',
      'pt': 'Deletar conta',
    },
    'e3daaagx': {
      'it': 'Se desideri eliminare il tuo account, fai clic qui sotto:',
      'en': 'If you would like to delete your account, click below:',
      'es': 'Si desea eliminar su cuenta, clic a continuación:',
      'pt': 'Se desejar excluir sua conta, clique abaixo:',
    },
    'qdhf6bwu': {
      'it': 'Elimina Account',
      'en': 'Delete Account',
      'es': 'Borrar cuenta',
      'pt': 'Deletar conta',
    },
    'cahvcdrk': {
      'it':
          'Ci dispiace vederti andare e ti ringraziamo per aver utilizzato la nostra app. Se hai feedback o suggerimenti per noi, per favore condividili, siamo disponibili ad aiutarti con qualsiasi problema.',
      'en':
          'We\'re sorry to see you go and appreciate you for using our app. If you have any feedback or suggestions for us, please share, we\'re here to assist with any concerns.',
      'es':
          'Lamentamos verte partir y agradecemos que hayas utilizado nuestra aplicación. Si tienes algún comentario o sugerencia para nosotros, por favor, compártelo, estamos aquí para ayudarte con cualquier pregunta.',
      'pt':
          'Lamentamos vê-lo partir e agradecemos por ter usado nosso aplicativo. Se tiver algum feedback ou sugestões para nós, por favor, compartilhe, estamos à disposição para auxiliar em qualquer questão.',
    },
    'sgxm7tra': {
      'it': 'Modifica Profilo',
      'en': 'Edit profile',
      'es': 'Editar perfil',
      'pt': 'Editar Perfil',
    },
    'vzew7rnc': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // Idiomas
  {
    '6bn54l83': {
      'it': '🇮🇹',
      'en': '🇮🇹',
      'es': '🇮🇹',
      'pt': '🇮🇹',
    },
    '6uue92bj': {
      'it': 'Italiano',
      'en': 'Italian',
      'es': 'italiano',
      'pt': 'italiano',
    },
    'u3f3cyfw': {
      'it': '🇺🇸',
      'en': '🇺🇸',
      'es': '🇺🇸',
      'pt': '🇺🇸',
    },
    'l36tkai5': {
      'it': 'English',
      'en': 'English',
      'es': 'Inglés',
      'pt': 'Inglês',
    },
    '5sm3pqla': {
      'it': '🇧🇷',
      'en': '🇧🇷',
      'es': '🇧🇷',
      'pt': '🇧🇷',
    },
    '5j168qwo': {
      'it': 'Portugues Brasil',
      'en': 'Portuguese Brazil',
      'es': 'Portugués brasil',
      'pt': 'Brasil português',
    },
    '3jm1sphl': {
      'it': '🇪🇸',
      'en': '🇪🇸',
      'es': '🇪🇸',
      'pt': '🇪🇸',
    },
    'k48eqs9w': {
      'it': 'Espanhol',
      'en': 'Espanhol',
      'es': 'Español',
      'pt': 'Espanhol',
    },
    'givkk4a4': {
      'it': 'Lingue',
      'en': 'Languages',
      'es': 'Idiomas',
      'pt': 'Idiomas',
    },
    '72ee5d2v': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // RedeSocial
  {
    '5vh57tt0': {
      'it': 'Post',
      'en': 'Post',
      'es': 'Post',
      'pt': 'Post',
    },
    'ei2m7ano': {
      'it': 'Amici',
      'en': 'Friends',
      'es': 'Amigos',
      'pt': 'Amigos',
    },
    'wbq6omey': {
      'it': 'Posts',
      'en': 'Posts',
      'es': 'Posts',
      'pt': 'Posts',
    },
    'ievfrqpp': {
      'it': 'Generale',
      'en': 'General',
      'es': 'General',
      'pt': 'Geral',
    },
    'toaad380': {
      'it': 'Amici',
      'en': 'Friends',
      'es': 'Amigos',
      'pt': 'Amigos',
    },
    'wafaw2o1': {
      'it': 'Segui',
      'en': 'Follow',
      'es': 'Seguir',
      'pt': 'Seguir',
    },
    'ipnbleth': {
      'it': 'Reazioni',
      'en': 'Reactions',
      'es': 'Reacciones',
      'pt': 'Reações',
    },
    'fzr9hs76': {
      'it': 'Commenta',
      'en': 'Comment',
      'es': 'Comentario',
      'pt': 'Comente',
    },
    'smik6cvo': {
      'it': 'Commenti',
      'en': 'Commentaries',
      'es': 'Comentarios',
      'pt': 'Comentários',
    },
    '6eh7o1uh': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // Evento
  {
    'vc5qc4o1': {
      'it': 'al',
      'en': 'to',
      'es': 'al',
      'pt': 'a',
    },
    'lx0ge39q': {
      'it': 'Eventi',
      'en': 'Events',
      'es': 'Eventos',
      'pt': 'Eventos',
    },
    'jw9d78rd': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // Notificacoes
  {
    '06xq7gjx': {
      'it': 'Accetta',
      'en': 'Accept',
      'es': 'Aceptar',
      'pt': 'Aceitar',
    },
    '7zxvimxs': {
      'it': 'Rifiuta',
      'en': 'Refuse',
      'es': 'Rechazar',
      'pt': 'Recusar',
    },
    'uf7bt77g': {
      'it': 'Notifiche',
      'en': 'Notifications',
      'es': 'Notificaciones',
      'pt': 'Notificações',
    },
    'dlsawb56': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // Pesquisas
  {
    '6zxdcfbz': {
      'it': 'Page Title',
      'en': '',
      'es': '',
      'pt': '',
    },
    'b4i1doql': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // Amigos
  {
    'p1s2l5z7': {
      'it': 'Amici',
      'en': 'Friends',
      'es': 'Amigos',
      'pt': 'Amigos',
    },
    '14c3jkl4': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // Faq
  {
    '6issz6fc': {
      'it': 'F.A.Q.',
      'en': 'F.A.Q.',
      'es': 'F.A.Q.',
      'pt': 'F.A.Q.',
    },
    'iv6qjqy4': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // ProblemPage
  {
    'ploozmja': {
      'it':
          'Si è verificato un problema durante il processo di autenticazione. Si prega di riprovare o contattare l\'amministratore di sistema.',
      'en':
          'There was a problem during the authentication process. Please try again or contact your system administrator.',
      'es':
          'Hubo un problema durante el proceso de autenticación. Inténtelo de nuevo o comuníquese con el administrador del sistema.',
      'pt':
          'Ocorreu um problema durante o processo de autenticação. Tente novamente ou entre em contato com o administrador do sistema.',
    },
    'fv7y18r1': {
      'it': 'Esci',
      'en': 'Back',
      'es': 'Salir',
      'pt': 'Sair',
    },
    'qbivm1il': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // Contatos
  {
    '2k2f4vwv': {
      'it': 'Chiamaci',
      'en': 'Call us',
      'es': 'Llámanos',
      'pt': 'Ligue para nós',
    },
    'oknskkt2': {
      'it': 'Contattaci',
      'en': 'Contact us',
      'es': 'Contáctenos',
      'pt': 'Contate-nos',
    },
    'exqa6ip8': {
      'it': 'Socials ',
      'en': 'Socials',
      'es': 'Sociales',
      'pt': 'Redes Sociais',
    },
    'f0v6p3ms': {
      'it': 'Location',
      'en': 'Location',
      'es': 'Ubicación',
      'pt': 'Localização',
    },
    'wdqk01lf': {
      'it': 'Contatti',
      'en': 'Contacts',
      'es': 'Contactos',
      'pt': 'Contatos',
    },
    '965a5a6d': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // GoogleMap
  {
    'r806fogo': {
      'it': 'Google Maps',
      'en': 'Google Maps',
      'es': 'Google Maps',
      'pt': 'Google Maps',
    },
    'mjophozq': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // Social
  {
    'zz6h9oqh': {
      'it': 'Socials',
      'en': 'Social',
      'es': 'Social',
      'pt': 'Social',
    },
    '87b5wz3t': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // Banco
  {
    '8rc6onjt': {
      'it': 'Banca',
      'en': 'Bank',
      'es': 'Banco',
      'pt': 'Banco',
    },
    '0aj953rq': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // Aniversarios
  {
    'z7cp02cn': {
      'it': 'Compleanni',
      'en': '',
      'es': '',
      'pt': '',
    },
    'bg99v72r': {
      'it': 'Home',
      'en': '',
      'es': '',
      'pt': '',
    },
  },
  // VisitPerfil
  {
    'jm5pgm2t': {
      'it': 'Amici',
      'en': 'Friends',
      'es': 'Amigos',
      'pt': 'Amigos',
    },
    'zw2hgxzx': {
      'it': 'Posts',
      'en': 'Posts',
      'es': 'Posts',
      'pt': 'Posts',
    },
    'sgop3n4w': {
      'it': 'Rimuovi ',
      'en': 'Remove',
      'es': 'Eliminar',
      'pt': 'Remover',
    },
    'yo91j1ip': {
      'it': 'Segui',
      'en': 'Follow',
      'es': 'Seguir',
      'pt': 'Seguir',
    },
    '9l4uyyik': {
      'it': '0',
      'en': '',
      'es': '',
      'pt': '',
    },
    'm7dwbbld': {
      'it': 'Reazioni',
      'en': 'Reactions',
      'es': 'Reacciones',
      'pt': 'Reações',
    },
    'rrwosxaw': {
      'it': 'Commenta',
      'en': 'Comment',
      'es': 'Comentario',
      'pt': 'Comente',
    },
    'ov44r3dx': {
      'it': 'Commenti',
      'en': 'Comments',
      'es': 'Comentarios',
      'pt': 'Comentários',
    },
    'hyaewzof': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // imagem
  {
    '3ccovs7r': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // Likes
  {
    '5q51l1jk': {
      'it': 'Likes',
      'en': 'Likes',
      'es': 'Likes',
      'pt': 'Likes',
    },
    'p0svh3wz': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // Menu2
  {
    'uuhxe7u4': {
      'it': 'Cerca',
      'en': 'Search',
      'es': 'Buscar',
      'pt': 'Pesquisar',
    },
    '7wywcf7x': {
      'it': 'QR Code',
      'en': 'QR Code',
      'es': 'QR Code',
      'pt': 'QR Code',
    },
    'p4x4doia': {
      'it': 'Cancella',
      'en': 'Cancel',
      'es': 'Cancelar',
      'pt': 'Cancelar',
    },
    'scy3hvv9': {
      'it': 'Social',
      'en': 'Social',
      'es': 'Social',
      'pt': 'Social',
    },
    'h8r2mxax': {
      'it': 'Amici',
      'en': 'Friends',
      'es': 'Amigos',
      'pt': 'Amigos',
    },
    'mlm4whlh': {
      'it': 'Eventi',
      'en': 'Events',
      'es': 'Eventos',
      'pt': 'Eventos',
    },
    '9pd35nws': {
      'it': 'F.A.Q.',
      'en': 'F.A.Q.',
      'es': 'F.A.Q.',
      'pt': 'F.A.Q.',
    },
    'g6sqia3z': {
      'it': 'Contatto',
      'en': 'Contact',
      'es': 'Contacto',
      'pt': 'Contato',
    },
    'rlp4cnrc': {
      'it': 'Lingue',
      'en': 'Languages',
      'es': 'Idiomas',
      'pt': 'Idiomas',
    },
    'amm5ddb5': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // Form_Pesquisar
  {
    'c4gw7602': {
      'it':
          'Utilizza questo modulo per cercare e accedere rapidamente a qualsiasi persona, file e/o contenuto:',
      'en':
          'Use this form to quickly search and access any person, file and/or content:',
      'es':
          'Utilice este formulario para buscar y acceder rápidamente a cualquier persona, archivo y/o contenido:',
      'pt':
          'Use este formulário para pesquisar e acessar rapidamente qualquer pessoa, arquivo e/ou conteúdo:',
    },
    '2u935jr9': {
      'it': 'Cerca',
      'en': 'Search',
      'es': 'Cerca',
      'pt': 'Pesquisar',
    },
    'qtd69q8r': {
      'it': 'O que está procurando?',
      'en': 'Or what are you procuring?',
      'es': '¿O qué estás adquiriendo?',
      'pt': 'O que você está comprando?',
    },
    'omf3qqui': {
      'it': 'Utenti',
      'en': 'Users',
      'es': 'Usuarios',
      'pt': 'Usuários',
    },
    'jxzudugh': {
      'it': 'Documenti',
      'en': 'Documents',
      'es': 'Documentos',
      'pt': 'Documentos',
    },
    '4cs1w7cd': {
      'it': 'Contenuti',
      'en': 'Contents',
      'es': 'Contenido',
      'pt': 'Conteúdo',
    },
    'jndnizan': {
      'it': 'Download',
      'en': 'Download',
      'es': 'Download',
      'pt': 'Download',
    },
    '82hewd9k': {
      'it': 'Download',
      'en': 'Download',
      'es': 'Download',
      'pt': 'Download',
    },
    'imgowveq': {
      'it': 'Cerca',
      'en': 'Search',
      'es': 'Buscar',
      'pt': 'Pesquisar',
    },
    '5pi0mirc': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // quizResp
  {
    '9hz1nlxv': {
      'it': 'Domande:',
      'en': 'Requests:',
      'es': 'Preguntas:',
      'pt': 'Questões:',
    },
    '3hjfmxh5': {
      'it': 'Option 1',
      'en': 'Option 1',
      'es': 'Opción 1',
      'pt': 'Opção 1',
    },
    '4s4235mj': {
      'it': 'Rispondere',
      'en': 'Answer',
      'es': 'Respuesta',
      'pt': 'Responder',
    },
    'fwb5lfsl': {
      'it': 'Finalizza il quiz',
      'en': 'Finalize the quiz',
      'es': 'Finalizar el cuestionario',
      'pt': 'Finalizar o Quiz',
    },
    'o45pxfhl': {
      'it': 'Regole del quiz:',
      'en': 'Quiz rules:',
      'es': 'Reglas del cuestionario:',
      'pt': 'Regras do quiz:',
    },
    'lqdyxiqn': {
      'it': 'Inizia il quiz',
      'en': 'Start the quiz',
      'es': 'Iniciar el cuestionario',
      'pt': 'Iniciar quiz',
    },
    '9mkut4ng': {
      'it': 'Tentative realizzate:',
      'en': 'Attempts made:',
      'es': 'Intentos realizados:',
      'pt': 'Tentativas realizadas:',
    },
    '4eiv0cvf': {
      'it': 'Prossima',
      'en': 'Next',
      'es': 'Próxima',
      'pt': 'Próxima',
    },
    'njc5z4tb': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // Forum
  {
    'tgen8j5t': {
      'it': 'Commenta',
      'en': 'Comment',
      'es': 'Comentario',
      'pt': 'Comente',
    },
    'o8k96ph5': {
      'it': 'Lascia la tua opinione qui..',
      'en': 'Leave your opinion here..',
      'es': 'Deja tu opinión aquí..',
      'pt': 'Deixe aqui a sua opinião..',
    },
    '6yqwumvt': {
      'it': 'Invia',
      'en': 'Submit',
      'es': 'Enviar',
      'pt': 'Enviar',
    },
    'e17fb5mf': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // Cursos
  {
    'gvxmsz5n': {
      'it': 'Page Title',
      'en': '',
      'es': '',
      'pt': '',
    },
    'bbz5i11f': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // video
  {
    'yci5amfk': {
      'it': 'Home',
      'en': 'Home',
      'es': 'Home',
      'pt': 'Home',
    },
  },
  // Ambiente_lugares
  {
    'ldlqar6z': {
      'it': 'Nome Provincia',
      'en': '',
      'es': '',
      'pt': '',
    },
    'wqf620ku': {
      'it': 'Nome Provincia',
      'en': '',
      'es': '',
      'pt': '',
    },
    '3f3mj61j': {
      'it': 'Nome Provincia',
      'en': '',
      'es': '',
      'pt': '',
    },
    'n8paa2pb': {
      'it': 'Nome Provincia',
      'en': '',
      'es': '',
      'pt': '',
    },
    'y7txo7l7': {
      'it': 'Nome Lugar',
      'en': '',
      'es': '',
      'pt': '',
    },
    'lnx7iacp': {
      'it': 'Home',
      'en': '',
      'es': '',
      'pt': '',
    },
  },
  // Form_SubCategoria
  {
    '4mscyo1w': {
      'it': 'Informazioni:',
      'en': '',
      'es': '',
      'pt': '',
    },
    'xmvkibcw': {
      'it': 'Descrizione....',
      'en': '',
      'es': '',
      'pt': '',
    },
    'a5lf4t75': {
      'it': 'Home',
      'en': '',
      'es': '',
      'pt': '',
    },
  },
  // ComentarPasta
  {
    '0ggmv4wj': {
      'it':
          'Ti sono piaciuti i contenuti?\n\nLascia la tua opinione qui sotto!',
      'en': 'Did you like the contents?\n\nLeave your opinion below!',
      'es': '¿Te gustaron los contenidos?\n\n¡Deja tu opinión abajo!',
      'pt': 'Gostou do conteúdo?\n\nDeixe sua opinião abaixo!',
    },
    'h1eu08h5': {
      'it': 'Commenta',
      'en': 'Comment',
      'es': 'Comentar',
      'pt': 'Comente',
    },
    'wwpltdjq': {
      'it': 'La tua opinione qui!',
      'en': 'Your opinion here!',
      'es': '¡Tu opinión aquí!',
      'pt': 'Sua opinião aqui!',
    },
    'lkhrnej2': {
      'it': 'Invia',
      'en': 'Submit',
      'es': 'Enviar',
      'pt': 'Enviar',
    },
  },
  // PostagemComentario
  {
    'zita6s6b': {
      'it': 'Invia un commento',
      'en': 'Post a comment',
      'es': 'Publicar un comentario',
      'pt': 'Postar um comentário',
    },
    'zoic77d4': {
      'it': 'Inserisci il tuo commento qui!',
      'en': 'Enter your comment here!',
      'es': '¡Ingresa tu comentario aquí!',
      'pt': 'Digite seu comentário aqui!',
    },
    'gylsxj1b': {
      'it': 'Invia',
      'en': 'Submit',
      'es': 'Enviar',
      'pt': 'Enviar',
    },
  },
  // PostagemRedeSocial
  {
    'ftbsj3ci': {
      'it': 'Envie sua publicação',
      'en': 'Send your publication',
      'es': 'Envía tu publicación',
      'pt': 'Envie sua publicação',
    },
    '0sstfxmq': {
      'it': 'Aggiungi',
      'en': 'Add',
      'es': 'Agregar',
      'pt': 'Adicionar',
    },
    'h8ehs2et': {
      'it': 'Aggiungi',
      'en': 'Add',
      'es': 'Agregar',
      'pt': 'Adicionar',
    },
    'wpc31a7q': {
      'it': 'A cosa stai pensando?',
      'en': 'What are you thinking about?',
      'es': 'Qué estás pensando?',
      'pt': 'No que está pensando?',
    },
    '0wck5jm0': {
      'it': 'Invia',
      'en': 'Submit',
      'es': 'Enviar',
      'pt': 'Enviar',
    },
    'u7dul0te': {
      'it': 'Invia',
      'en': 'Submit',
      'es': 'Enviar',
      'pt': 'Enviar',
    },
  },
  // DeletarPost
  {
    'n3qjl4dw': {
      'it': 'Sei sicuro di voler eliminare il post?',
      'en': 'Are you sure you want to delete the post?',
      'es': '¿Estás seguro de que quieres eliminar la publicación?',
      'pt': 'Tem certeza de que deseja excluir a postagem?',
    },
    '1sref7ck': {
      'it': 'Cancella',
      'en': 'Cancel',
      'es': 'Cancelar',
      'pt': 'Cancelar',
    },
    'ab05ddhe': {
      'it': 'Si',
      'en': 'Yes',
      'es': 'Sí',
      'pt': 'Sim',
    },
  },
  // DeletarComentarios
  {
    'lrw0mwnv': {
      'it': 'Sei sicuro di voler eliminare il commento?',
      'en': 'Are you sure you want to delete the comment?',
      'es': '¿Estás seguro de que quieres eliminar el comentario?',
      'pt': 'Tem certeza de que deseja excluir o comentário?',
    },
    'hbw5zux0': {
      'it': 'Cancella',
      'en': 'Cancel',
      'es': 'Cancelar',
      'pt': 'Cancelar',
    },
    'u9qimij0': {
      'it': 'Si',
      'en': 'Yes',
      'es': 'Sí',
      'pt': 'Sim',
    },
  },
  // Miscellaneous
  {
    'rl0ejx7b': {
      'it':
          'In order to scan for barcodes and QR codes, this app requires permission to access the camera.',
      'en':
          'In order to scan for barcodes and QR codes, this app requires permission to access the camera.',
      'es':
          'Para escanear códigos de barras y códigos QR, esta aplicación requiere permiso para acceder a la cámara.',
      'pt':
          'Para digitalizar códigos de barras e códigos QR, este aplicativo requer permissão para acessar a câmera.',
    },
    '45p56osb': {
      'it':
          'In order to record audio for video, this app requires permission to access the microphone.',
      'en':
          'In order to record audio for video, this app requires permission to access the microphone.',
      'es':
          'Para grabar audio para video, esta aplicación requiere permiso para acceder al micrófono.',
      'pt':
          'Para gravar áudio para vídeo, este aplicativo requer permissão para acessar o microfone.',
    },
    '31h136g8': {
      'it':
          'In order to upload data, this app requires permission to access the photo library.',
      'en':
          'In order to upload data, this app requires permission to access the photo library.',
      'es':
          'Para cargar datos, esta aplicación requiere permiso para acceder a la biblioteca de fotos.',
      'pt':
          'Para fazer upload de dados, este aplicativo requer permissão para acessar a biblioteca de fotos.',
    },
    '35r7broh': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    '7l1ifm7y': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    'pvt7027u': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    'byg4wxus': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    'yvjr6eco': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    'wkdieog2': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    'p3lq6f9a': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    'fphy6idp': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    'eyq2005e': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    'kan3itnp': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    'dbbet2u1': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    'p6s26tyi': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    '4k14gf4a': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    'm2h5fjxw': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    '8nrk95kk': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    'z914ez5c': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    'y9n58z0n': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    '9mrrefz1': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    'um944bmd': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    's8kf7596': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    '077rz3q3': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    '12qwlyom': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    'jwc5udar': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
    'gtb7ze6x': {
      'it': '',
      'en': '',
      'es': '',
      'pt': '',
    },
  },
].reduce((a, b) => a..addAll(b));
