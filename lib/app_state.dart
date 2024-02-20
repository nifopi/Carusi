import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  AutenticacaoStruct _Autenticacao = AutenticacaoStruct();
  AutenticacaoStruct get Autenticacao => _Autenticacao;
  set Autenticacao(AutenticacaoStruct value) {
    _Autenticacao = value;
  }

  void updateAutenticacaoStruct(Function(AutenticacaoStruct) updateFn) {
    updateFn(_Autenticacao);
  }

  String _idioma = '';
  String get idioma => _idioma;
  set idioma(String value) {
    _idioma = value;
  }

  String _usuarioRede = '0';
  String get usuarioRede => _usuarioRede;
  set usuarioRede(String value) {
    _usuarioRede = value;
  }

  List<String> _listaCategorias = [];
  List<String> get listaCategorias => _listaCategorias;
  set listaCategorias(List<String> value) {
    _listaCategorias = value;
  }

  void addToListaCategorias(String value) {
    _listaCategorias.add(value);
  }

  void removeFromListaCategorias(String value) {
    _listaCategorias.remove(value);
  }

  void removeAtIndexFromListaCategorias(int index) {
    _listaCategorias.removeAt(index);
  }

  void updateListaCategoriasAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _listaCategorias[index] = updateFn(_listaCategorias[index]);
  }

  void insertAtIndexInListaCategorias(int index, String value) {
    _listaCategorias.insert(index, value);
  }

  List<dynamic> _listContactiFilho = [];
  List<dynamic> get listContactiFilho => _listContactiFilho;
  set listContactiFilho(List<dynamic> value) {
    _listContactiFilho = value;
  }

  void addToListContactiFilho(dynamic value) {
    _listContactiFilho.add(value);
  }

  void removeFromListContactiFilho(dynamic value) {
    _listContactiFilho.remove(value);
  }

  void removeAtIndexFromListContactiFilho(int index) {
    _listContactiFilho.removeAt(index);
  }

  void updateListContactiFilhoAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _listContactiFilho[index] = updateFn(_listContactiFilho[index]);
  }

  void insertAtIndexInListContactiFilho(int index, dynamic value) {
    _listContactiFilho.insert(index, value);
  }

  String _url = 'https://carusi.xphub.com.br/';
  String get url => _url;
  set url(String value) {
    _url = value;
  }

  List<dynamic> _SerachByFolder = [];
  List<dynamic> get SerachByFolder => _SerachByFolder;
  set SerachByFolder(List<dynamic> value) {
    _SerachByFolder = value;
  }

  void addToSerachByFolder(dynamic value) {
    _SerachByFolder.add(value);
  }

  void removeFromSerachByFolder(dynamic value) {
    _SerachByFolder.remove(value);
  }

  void removeAtIndexFromSerachByFolder(int index) {
    _SerachByFolder.removeAt(index);
  }

  void updateSerachByFolderAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _SerachByFolder[index] = updateFn(_SerachByFolder[index]);
  }

  void insertAtIndexInSerachByFolder(int index, dynamic value) {
    _SerachByFolder.insert(index, value);
  }

  List<dynamic> _searchByUser = [];
  List<dynamic> get searchByUser => _searchByUser;
  set searchByUser(List<dynamic> value) {
    _searchByUser = value;
  }

  void addToSearchByUser(dynamic value) {
    _searchByUser.add(value);
  }

  void removeFromSearchByUser(dynamic value) {
    _searchByUser.remove(value);
  }

  void removeAtIndexFromSearchByUser(int index) {
    _searchByUser.removeAt(index);
  }

  void updateSearchByUserAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _searchByUser[index] = updateFn(_searchByUser[index]);
  }

  void insertAtIndexInSearchByUser(int index, dynamic value) {
    _searchByUser.insert(index, value);
  }

  List<dynamic> _searchByContent = [];
  List<dynamic> get searchByContent => _searchByContent;
  set searchByContent(List<dynamic> value) {
    _searchByContent = value;
  }

  void addToSearchByContent(dynamic value) {
    _searchByContent.add(value);
  }

  void removeFromSearchByContent(dynamic value) {
    _searchByContent.remove(value);
  }

  void removeAtIndexFromSearchByContent(int index) {
    _searchByContent.removeAt(index);
  }

  void updateSearchByContentAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _searchByContent[index] = updateFn(_searchByContent[index]);
  }

  void insertAtIndexInSearchByContent(int index, dynamic value) {
    _searchByContent.insert(index, value);
  }

  List<dynamic> _listaOpcoes = [];
  List<dynamic> get listaOpcoes => _listaOpcoes;
  set listaOpcoes(List<dynamic> value) {
    _listaOpcoes = value;
  }

  void addToListaOpcoes(dynamic value) {
    _listaOpcoes.add(value);
  }

  void removeFromListaOpcoes(dynamic value) {
    _listaOpcoes.remove(value);
  }

  void removeAtIndexFromListaOpcoes(int index) {
    _listaOpcoes.removeAt(index);
  }

  void updateListaOpcoesAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _listaOpcoes[index] = updateFn(_listaOpcoes[index]);
  }

  void insertAtIndexInListaOpcoes(int index, dynamic value) {
    _listaOpcoes.insert(index, value);
  }

  List<dynamic> _listaRatings = [];
  List<dynamic> get listaRatings => _listaRatings;
  set listaRatings(List<dynamic> value) {
    _listaRatings = value;
  }

  void addToListaRatings(dynamic value) {
    _listaRatings.add(value);
  }

  void removeFromListaRatings(dynamic value) {
    _listaRatings.remove(value);
  }

  void removeAtIndexFromListaRatings(int index) {
    _listaRatings.removeAt(index);
  }

  void updateListaRatingsAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _listaRatings[index] = updateFn(_listaRatings[index]);
  }

  void insertAtIndexInListaRatings(int index, dynamic value) {
    _listaRatings.insert(index, value);
  }
}
