import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

Future mudarDeIdioma(
  BuildContext context, {
  String? lang,
}) async {
  ApiCallResponse? apiResultLang;

  apiResultLang = await UsuarioGroup.updateLangCall.call(
    lang: lang,
    basic: FFAppState().Autenticacao.auth,
  );
  if (getJsonField(
    (apiResultLang.jsonBody ?? ''),
    r'''$.result''',
  )) {
    if (lang == 'it') {
      setAppLanguage(context, 'it');
    } else {
      if (lang == 'es') {
        setAppLanguage(context, 'es');
      } else {
        if (lang == 'en-US') {
          setAppLanguage(context, 'en');
        } else {
          if (lang == 'pt-BR') {
            setAppLanguage(context, 'pt');
          }
        }
      }
    }
  }
}

Future salvarUsuarioRedeSocial(BuildContext context) async {
  ApiCallResponse? registroUserRede;
  ApiCallResponse? autenticarRedeSocial;

  registroUserRede = await UsuarioGroup.registerUserCall.call(
    username: currentUserDisplayName,
    email: currentUserEmail,
    password: currentUserUid,
    hasAdditionalFields: false.toString(),
  );
  if ('success' ==
      getJsonField(
        (registroUserRede.jsonBody ?? ''),
        r'''$.status''',
      )) {
    autenticarRedeSocial = await UsuarioGroup.authCall.call(
      username: currentUserEmail,
      password: currentUserUid,
    );
    if (getJsonField(
          (autenticarRedeSocial.jsonBody ?? ''),
          r'''$.id''',
        ) !=
        null) {
      FFAppState().Autenticacao = AutenticacaoStruct(
        name: getJsonField(
          (autenticarRedeSocial.jsonBody ?? ''),
          r'''$.fullname''',
        ).toString().toString(),
        id: getJsonField(
          (autenticarRedeSocial.jsonBody ?? ''),
          r'''$.id''',
        ).toString().toString(),
        grupo: getJsonField(
          (autenticarRedeSocial.jsonBody ?? ''),
          r'''$.groupsString''',
        ).toString().toString(),
        email: getJsonField(
          (autenticarRedeSocial.jsonBody ?? ''),
          r'''$.email''',
        ).toString().toString(),
        auth: functions.codigobase64(currentUserEmail, currentUserUid),
      );

      context.pushNamed('HomePage');
    } else {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              content: Text(getJsonField(
                (registroUserRede?.jsonBody ?? ''),
                r'''$.message''',
              ).toString().toString()),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: const Text('Ok'),
                ),
              ],
            ),
          );
        },
      );
    }
  }
}

Future categorias(
  BuildContext context, {
  String? header,
  required String? id,
}) async {
  FFAppState().listaCategorias = [];
  FFAppState().addToListaCategorias(id!);

  context.pushNamed(
    'Categorias',
    queryParameters: {
      'header': serializeParam(
        header,
        ParamType.String,
      ),
    }.withoutNulls,
  );
}

Future<dynamic> loadAttempt(
  BuildContext context, {
  String? id1,
  String? id2,
  String? pg,
}) async {
  ApiCallResponse? apiResultery;

  apiResultery = await QuizGroup.loadAttemptCall.call(
    basic: FFAppState().Autenticacao.auth,
    id1: id1,
    id2: id2,
    p: pg,
  );
  if ((apiResultery.succeeded ?? true)) {
    return (apiResultery.jsonBody ?? '');
  }

  return null;
}
