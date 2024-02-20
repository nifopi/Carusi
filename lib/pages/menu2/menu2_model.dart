import '/flutter_flow/flutter_flow_util.dart';
import 'menu2_widget.dart' show Menu2Widget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Menu2Model extends FlutterFlowModel<Menu2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  var qrcode = '';
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 0;

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
