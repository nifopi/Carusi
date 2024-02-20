import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'visit_perfil_widget.dart' show VisitPerfilWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class VisitPerfilModel extends FlutterFlowModel<VisitPerfilWidget> {
  ///  Local state fields for this page.

  String friend = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (isFriend )] action in VisitPerfil widget.
  ApiCallResponse? isFriend;
  // Stores action output result for [Backend Call - API (loadInvitation)] action in VisitPerfil widget.
  ApiCallResponse? loadinvitation;
  // Stores action output result for [Backend Call - API (removeFriend)] action in remover widget.
  ApiCallResponse? removerAmigo;
  // Stores action output result for [Backend Call - API (sendInvitation)] action in seguir widget.
  ApiCallResponse? solicitacaoAmizade;
  // State field(s) for listFeed widget.

  PagingController<ApiPagingParams, dynamic>? listFeedPagingController;
  Function(ApiPagingParams nextPageMarker)? listFeedApiCall;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    listFeedPagingController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  PagingController<ApiPagingParams, dynamic> setListFeedController(
    Function(ApiPagingParams) apiCall,
  ) {
    listFeedApiCall = apiCall;
    return listFeedPagingController ??= _createListFeedController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createListFeedController(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller..addPageRequestListener(listFeedListFeedPage);
  }

  void listFeedListFeedPage(ApiPagingParams nextPageMarker) =>
      listFeedApiCall!(nextPageMarker).then((listFeedListFeedResponse) {
        final pageItems =
            (listFeedListFeedResponse.jsonBody ?? []).toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        listFeedPagingController?.appendPage(
          pageItems,
          (pageItems.isNotEmpty)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: listFeedListFeedResponse,
                )
              : null,
        );
      });
}
