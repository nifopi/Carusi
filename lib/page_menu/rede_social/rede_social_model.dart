import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'rede_social_widget.dart' show RedeSocialWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class RedeSocialModel extends FlutterFlowModel<RedeSocialWidget> {
  ///  Local state fields for this page.

  String menuSuspensoRede = '0';

  int? pg = 1;

  int? setEmoji = 0;

  String idSetEmoji = '';

  String parametro = 'general';

  bool set = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Expandable widget.
  late ExpandableController expandableController1;

  // State field(s) for Postagem widget.

  PagingController<ApiPagingParams, dynamic>? postagemPagingController;
  Function(ApiPagingParams nextPageMarker)? postagemApiCall;

  // Stores action output result for [Backend Call - API (isFriend )] action in Text widget.
  ApiCallResponse? isFreend;
  // Stores action output result for [Backend Call - API (loadInvitation)] action in Text widget.
  ApiCallResponse? loadInvitation;
  // Stores action output result for [Backend Call - API (sendInvitation)] action in Text widget.
  ApiCallResponse? solicitacaoAmizade;
  // Stores action output result for [Backend Call - API (saveReaction)] action in CircleImage widget.
  ApiCallResponse? apiResultbdy;
  // Stores action output result for [Backend Call - API (saveReaction)] action in CircleImage widget.
  ApiCallResponse? love;
  // Stores action output result for [Backend Call - API (saveReaction)] action in CircleImage widget.
  ApiCallResponse? haha;
  // Stores action output result for [Backend Call - API (saveReaction)] action in CircleImage widget.
  ApiCallResponse? wow;
  // Stores action output result for [Backend Call - API (saveReaction)] action in CircleImage widget.
  ApiCallResponse? sad;
  // Stores action output result for [Backend Call - API (saveReaction)] action in CircleImage widget.
  ApiCallResponse? angry;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    expandableController1.dispose();
    postagemPagingController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  PagingController<ApiPagingParams, dynamic> setPostagemController(
    Function(ApiPagingParams) apiCall,
  ) {
    postagemApiCall = apiCall;
    return postagemPagingController ??= _createPostagemController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createPostagemController(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller..addPageRequestListener(postagemListFeedPage);
  }

  void postagemListFeedPage(ApiPagingParams nextPageMarker) =>
      postagemApiCall!(nextPageMarker).then((postagemListFeedResponse) {
        final pageItems =
            (postagemListFeedResponse.jsonBody ?? []).toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        postagemPagingController?.appendPage(
          pageItems,
          (pageItems.isNotEmpty)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: postagemListFeedResponse,
                )
              : null,
        );
      });

  Future waitForOnePageForPostagem({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete =
          (postagemPagingController?.nextPageKey?.nextPageNumber ?? 0) > 0;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
