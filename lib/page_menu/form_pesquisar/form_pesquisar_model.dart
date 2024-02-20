import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'form_pesquisar_widget.dart' show FormPesquisarWidget;
import 'package:flutter/material.dart';

class FormPesquisarModel extends FlutterFlowModel<FormPesquisarWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Search widget.
  FocusNode? searchFocusNode;
  TextEditingController? searchController;
  String? Function(BuildContext, String?)? searchControllerValidator;
  // Stores action output result for [Backend Call - API (SerachByFolder)] action in Search widget.
  ApiCallResponse? serachByFolder;
  // Stores action output result for [Backend Call - API (searchByContent)] action in Search widget.
  ApiCallResponse? searchByContent;
  // Stores action output result for [Backend Call - API (searchByUser)] action in Search widget.
  ApiCallResponse? searchByUser;
  // Stores action output result for [Backend Call - API (getDocumentById)] action in ButtonDownload widget.
  ApiCallResponse? idDocument;
  // Stores action output result for [Backend Call - API (getStorageFileById)] action in ButtonDownload widget.
  ApiCallResponse? idStorage;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    searchFocusNode?.dispose();
    searchController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
