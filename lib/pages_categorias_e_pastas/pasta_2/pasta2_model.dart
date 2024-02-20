import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pasta2_widget.dart' show Pasta2Widget;
import 'package:flutter/material.dart';

class Pasta2Model extends FlutterFlowModel<Pasta2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (listContentRatings)] action in Pasta_2 widget.
  ApiCallResponse? apiResultiz9;
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
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
