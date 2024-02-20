import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'rede_fotos_model.dart';
export 'rede_fotos_model.dart';

class RedeFotosWidget extends StatefulWidget {
  const RedeFotosWidget({
    super.key,
    required this.fotos,
  });

  final List<String>? fotos;

  @override
  State<RedeFotosWidget> createState() => _RedeFotosWidgetState();
}

class _RedeFotosWidgetState extends State<RedeFotosWidget> {
  late RedeFotosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RedeFotosModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 300.0,
        height: 300.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Builder(
            builder: (context) {
              final fotos = widget.fotos!.toList();
              return SizedBox(
                width: double.infinity,
                height: 500.0,
                child: Stack(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                      child: PageView.builder(
                        controller: _model.pageViewController ??=
                            PageController(
                                initialPage: min(0, fotos.length - 1)),
                        scrollDirection: Axis.horizontal,
                        itemCount: fotos.length,
                        itemBuilder: (context, fotosIndex) {
                          final fotosItem = fotos[fotosIndex];
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'imagem',
                                queryParameters: {
                                  'imagem': serializeParam(
                                    'https://xphub-production.s3.amazonaws.com/social/timeline/multipleimage/$fotosItem',
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: Hero(
                              tag:
                                  'https://universocampanhas.com.br/upload/loadImageThumb/$fotosItem?origin=social/timeline/multipleimage&w=540&h=300',
                              transitionOnUserGestures: true,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  'https://universocampanhas.com.br/upload/loadImageThumb/$fotosItem?origin=social/timeline/multipleimage&w=540&h=300',
                                  width: 300.0,
                                  height: 300.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 0.0, 16.0),
                        child: smooth_page_indicator.SmoothPageIndicator(
                          controller: _model.pageViewController ??=
                              PageController(
                                  initialPage: min(0, fotos.length - 1)),
                          count: fotos.length,
                          axisDirection: Axis.horizontal,
                          onDotClicked: (i) async {
                            await _model.pageViewController!.animateToPage(
                              i,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          },
                          effect: smooth_page_indicator.ExpandingDotsEffect(
                            expansionFactor: 3.0,
                            spacing: 4.0,
                            radius: 8.0,
                            dotWidth: 8.0,
                            dotHeight: 8.0,
                            dotColor: FlutterFlowTheme.of(context).carusiRoxo,
                            activeDotColor:
                                FlutterFlowTheme.of(context).carusiRoxo,
                            paintStyle: PaintingStyle.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
