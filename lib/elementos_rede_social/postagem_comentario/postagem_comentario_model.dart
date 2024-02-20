import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'postagem_comentario_widget.dart' show PostagemComentarioWidget;
import 'package:flutter/material.dart';

class PostagemComentarioModel
    extends FlutterFlowModel<PostagemComentarioWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextoComentario widget.
  FocusNode? textoComentarioFocusNode;
  TextEditingController? textoComentarioController;
  String? Function(BuildContext, String?)? textoComentarioControllerValidator;
  // Stores action output result for [Backend Call - API (saveFeedComment)] action in Button widget.
  ApiCallResponse? apiResultdte;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textoComentarioFocusNode?.dispose();
    textoComentarioController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
