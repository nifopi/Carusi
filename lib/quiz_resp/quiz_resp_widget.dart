import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'quiz_resp_model.dart';
export 'quiz_resp_model.dart';

class QuizRespWidget extends StatefulWidget {
  const QuizRespWidget({
    super.key,
    required this.id,
  });

  final String? id;

  @override
  State<QuizRespWidget> createState() => _QuizRespWidgetState();
}

class _QuizRespWidgetState extends State<QuizRespWidget> {
  late QuizRespModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuizRespModel());

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

    return FutureBuilder<ApiCallResponse>(
      future: QuizGroup.getQuizByIdCall.call(
        basic: FFAppState().Autenticacao.auth,
        id: widget.id,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).carusiRoxo,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final quizRespGetQuizByIdResponse = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).carusiRoxo,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              iconTheme: IconThemeData(
                  color: FlutterFlowTheme.of(context).secondaryBackground),
              automaticallyImplyLeading: true,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  size: 30.0,
                ),
                onPressed: () async {
                  if (_model.setResposta) {
                    setState(() {
                      _model.setResposta = false;
                      _model.tentativa = '';
                    });
                  } else {
                    context.safePop();
                  }
                },
              ),
              title: Text(
                getJsonField(
                  quizRespGetQuizByIdResponse.jsonBody,
                  r'''$.name''',
                ).toString(),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Titillium Web',
                      color: FlutterFlowTheme.of(context).info,
                      fontSize: 20.0,
                    ),
              ),
              actions: const [],
              centerTitle: true,
              elevation: 6.0,
            ),
            body: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (_model.setResposta)
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 40.0),
                              child: PageView(
                                physics: const NeverScrollableScrollPhysics(),
                                controller: _model.pageViewController ??=
                                    PageController(initialPage: 0),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: 120.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '9hz1nlxv' /* Domande: */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Titillium Web',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 12.0, 0.0, 0.0),
                                              child: Builder(
                                                builder: (context) {
                                                  final listaDetails = _model
                                                      .loadAttemptDetails
                                                      .toList();
                                                  return SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: List.generate(
                                                          listaDetails.length,
                                                          (listaDetailsIndex) {
                                                        final listaDetailsItem =
                                                            listaDetails[
                                                                listaDetailsIndex];
                                                        return Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      4.0,
                                                                      0.0,
                                                                      4.0,
                                                                      0.0),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              setState(() {
                                                                _model.qt =
                                                                    getJsonField(
                                                                  listaDetailsItem,
                                                                  r'''$.id''',
                                                                );
                                                                _model.detailid =
                                                                    getJsonField(
                                                                  listaDetailsItem,
                                                                  r'''$.id''',
                                                                ).toString();
                                                              });
                                                              _model.loadAttemptset =
                                                                  await action_blocks
                                                                      .loadAttempt(
                                                                context,
                                                                id1: widget.id,
                                                                id2: _model
                                                                    .startQuizAttempt,
                                                                pg: _model.pg
                                                                    ?.toString(),
                                                              );
                                                              setState(() {
                                                                _model.loadattempt =
                                                                    getJsonField(
                                                                  _model
                                                                      .loadAttemptset,
                                                                  r'''$''',
                                                                );
                                                                _model.opcoes =
                                                                    getJsonField(
                                                                  _model
                                                                      .loadAttemptset,
                                                                  r'''$.options''',
                                                                  true,
                                                                )!
                                                                        .toList()
                                                                        .cast<
                                                                            dynamic>();
                                                              });
                                                              setState(() {
                                                                FFAppState()
                                                                        .listaOpcoes =
                                                                    getJsonField(
                                                                  _model
                                                                      .loadAttemptset,
                                                                  r'''$.options''',
                                                                  true,
                                                                )!
                                                                        .toList()
                                                                        .cast<
                                                                            dynamic>();
                                                              });

                                                              setState(() {});
                                                            },
                                                            text: getJsonField(
                                                              listaDetailsItem,
                                                              r'''$.questionnum''',
                                                            ).toString(),
                                                            options:
                                                                FFButtonOptions(
                                                              width: 44.0,
                                                              height: 44.0,
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color:
                                                                  valueOrDefault<
                                                                      Color>(
                                                                _model.pg ==
                                                                        getJsonField(
                                                                          listaDetailsItem,
                                                                          r'''$.questionnum''',
                                                                        )
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                              elevation: 3.0,
                                                              borderSide:
                                                                  const BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                          ),
                                                        );
                                                      }),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 16.0, 16.0, 8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: AutoSizeText(
                                                getJsonField(
                                                  _model.loadattempt,
                                                  r'''$.questiontitle''',
                                                ).toString(),
                                                textAlign: TextAlign.start,
                                                maxLines: 2,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Titillium Web',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 2.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: Visibility(
                                              visible:
                                                  _model.loadattempt != null,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: FlutterFlowRadioButton(
                                                  options: FFAppState()
                                                      .listaOpcoes
                                                      .map((e) => getJsonField(
                                                            e,
                                                            r'''$.title''',
                                                          ))
                                                      .toList()
                                                      .map((e) => e.toString())
                                                      .toList()
                                                      .toList(),
                                                  onChanged: (val) async {
                                                    setState(() {});
                                                    setState(() {
                                                      _model.resposta =
                                                          functions.idOpcoes(
                                                              FFAppState()
                                                                  .listaOpcoes
                                                                  .toList(),
                                                              _model
                                                                  .radioButtonValue)!;
                                                    });
                                                  },
                                                  controller: _model
                                                          .radioButtonValueController ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  optionHeight: 45.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  selectedTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Titillium Web',
                                                            fontSize: 16.0,
                                                          ),
                                                  textPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(8.0, 0.0,
                                                              0.0, 0.0),
                                                  buttonPosition:
                                                      RadioButtonPosition.left,
                                                  direction: Axis.vertical,
                                                  radioButtonColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  inactiveRadioButtonColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  toggleable: false,
                                                  horizontalAlignment:
                                                      WrapAlignment.start,
                                                  verticalAlignment:
                                                      WrapCrossAlignment.start,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 60.0,
                                          decoration: const BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              if (_model.fim ? false : true)
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    var shouldSetState = false;
                                                    _model.apiResultycx =
                                                        await QuizGroup
                                                            .submitQuizAttemptDetailCall
                                                            .call(
                                                      basic: FFAppState()
                                                          .Autenticacao
                                                          .auth,
                                                      tentativa: _model
                                                          .startQuizAttempt,
                                                      detalhes: _model.detailid,
                                                      resposta: _model.resposta,
                                                    );
                                                    shouldSetState = true;
                                                    if ((_model.apiResultycx
                                                            ?.succeeded ??
                                                        true)) {
                                                      if (getJsonField(
                                                        (_model.apiResultycx
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.result''',
                                                      )) {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'resposta enviada com sucesso',
                                                              style: TextStyle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                            ),
                                                            duration: const Duration(
                                                                milliseconds:
                                                                    4000),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                          ),
                                                        );
                                                        if (_model.pg! <
                                                            _model
                                                                .loadAttemptDetails
                                                                .length) {
                                                          _model.detailsRes =
                                                              await QuizGroup
                                                                  .loadAttemptDetailsCall
                                                                  .call(
                                                            basic: FFAppState()
                                                                .Autenticacao
                                                                .auth,
                                                            id: _model
                                                                .startQuizAttempt,
                                                          );
                                                          shouldSetState =
                                                              true;
                                                          if ((_model.detailsRes
                                                                  ?.succeeded ??
                                                              true)) {
                                                            setState(() {
                                                              _model
                                                                  .loadAttemptDetails = (_model
                                                                          .detailsRes
                                                                          ?.jsonBody ??
                                                                      '')
                                                                  .toList()
                                                                  .cast<
                                                                      dynamic>();
                                                              _model.pg = functions
                                                                  .pgDetails((_model
                                                                          .detailsRes
                                                                          ?.jsonBody ??
                                                                      ''));
                                                              _model.detailid =
                                                                  functions.idDetails((_model
                                                                          .detailsRes
                                                                          ?.jsonBody ??
                                                                      ''))!;
                                                            });
                                                            _model.attemptRes =
                                                                await action_blocks
                                                                    .loadAttempt(
                                                              context,
                                                              id1: widget.id,
                                                              id2: _model
                                                                  .startQuizAttempt,
                                                              pg: _model.pg
                                                                  ?.toString(),
                                                            );
                                                            shouldSetState =
                                                                true;
                                                            setState(() {
                                                              _model.loadattempt =
                                                                  _model
                                                                      .attemptRes;
                                                            });
                                                            setState(() {
                                                              FFAppState()
                                                                      .listaOpcoes =
                                                                  getJsonField(
                                                                _model
                                                                    .attemptRes,
                                                                r'''$.options''',
                                                                true,
                                                              )!
                                                                      .toList()
                                                                      .cast<
                                                                          dynamic>();
                                                            });
                                                          }
                                                        } else {
                                                          setState(() {
                                                            _model.fim = true;
                                                          });
                                                        }
                                                      } else {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'erro ao enviar resposta',
                                                              style: TextStyle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                            ),
                                                            duration: const Duration(
                                                                milliseconds:
                                                                    4000),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                          ),
                                                        );
                                                        if (shouldSetState) {
                                                          setState(() {});
                                                        }
                                                        return;
                                                      }
                                                    } else {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return WebViewAware(
                                                            child: AlertDialog(
                                                              content: Text((_model
                                                                          .apiResultycx
                                                                          ?.jsonBody ??
                                                                      '')
                                                                  .toString()),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext),
                                                                  child: const Text(
                                                                      'Ok'),
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    }

                                                    if (shouldSetState) {
                                                      setState(() {});
                                                    }
                                                  },
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '4s4235mj' /* Rispondere */,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: 150.0,
                                                    height: 45.0,
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    iconPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                    elevation: 3.0,
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50.0),
                                                  ),
                                                ),
                                              if (_model.fim)
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 8.0, 0.0, 8.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      _model.apiResultbx1 =
                                                          await QuizGroup
                                                              .closeQuizAttemptCall
                                                              .call(
                                                        basic: FFAppState()
                                                            .Autenticacao
                                                            .auth,
                                                        id: _model
                                                            .startQuizAttempt,
                                                      );
                                                      if ((_model.apiResultbx1
                                                              ?.succeeded ??
                                                          true)) {
                                                        setState(() {
                                                          _model.setResposta =
                                                              false;
                                                          _model.tentativa = '';
                                                          _model.fim = false;
                                                          _model.loadAttemptDetails =
                                                              [];
                                                          _model.pg = 1;
                                                        });
                                                      }

                                                      setState(() {});
                                                    },
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'fwb5lfsl' /* Finalizza il quiz */,
                                                    ),
                                                    options: FFButtonOptions(
                                                      width: 180.0,
                                                      height: 45.0,
                                                      padding:
                                                          const EdgeInsetsDirectional
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50.0),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 16.0),
                                child:
                                    smooth_page_indicator.SmoothPageIndicator(
                                  controller: _model.pageViewController ??=
                                      PageController(initialPage: 0),
                                  count: 1,
                                  axisDirection: Axis.horizontal,
                                  onDotClicked: (i) async {
                                    await _model.pageViewController!
                                        .animateToPage(
                                      i,
                                      duration: const Duration(milliseconds: 500),
                                      curve: Curves.ease,
                                    );
                                  },
                                  effect:
                                      smooth_page_indicator.ExpandingDotsEffect(
                                    expansionFactor: 3.0,
                                    spacing: 8.0,
                                    radius: 16.0,
                                    dotWidth: 16.0,
                                    dotHeight: 8.0,
                                    dotColor:
                                        FlutterFlowTheme.of(context).primary,
                                    activeDotColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    paintStyle: PaintingStyle.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                if (_model.setResposta ? false : true)
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 150.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 80.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 8.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'o45pxfhl' /* Regole del quiz: */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Titillium Web',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 4.0, 8.0, 0.0),
                                          child: Text(
                                            'Este quiz vale nota e você precisa tirar nota mínima de ${getJsonField(
                                              quizRespGetQuizByIdResponse
                                                  .jsonBody,
                                              r'''$.gradetopass''',
                                            ).toString()} para ser aprovado',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        setState(() {
                                          _model.setResposta = true;
                                        });
                                        _model.apiResultsh0 = await QuizGroup
                                            .startQuizAttemptCall
                                            .call(
                                          basic: FFAppState().Autenticacao.auth,
                                          id: widget.id,
                                        );
                                        if ((_model.apiResultsh0?.succeeded ??
                                            true)) {
                                          setState(() {
                                            _model.startQuizAttempt =
                                                getJsonField(
                                              (_model.apiResultsh0?.jsonBody ??
                                                  ''),
                                              r'''$.stringvalue''',
                                            ).toString();
                                          });
                                          _model.details = await QuizGroup
                                              .loadAttemptDetailsCall
                                              .call(
                                            basic:
                                                FFAppState().Autenticacao.auth,
                                            id: _model.startQuizAttempt,
                                          );
                                          if ((_model.details?.succeeded ??
                                              true)) {
                                            setState(() {
                                              _model.loadAttemptDetails =
                                                  (_model.details?.jsonBody ??
                                                          '')
                                                      .toList()
                                                      .cast<dynamic>();
                                            });
                                            setState(() {
                                              _model.detailid = getJsonField(
                                                _model.loadAttemptDetails.first,
                                                r'''$.id''',
                                              ).toString();
                                            });
                                            _model.loadAttempt =
                                                await action_blocks.loadAttempt(
                                              context,
                                              id1: widget.id,
                                              id2: _model.startQuizAttempt,
                                              pg: '1',
                                            );
                                            setState(() {
                                              _model.loadattempt = getJsonField(
                                                _model.loadAttempt,
                                                r'''$''',
                                              );
                                              _model.opcoes = getJsonField(
                                                _model.loadAttempt,
                                                r'''$.options''',
                                                true,
                                              )!
                                                  .toList()
                                                  .cast<dynamic>();
                                            });
                                            setState(() {
                                              FFAppState().listaOpcoes =
                                                  getJsonField(
                                                _model.loadAttempt,
                                                r'''$.options''',
                                                true,
                                              )!
                                                      .toList()
                                                      .cast<dynamic>();
                                            });
                                          }
                                        }

                                        setState(() {});
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'lqdyxiqn' /* Inizia il quiz */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 220.0,
                                        height: 40.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .carusiVermelho,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 16.0, 8.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '9mkut4ng' /* Tentative realizzate: */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 20.0,
                                          ),
                                    ),
                                    Expanded(
                                      child: FutureBuilder<ApiCallResponse>(
                                        future:
                                            QuizGroup.listQuizAttemptsCall.call(
                                          basic: FFAppState().Autenticacao.auth,
                                          id: widget.id,
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
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          final listViewListQuizAttemptsResponse =
                                              snapshot.data!;
                                          return Builder(
                                            builder: (context) {
                                              final tentativas =
                                                  listViewListQuizAttemptsResponse
                                                      .jsonBody
                                                      .toList();
                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: tentativas.length,
                                                itemBuilder:
                                                    (context, tentativasIndex) {
                                                  final tentativasItem =
                                                      tentativas[
                                                          tentativasIndex];
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 12.0,
                                                                0.0, 0.0),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 2.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Container(
                                                        width: 100.0,
                                                        height: 70.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        functions
                                                                            .convertDatatime(getJsonField(
                                                                          tentativasItem,
                                                                          r'''$.createdonDate''',
                                                                        )),
                                                                        '00:00',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                12.0,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                        child:
                                                                            AutoSizeText(
                                                                          getJsonField(
                                                                            tentativasItem,
                                                                            r'''$.active''',
                                                                          )
                                                                              ? 'Em andamento'
                                                                              : 'Encerrado',
                                                                          maxLines:
                                                                              1,
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Stack(
                                                                      children: [
                                                                        if (getJsonField(
                                                                          tentativasItem,
                                                                          r'''$.active''',
                                                                        ))
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FFButtonWidget(
                                                                              onPressed: () async {
                                                                                setState(() {
                                                                                  _model.tentativa = getJsonField(
                                                                                    tentativasItem,
                                                                                    r'''$.id''',
                                                                                  ).toString();
                                                                                });
                                                                                setState(() {
                                                                                  _model.setResposta = true;
                                                                                });
                                                                                setState(() {
                                                                                  _model.startQuizAttempt = _model.tentativa;
                                                                                });
                                                                                _model.details1 = await QuizGroup.loadAttemptDetailsCall.call(
                                                                                  basic: FFAppState().Autenticacao.auth,
                                                                                  id: _model.startQuizAttempt,
                                                                                );
                                                                                if ((_model.details1?.succeeded ?? true)) {
                                                                                  if (functions.pgDetails((_model.details1?.jsonBody ?? '')).toString() != 'null') {
                                                                                    setState(() {
                                                                                      _model.loadAttemptDetails = (_model.details1?.jsonBody ?? '').toList().cast<dynamic>();
                                                                                      _model.pg = functions.pgDetails((_model.details1?.jsonBody ?? ''));
                                                                                      _model.detailid = functions.idDetails((_model.details1?.jsonBody ?? ''))!;
                                                                                    });
                                                                                    _model.loadAttempt1 = await action_blocks.loadAttempt(
                                                                                      context,
                                                                                      id1: widget.id,
                                                                                      id2: _model.startQuizAttempt,
                                                                                      pg: _model.pg?.toString(),
                                                                                    );
                                                                                    setState(() {
                                                                                      _model.loadattempt = _model.loadAttempt1;
                                                                                      _model.opcoes = getJsonField(
                                                                                        _model.loadAttempt1,
                                                                                        r'''$.options''',
                                                                                        true,
                                                                                      )!
                                                                                          .toList()
                                                                                          .cast<dynamic>();
                                                                                    });
                                                                                    setState(() {
                                                                                      FFAppState().listaOpcoes = getJsonField(
                                                                                        _model.loadAttempt1,
                                                                                        r'''$.options''',
                                                                                        true,
                                                                                      )!
                                                                                          .toList()
                                                                                          .cast<dynamic>();
                                                                                    });
                                                                                  }
                                                                                }

                                                                                setState(() {});
                                                                              },
                                                                              text: FFLocalizations.of(context).getText(
                                                                                '4eiv0cvf' /* Prossima */,
                                                                              ),
                                                                              options: FFButtonOptions(
                                                                                height: 40.0,
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                color: const Color(0x004B39EF),
                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                elevation: 0.0,
                                                                                borderSide: const BorderSide(
                                                                                  color: Colors.transparent,
                                                                                  width: 0.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        if (getJsonField(
                                                                          tentativasItem,
                                                                          r'''$.active''',
                                                                        )
                                                                            ? false
                                                                            : true)
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                AutoSizeText(
                                                                              'Nota: ${getJsonField(
                                                                                tentativasItem,
                                                                                r'''$.grade''',
                                                                              ).toString()}',
                                                                              maxLines: 1,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: FlutterFlowTheme.of(context).primary,
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
                                                      ),
                                                    ),
                                                  );
                                                },
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
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
