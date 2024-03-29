import '/flutter_flow/flutter_flow_util.dart';
import 'rede_fotos_widget.dart' show RedeFotosWidget;
import 'package:flutter/material.dart';

class RedeFotosModel extends FlutterFlowModel<RedeFotosWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
