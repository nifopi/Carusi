import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'quiz_resp_widget.dart' show QuizRespWidget;
import 'package:flutter/material.dart';

class QuizRespModel extends FlutterFlowModel<QuizRespWidget> {
  ///  Local state fields for this page.

  String startQuizAttempt = '';

  dynamic loadattempt;

  List<dynamic> opcoes = [];
  void addToOpcoes(dynamic item) => opcoes.add(item);
  void removeFromOpcoes(dynamic item) => opcoes.remove(item);
  void removeAtIndexFromOpcoes(int index) => opcoes.removeAt(index);
  void insertAtIndexInOpcoes(int index, dynamic item) =>
      opcoes.insert(index, item);
  void updateOpcoesAtIndex(int index, Function(dynamic) updateFn) =>
      opcoes[index] = updateFn(opcoes[index]);

  String resposta = '';

  String detailid = '';

  int? pg = 1;

  List<dynamic> loadAttemptDetails = [];
  void addToLoadAttemptDetails(dynamic item) => loadAttemptDetails.add(item);
  void removeFromLoadAttemptDetails(dynamic item) =>
      loadAttemptDetails.remove(item);
  void removeAtIndexFromLoadAttemptDetails(int index) =>
      loadAttemptDetails.removeAt(index);
  void insertAtIndexInLoadAttemptDetails(int index, dynamic item) =>
      loadAttemptDetails.insert(index, item);
  void updateLoadAttemptDetailsAtIndex(int index, Function(dynamic) updateFn) =>
      loadAttemptDetails[index] = updateFn(loadAttemptDetails[index]);

  dynamic detailss;

  int? qt = 0;

  bool fim = false;

  String tentativa = '';

  bool setResposta = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Stores action output result for [Action Block - loadAttempt] action in Button widget.
  dynamic loadAttemptset;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // Stores action output result for [Backend Call - API (submitQuizAttemptDetail)] action in Button widget.
  ApiCallResponse? apiResultycx;
  // Stores action output result for [Backend Call - API (loadAttemptDetails)] action in Button widget.
  ApiCallResponse? detailsRes;
  // Stores action output result for [Action Block - loadAttempt] action in Button widget.
  dynamic attemptRes;
  // Stores action output result for [Backend Call - API (closeQuizAttempt)] action in Button widget.
  ApiCallResponse? apiResultbx1;
  // Stores action output result for [Backend Call - API (startQuizAttempt)] action in Button widget.
  ApiCallResponse? apiResultsh0;
  // Stores action output result for [Backend Call - API (loadAttemptDetails)] action in Button widget.
  ApiCallResponse? details;
  // Stores action output result for [Action Block - loadAttempt] action in Button widget.
  dynamic loadAttempt;
  // Stores action output result for [Backend Call - API (loadAttemptDetails)] action in Button widget.
  ApiCallResponse? details1;
  // Stores action output result for [Action Block - loadAttempt] action in Button widget.
  dynamic loadAttempt1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButtonValue => radioButtonValueController?.value;
}
