import '/flutter_flow/flutter_flow_util.dart';
import 'texto_widget.dart' show TextoWidget;
import 'package:flutter/material.dart';

class TextoModel extends FlutterFlowModel<TextoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - htmlUrll] action in Container widget.
  String? url;

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
