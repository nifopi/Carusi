import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'form_pesquisar_model.dart';
export 'form_pesquisar_model.dart';

class FormPesquisarWidget extends StatefulWidget {
  const FormPesquisarWidget({super.key});

  @override
  State<FormPesquisarWidget> createState() => _FormPesquisarWidgetState();
}

class _FormPesquisarWidgetState extends State<FormPesquisarWidget>
    with TickerProviderStateMixin {
  late FormPesquisarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'dividerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(60.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(60.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(60.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormPesquisarModel());

    _model.searchController ??= TextEditingController();
    _model.searchFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).carusiRoxo,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'imgowveq' /* Cerca */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 20.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 6.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 170.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 20.0, 8.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'c4gw7602' /* Utilizza questo modulo per cer... */,
                                ),
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context).bodyLarge,
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation1']!),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 24.0, 8.0, 16.0),
                              child: TextFormField(
                                controller: _model.searchController,
                                focusNode: _model.searchFocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.searchController',
                                  const Duration(milliseconds: 2000),
                                  () async {
                                    _model.serachByFolder = await SearchGroup
                                        .serachByFolderCall
                                        .call(
                                      basic: FFAppState().Autenticacao.auth,
                                      query: _model.searchController.text,
                                      pg: 1,
                                    );
                                    if ((_model.serachByFolder?.succeeded ??
                                        true)) {
                                      setState(() {
                                        FFAppState().SerachByFolder = [];
                                      });
                                      setState(() {
                                        FFAppState().SerachByFolder =
                                            (_model.serachByFolder?.jsonBody ??
                                                    '')
                                                .toList()
                                                .cast<dynamic>();
                                      });
                                    }
                                    _model.searchByContent = await SearchGroup
                                        .searchByContentCall
                                        .call(
                                      basic: FFAppState().Autenticacao.auth,
                                      query: _model.searchController.text,
                                      pg: 1,
                                    );
                                    if ((_model.searchByContent?.succeeded ??
                                        true)) {
                                      setState(() {
                                        FFAppState().searchByContent = [];
                                      });
                                      setState(() {
                                        FFAppState().searchByContent =
                                            (_model.searchByContent?.jsonBody ??
                                                    '')
                                                .toList()
                                                .cast<dynamic>();
                                      });
                                    }
                                    _model.searchByUser =
                                        await SearchGroup.searchByUserCall.call(
                                      basic: FFAppState().Autenticacao.auth,
                                      query: _model.searchController.text,
                                      pg: 1,
                                    );
                                    if ((_model.searchByUser?.succeeded ??
                                        true)) {
                                      setState(() {
                                        FFAppState().searchByUser = [];
                                      });
                                      setState(() {
                                        FFAppState().searchByUser =
                                            (_model.searchByUser?.jsonBody ??
                                                    '')
                                                .toList()
                                                .cast<dynamic>();
                                      });
                                    }

                                    setState(() {});
                                  },
                                ),
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    '2u935jr9' /* Cerca */,
                                  ),
                                  labelStyle:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  hintText: FFLocalizations.of(context).getText(
                                    'qtd69q8r' /* O que está procurando? */,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).success,
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  contentPadding: const EdgeInsets.all(10.0),
                                  prefixIcon: Icon(
                                    Icons.search_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                  suffixIcon: _model
                                          .searchController!.text.isNotEmpty
                                      ? InkWell(
                                          onTap: () async {
                                            _model.searchController?.clear();
                                            _model.serachByFolder =
                                                await SearchGroup
                                                    .serachByFolderCall
                                                    .call(
                                              basic: FFAppState()
                                                  .Autenticacao
                                                  .auth,
                                              query:
                                                  _model.searchController.text,
                                              pg: 1,
                                            );
                                            if ((_model.serachByFolder
                                                    ?.succeeded ??
                                                true)) {
                                              setState(() {
                                                FFAppState().SerachByFolder =
                                                    [];
                                              });
                                              setState(() {
                                                FFAppState().SerachByFolder =
                                                    (_model.serachByFolder
                                                                ?.jsonBody ??
                                                            '')
                                                        .toList()
                                                        .cast<dynamic>();
                                              });
                                            }
                                            _model.searchByContent =
                                                await SearchGroup
                                                    .searchByContentCall
                                                    .call(
                                              basic: FFAppState()
                                                  .Autenticacao
                                                  .auth,
                                              query:
                                                  _model.searchController.text,
                                              pg: 1,
                                            );
                                            if ((_model.searchByContent
                                                    ?.succeeded ??
                                                true)) {
                                              setState(() {
                                                FFAppState().searchByContent =
                                                    [];
                                              });
                                              setState(() {
                                                FFAppState().searchByContent =
                                                    (_model.searchByContent
                                                                ?.jsonBody ??
                                                            '')
                                                        .toList()
                                                        .cast<dynamic>();
                                              });
                                            }
                                            _model.searchByUser =
                                                await SearchGroup
                                                    .searchByUserCall
                                                    .call(
                                              basic: FFAppState()
                                                  .Autenticacao
                                                  .auth,
                                              query:
                                                  _model.searchController.text,
                                              pg: 1,
                                            );
                                            if ((_model
                                                    .searchByUser?.succeeded ??
                                                true)) {
                                              setState(() {
                                                FFAppState().searchByUser = [];
                                              });
                                              setState(() {
                                                FFAppState().searchByUser =
                                                    (_model.searchByUser
                                                                ?.jsonBody ??
                                                            '')
                                                        .toList()
                                                        .cast<dynamic>();
                                              });
                                            }

                                            setState(() {});
                                            setState(() {});
                                          },
                                          child: Icon(
                                            Icons.clear,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 22.0,
                                          ),
                                        )
                                      : null,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                validator: _model.searchControllerValidator
                                    .asValidator(context),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation']!),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 1.5,
                  color: FlutterFlowTheme.of(context).carusiRoxo,
                ).animateOnPageLoad(
                    animationsMap['dividerOnPageLoadAnimation']!),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'omf3qqui' /* Utenti */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation2']!),
                  ),
                ),
                SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            final listasearchByUser =
                                FFAppState().searchByUser.toList();
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: listasearchByUser.length,
                              itemBuilder: (context, listasearchByUserIndex) {
                                final listasearchByUserItem =
                                    listasearchByUser[listasearchByUserIndex];
                                return Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 12.0, 16.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'VisitPerfil',
                                        queryParameters: {
                                          'visitId': serializeParam(
                                            getJsonField(
                                              listasearchByUserItem,
                                              r'''$.id''',
                                            ).toString(),
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 2.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Container(
                                        width: 100.0,
                                        height: 80.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: const [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color: Color(0x33000000),
                                              offset: Offset(0.0, 2.0),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 100.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .carusiAmarelo,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(4.0),
                                                  child: Container(
                                                    width: 100.0,
                                                    height: 100.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(4.0),
                                                      child: Container(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Image.network(
                                                          'https://xphub-production.s3.amazonaws.com/social/profile/t/${getJsonField(
                                                            listasearchByUserItem,
                                                            r'''$.user.id''',
                                                          ).toString()}',
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  getJsonField(
                                                    listasearchByUserItem,
                                                    r'''$.user.fullname''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Titillium Web',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'jxzudugh' /* Documenti */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation3']!),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final listaSerachByFolder =
                          FFAppState().SerachByFolder.toList();
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listaSerachByFolder.length,
                        itemBuilder: (context, listaSerachByFolderIndex) {
                          final listaSerachByFolderItem =
                              listaSerachByFolder[listaSerachByFolderIndex];
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'Pasta_2',
                                  queryParameters: {
                                    'texto': serializeParam(
                                      getJsonField(
                                        listaSerachByFolderItem,
                                        r'''$.name''',
                                      ).toString(),
                                      ParamType.String,
                                    ),
                                    'id': serializeParam(
                                      getJsonField(
                                        listaSerachByFolderItem,
                                        r'''$.id''',
                                      ).toString(),
                                      ParamType.String,
                                    ),
                                    'descricao': serializeParam(
                                      getJsonField(
                                        listaSerachByFolderItem,
                                        r'''$.description''',
                                      ).toString(),
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).info,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x33000000),
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 16.0, 12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 44.0,
                                          height: 44.0,
                                          decoration: BoxDecoration(
                                            color: const Color(0x63FFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: ClipRRect(
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(6.0),
                                              topRight: Radius.circular(6.0),
                                            ),
                                            child: Image.network(
                                              valueOrDefault<String>(
                                                'https://xphub-production.s3.amazonaws.com/content/icon/${getJsonField(
                                                  listaSerachByFolderItem,
                                                  r'''$.id''',
                                                ).toString()}',
                                                'https://d2z9cy868mfljn.cloudfront.net/icon/icon_varios.png',
                                              ),
                                              width: double.infinity,
                                              height: 60.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 4,
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                AutoSizeText(
                                                  getJsonField(
                                                    listaSerachByFolderItem,
                                                    r'''$.name''',
                                                  ).toString(),
                                                  maxLines: 1,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 4.0, 0.0, 4.0),
                                                  child: RatingBarIndicator(
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .warning,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    rating: functions
                                                        .convertInt(
                                                            getJsonField(
                                                          listaSerachByFolderItem,
                                                          r'''$.rating''',
                                                        ).toString())!
                                                        .toDouble(),
                                                    unratedColor:
                                                        const Color(0xFF95A1AC),
                                                    itemCount: 5,
                                                    itemSize: 20.0,
                                                  ),
                                                ),
                                              ].divide(const SizedBox(height: 4.0)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '4cs1w7cd' /* Contenuti */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation4']!),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final listasearchByContent =
                          FFAppState().searchByContent.toList();
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listasearchByContent.length,
                        itemBuilder: (context, listasearchByContentIndex) {
                          final listasearchByContentItem =
                              listasearchByContent[listasearchByContentIndex];
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if ('innertext' ==
                                        getJsonField(
                                          listasearchByContentItem,
                                          r'''$.moduleResource.module.url''',
                                        )) {
                                      context.pushNamed(
                                        'texto',
                                        queryParameters: {
                                          'titulo': serializeParam(
                                            getJsonField(
                                              listasearchByContentItem,
                                              r'''$.name''',
                                            ).toString(),
                                            ParamType.String,
                                          ),
                                          'texto': serializeParam(
                                            '',
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    } else {
                                      if ('quiz' ==
                                          getJsonField(
                                            listasearchByContentItem,
                                            r'''$.moduleResource.module.url''',
                                          )) {
                                        context.pushNamed(
                                          'quizResp',
                                          queryParameters: {
                                            'id': serializeParam(
                                              getJsonField(
                                                listasearchByContentItem,
                                                r'''$.moduleResource.source_id''',
                                              ).toString(),
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      } else {
                                        if ('forum' ==
                                            getJsonField(
                                              listasearchByContentItem,
                                              r'''$.moduleResource.module.url''',
                                            )) {
                                          context.pushNamed(
                                            'Forum',
                                            queryParameters: {
                                              'titulo': serializeParam(
                                                getJsonField(
                                                  listasearchByContentItem,
                                                  r'''$.name''',
                                                ).toString(),
                                                ParamType.String,
                                              ),
                                              'id': serializeParam(
                                                getJsonField(
                                                  listasearchByContentItem,
                                                  r'''$.moduleResource.source_id''',
                                                ).toString(),
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                          );
                                        }
                                      }
                                    }
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          SizedBox(
                                            width: 45.0,
                                            height: 45.0,
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      'https://d2z9cy868mfljn.cloudfront.net/icon/${getJsonField(
                                                        listasearchByContentItem,
                                                        r'''$.moduleResource.module.url''',
                                                      ).toString()}.png',
                                                      width: 45.0,
                                                      height: 45.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  AutoSizeText(
                                                    getJsonField(
                                                      listasearchByContentItem,
                                                      r'''$.name''',
                                                    ).toString(),
                                                    maxLines: 2,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Titillium Web',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 14.0,
                                                        ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      if ('document' ==
                                                          getJsonField(
                                                            listasearchByContentItem,
                                                            r'''$.moduleResource.module.url''',
                                                          ))
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  1.0, 1.0),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                if ('Documentos' ==
                                                                    getJsonField(
                                                                      listasearchByContentItem,
                                                                      r'''$.moduleResource.module.name''',
                                                                    )) {
                                                                  if (getJsonField(
                                                                        listasearchByContentItem,
                                                                        r'''$.moduleResource.filetype''',
                                                                      ) !=
                                                                      null) {
                                                                    _model.idDocument =
                                                                        await CategoriasGroup
                                                                            .getDocumentByIdCall
                                                                            .call(
                                                                      basic: FFAppState()
                                                                          .Autenticacao
                                                                          .auth,
                                                                      id: getJsonField(
                                                                        listasearchByContentItem,
                                                                        r'''$.moduleResource.source_id''',
                                                                      ).toString(),
                                                                    );
                                                                    if ((_model
                                                                            .idDocument
                                                                            ?.succeeded ??
                                                                        true)) {
                                                                      _model.idStorage = await CategoriasGroup
                                                                          .getStorageFileByIdCall
                                                                          .call(
                                                                        basic: FFAppState()
                                                                            .Autenticacao
                                                                            .auth,
                                                                        id: getJsonField(
                                                                          (_model.idDocument?.jsonBody ??
                                                                              ''),
                                                                          r'''$.file_id''',
                                                                        ).toString(),
                                                                      );
                                                                      if ((_model
                                                                              .idStorage
                                                                              ?.succeeded ??
                                                                          true)) {
                                                                        await launchURL(
                                                                            'https://carusi.xphub.com.br/upload/downloadMobile/${getJsonField(
                                                                          (_model.idStorage?.jsonBody ??
                                                                              ''),
                                                                          r'''$.id''',
                                                                        ).toString()}?origin=${getJsonField(
                                                                          (_model.idStorage?.jsonBody ??
                                                                              ''),
                                                                          r'''$.origin''',
                                                                        ).toString()}&orgid=${getJsonField(
                                                                          (_model.idStorage?.jsonBody ??
                                                                              ''),
                                                                          r'''$.org_id''',
                                                                        ).toString()}&auth=${getJsonField(
                                                                          listasearchByContentItem,
                                                                          r'''$.content.modifiedby''',
                                                                        ).toString()}');
                                                                      }
                                                                    }
                                                                  }
                                                                }

                                                                setState(() {});
                                                              },
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'jndnizan' /* Download */,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 120.0,
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: const Color(
                                                                    0x4DEE8B60),
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          10.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                    ),
                                                                elevation: 0.0,
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiary,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ].divide(const SizedBox(height: 4.0)),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      if ('gallery' ==
                                          getJsonField(
                                            listasearchByContentItem,
                                            r'''$.moduleResource.module.url''',
                                          ))
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 100.0,
                                            decoration: const BoxDecoration(
                                              color: Color(0x00E0E3E7),
                                            ),
                                            child:
                                                FutureBuilder<ApiCallResponse>(
                                              future: CategoriasGroup
                                                  .getGalleryPhotosByIdCall
                                                  .call(
                                                basic: FFAppState()
                                                    .Autenticacao
                                                    .auth,
                                                id: getJsonField(
                                                  listasearchByContentItem,
                                                  r'''$.moduleResource.source_id''',
                                                ).toString(),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                final listViewGetGalleryPhotosByIdResponse =
                                                    snapshot.data!;
                                                return Builder(
                                                  builder: (context) {
                                                    final listaImagens =
                                                        listViewGetGalleryPhotosByIdResponse
                                                            .jsonBody
                                                            .toList();
                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      itemCount:
                                                          listaImagens.length,
                                                      itemBuilder: (context,
                                                          listaImagensIndex) {
                                                        final listaImagensItem =
                                                            listaImagens[
                                                                listaImagensIndex];
                                                        return Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  6.0),
                                                          child: Container(
                                                            width: 140.0,
                                                            height: 60.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              boxShadow: const [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      8.0,
                                                                  color: Color(
                                                                      0x230F1113),
                                                                  offset:
                                                                      Offset(
                                                                          0.0,
                                                                          4.0),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          6.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      context
                                                                          .pushNamed(
                                                                        'imagem',
                                                                        queryParameters:
                                                                            {
                                                                          'imagem':
                                                                              serializeParam(
                                                                            'https://xphub-production.s3.amazonaws.com/content/gallery/${getJsonField(
                                                                              listaImagensItem,
                                                                              r'''$.file_id''',
                                                                            ).toString()}',
                                                                            ParamType.String,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6.0),
                                                                      child: Image
                                                                          .network(
                                                                        'https://xphub-production.s3.amazonaws.com/content/gallery/${getJsonField(
                                                                          listaImagensItem,
                                                                          r'''$.file_id''',
                                                                        ).toString()}',
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            60.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                if ('true' ==
                                                                    getJsonField(
                                                                      listaImagensItem,
                                                                      r'''$.moduleResource.downloadavaliable''',
                                                                    ))
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            4.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        await launchURL(
                                                                            '${FFAppState().url}upload/download/${getJsonField(
                                                                          listaImagensItem,
                                                                          r'''$.file_id''',
                                                                        ).toString()}?origin=content/gallery');
                                                                      },
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: AutoSizeText(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    '82hewd9k' /* Download */,
                                                                                  ),
                                                                                  textAlign: TextAlign.center,
                                                                                  maxLines: 1,
                                                                                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        fontSize: 14.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                          ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'containerOnPageLoadAnimation1']!),
                                                        );
                                                      },
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      if ('video' ==
                                          getJsonField(
                                            listasearchByContentItem,
                                            r'''$.moduleResource.module.url''',
                                          ))
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 200.0,
                                              decoration: const BoxDecoration(
                                                color: Color(0x00E0E3E7),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(6.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        blurRadius: 8.0,
                                                        color:
                                                            Color(0x230F1113),
                                                        offset:
                                                            Offset(0.0, 4.0),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6.0),
                                                    border: Border.all(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      width: 1.0,
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: FutureBuilder<
                                                              ApiCallResponse>(
                                                            future: CategoriasGroup
                                                                .getVideoByIdCall
                                                                .call(
                                                              basic: FFAppState()
                                                                  .Autenticacao
                                                                  .auth,
                                                              moduleResourceSourceId:
                                                                  getJsonField(
                                                                listasearchByContentItem,
                                                                r'''$.moduleResource.source_id''',
                                                              ).toString(),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      valueColor:
                                                                          AlwaysStoppedAnimation<
                                                                              Color>(
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              final videoPlayerGetVideoByIdResponse =
                                                                  snapshot
                                                                      .data!;
                                                              return FlutterFlowVideoPlayer(
                                                                path:
                                                                    'https://xphub-production-de.s3.eu-central-1.amazonaws.com/content/video/${getJsonField(
                                                                  videoPlayerGetVideoByIdResponse
                                                                      .jsonBody,
                                                                  r'''$.file_id''',
                                                                ).toString()}.mp4',
                                                                videoType:
                                                                    VideoType
                                                                        .network,
                                                                width: double
                                                                    .infinity,
                                                                height: double
                                                                    .infinity,
                                                                autoPlay: false,
                                                                looping: true,
                                                                showControls:
                                                                    true,
                                                                allowFullScreen:
                                                                    true,
                                                                allowPlaybackSpeedMenu:
                                                                    false,
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'containerOnPageLoadAnimation2']!),
                                              ),
                                            ),
                                          ),
                                        ),
                                      if ('videoOnline' ==
                                          getJsonField(
                                            listasearchByContentItem,
                                            r'''$.moduleResource.module.url''',
                                          ))
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 200.0,
                                              decoration: const BoxDecoration(
                                                color: Color(0x00E0E3E7),
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(6.0),
                                                child: Container(
                                                  width: 160.0,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        blurRadius: 8.0,
                                                        color:
                                                            Color(0x230F1113),
                                                        offset:
                                                            Offset(0.0, 4.0),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6.0),
                                                    border: Border.all(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      width: 1.0,
                                                    ),
                                                  ),
                                                  child: FutureBuilder<
                                                      ApiCallResponse>(
                                                    future: CategoriasGroup
                                                        .getVideoOnlineByIdCall
                                                        .call(
                                                      basic: FFAppState()
                                                          .Autenticacao
                                                          .auth,
                                                      moduleResourceSourceId:
                                                          getJsonField(
                                                        listasearchByContentItem,
                                                        r'''$.moduleResource.source_id''',
                                                      ).toString(),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      final youtubePlayerGetVideoOnlineByIdResponse =
                                                          snapshot.data!;
                                                      return InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onDoubleTap: () async {
                                                          context.pushNamed(
                                                            'video',
                                                            queryParameters: {
                                                              'video':
                                                                  serializeParam(
                                                                getJsonField(
                                                                  youtubePlayerGetVideoOnlineByIdResponse
                                                                      .jsonBody,
                                                                  r'''$.videolink''',
                                                                ).toString(),
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child:
                                                            FlutterFlowYoutubePlayer(
                                                          url:
                                                              'https://youtu.be/${getJsonField(
                                                            youtubePlayerGetVideoOnlineByIdResponse
                                                                .jsonBody,
                                                            r'''$.videolink''',
                                                          ).toString()}',
                                                          autoPlay: false,
                                                          looping: true,
                                                          mute: false,
                                                          showControls: true,
                                                          showFullScreen: false,
                                                          strictRelatedVideos:
                                                              false,
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'containerOnPageLoadAnimation3']!),
                                              ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
