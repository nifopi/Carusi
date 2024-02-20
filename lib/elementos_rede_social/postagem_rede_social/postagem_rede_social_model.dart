import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'postagem_rede_social_widget.dart' show PostagemRedeSocialWidget;
import 'package:flutter/material.dart';

class PostagemRedeSocialModel
    extends FlutterFlowModel<PostagemRedeSocialWidget> {
  ///  Local state fields for this component.

  List<String> imagens = [];
  void addToImagens(String item) => imagens.add(item);
  void removeFromImagens(String item) => imagens.remove(item);
  void removeAtIndexFromImagens(int index) => imagens.removeAt(index);
  void insertAtIndexInImagens(int index, String item) =>
      imagens.insert(index, item);
  void updateImagensAtIndex(int index, Function(String) updateFn) =>
      imagens[index] = updateFn(imagens[index]);

  List<FFUploadedFile> listaImagenss = [];
  void addToListaImagenss(FFUploadedFile item) => listaImagenss.add(item);
  void removeFromListaImagenss(FFUploadedFile item) =>
      listaImagenss.remove(item);
  void removeAtIndexFromListaImagenss(int index) =>
      listaImagenss.removeAt(index);
  void insertAtIndexInListaImagenss(int index, FFUploadedFile item) =>
      listaImagenss.insert(index, item);
  void updateListaImagenssAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      listaImagenss[index] = updateFn(listaImagenss[index]);

  String idImagens = '';

  int? contador = 0;

  FFUploadedFile? video;

  String idvideo = '';

  ///  State fields for stateful widgets in this component.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (uploadFile)] action in Container widget.
  ApiCallResponse? idImagemEnviada;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (uploadFile)] action in Container widget.
  ApiCallResponse? idVideo;
  // State field(s) for postagemTexto widget.
  FocusNode? postagemTextoFocusNode;
  TextEditingController? postagemTextoController;
  String? Function(BuildContext, String?)? postagemTextoControllerValidator;
  // Stores action output result for [Backend Call - API (saveTimelinePost)] action in Button widget.
  ApiCallResponse? videoo;
  // Stores action output result for [Backend Call - API (saveTimelinePost)] action in Button widget.
  ApiCallResponse? imagem;
  // Stores action output result for [Backend Call - API (saveTimelinePost)] action in Button widget.
  ApiCallResponse? texto;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    postagemTextoFocusNode?.dispose();
    postagemTextoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
