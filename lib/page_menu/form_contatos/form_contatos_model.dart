import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'form_contatos_widget.dart' show FormContatosWidget;
import 'package:flutter/material.dart';

class FormContatosModel extends FlutterFlowModel<FormContatosWidget> {
  ///  Local state fields for this page.

  String idPai = '';

  String idFilho = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (contactCategoriesFilho)] action in Container widget.
  ApiCallResponse? apiResultggb;
  // State field(s) for Assunto widget.
  FocusNode? assuntoFocusNode;
  TextEditingController? assuntoController;
  String? Function(BuildContext, String?)? assuntoControllerValidator;
  // State field(s) for E-mail widget.
  FocusNode? eMailFocusNode;
  TextEditingController? eMailController;
  String? Function(BuildContext, String?)? eMailControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Stores action output result for [Backend Call - API (Contact)] action in Button widget.
  ApiCallResponse? apiResult0wx;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    assuntoFocusNode?.dispose();
    assuntoController?.dispose();

    eMailFocusNode?.dispose();
    eMailController?.dispose();

    textFieldFocusNode?.dispose();
    textController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
