// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AutenticacaoStruct extends FFFirebaseStruct {
  AutenticacaoStruct({
    String? name,
    String? id,
    String? grupo,
    String? email,
    String? termo,
    String? auth,
    String? lang,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _id = id,
        _grupo = grupo,
        _email = email,
        _termo = termo,
        _auth = auth,
        _lang = lang,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "grupo" field.
  String? _grupo;
  String get grupo => _grupo ?? '';
  set grupo(String? val) => _grupo = val;
  bool hasGrupo() => _grupo != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "termo" field.
  String? _termo;
  String get termo => _termo ?? '';
  set termo(String? val) => _termo = val;
  bool hasTermo() => _termo != null;

  // "auth" field.
  String? _auth;
  String get auth => _auth ?? '';
  set auth(String? val) => _auth = val;
  bool hasAuth() => _auth != null;

  // "lang" field.
  String? _lang;
  String get lang => _lang ?? '';
  set lang(String? val) => _lang = val;
  bool hasLang() => _lang != null;

  static AutenticacaoStruct fromMap(Map<String, dynamic> data) =>
      AutenticacaoStruct(
        name: data['name'] as String?,
        id: data['id'] as String?,
        grupo: data['grupo'] as String?,
        email: data['email'] as String?,
        termo: data['termo'] as String?,
        auth: data['auth'] as String?,
        lang: data['lang'] as String?,
      );

  static AutenticacaoStruct? maybeFromMap(dynamic data) => data is Map
      ? AutenticacaoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'id': _id,
        'grupo': _grupo,
        'email': _email,
        'termo': _termo,
        'auth': _auth,
        'lang': _lang,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'grupo': serializeParam(
          _grupo,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'termo': serializeParam(
          _termo,
          ParamType.String,
        ),
        'auth': serializeParam(
          _auth,
          ParamType.String,
        ),
        'lang': serializeParam(
          _lang,
          ParamType.String,
        ),
      }.withoutNulls;

  static AutenticacaoStruct fromSerializableMap(Map<String, dynamic> data) =>
      AutenticacaoStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        grupo: deserializeParam(
          data['grupo'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        termo: deserializeParam(
          data['termo'],
          ParamType.String,
          false,
        ),
        auth: deserializeParam(
          data['auth'],
          ParamType.String,
          false,
        ),
        lang: deserializeParam(
          data['lang'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AutenticacaoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AutenticacaoStruct &&
        name == other.name &&
        id == other.id &&
        grupo == other.grupo &&
        email == other.email &&
        termo == other.termo &&
        auth == other.auth &&
        lang == other.lang;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, id, grupo, email, termo, auth, lang]);
}

AutenticacaoStruct createAutenticacaoStruct({
  String? name,
  String? id,
  String? grupo,
  String? email,
  String? termo,
  String? auth,
  String? lang,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AutenticacaoStruct(
      name: name,
      id: id,
      grupo: grupo,
      email: email,
      termo: termo,
      auth: auth,
      lang: lang,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AutenticacaoStruct? updateAutenticacaoStruct(
  AutenticacaoStruct? autenticacao, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    autenticacao
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAutenticacaoStructData(
  Map<String, dynamic> firestoreData,
  AutenticacaoStruct? autenticacao,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (autenticacao == null) {
    return;
  }
  if (autenticacao.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && autenticacao.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final autenticacaoData =
      getAutenticacaoFirestoreData(autenticacao, forFieldValue);
  final nestedData =
      autenticacaoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = autenticacao.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAutenticacaoFirestoreData(
  AutenticacaoStruct? autenticacao, [
  bool forFieldValue = false,
]) {
  if (autenticacao == null) {
    return {};
  }
  final firestoreData = mapToFirestore(autenticacao.toMap());

  // Add any Firestore field values
  autenticacao.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAutenticacaoListFirestoreData(
  List<AutenticacaoStruct>? autenticacaos,
) =>
    autenticacaos?.map((e) => getAutenticacaoFirestoreData(e, true)).toList() ??
    [];
