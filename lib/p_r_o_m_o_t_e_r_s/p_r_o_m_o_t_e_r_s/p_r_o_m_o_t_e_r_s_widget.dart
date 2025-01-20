import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/widgets/promoters_data_container/promoters_data_container_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'p_r_o_m_o_t_e_r_s_model.dart';
export 'p_r_o_m_o_t_e_r_s_model.dart';

class PROMOTERSWidget extends StatefulWidget {
  const PROMOTERSWidget({super.key});

  @override
  State<PROMOTERSWidget> createState() => _PROMOTERSWidgetState();
}

class _PROMOTERSWidgetState extends State<PROMOTERSWidget>
    with TickerProviderStateMixin, RouteAware {
  late PROMOTERSModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PROMOTERSModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.promoters = await actions.getPromotersAndDetails();
      FFAppState().promotersListData = _model.promoters!;
      safeSetState(() {});
    });

    animationsMap.addAll({
      'progressBarOnPageLoadAnimation1': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'progressBarOnPageLoadAnimation2': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final route = DebugModalRoute.of(context);
    if (route != null) {
      routeObserver.subscribe(this, route);
    }
    debugLogGlobalProperty(context);
  }

  @override
  void didPopNext() {
    if (mounted && DebugFlutterFlowModelContext.maybeOf(context) == null) {
      setState(() => _model.isRouteVisible = true);
      debugLogWidgetClass(_model);
    }
  }

  @override
  void didPush() {
    if (mounted && DebugFlutterFlowModelContext.maybeOf(context) == null) {
      setState(() => _model.isRouteVisible = true);
      debugLogWidgetClass(_model);
    }
  }

  @override
  void didPop() {
    _model.isRouteVisible = false;
  }

  @override
  void didPushNext() {
    _model.isRouteVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    DebugFlutterFlowModelContext.maybeOf(context)
        ?.parentModelCallback
        ?.call(_model);
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).alternate,
        body: SafeArea(
          top: true,
          child: Builder(
            builder: (context) {
              if (FFAppState().promotersListData != null) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.8, 1.37),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 15.0, 0.0),
                          child: Container(
                            width: 225.0,
                            height: 225.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondary,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 140.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Builder(
                                        builder: (context) {
                                          if (FFAppState().isPromoterSort ==
                                              false) {
                                            return Container(
                                              decoration: BoxDecoration(),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 40.0, 0.0, 0.0),
                                                child: Builder(
                                                  builder: (context) {
                                                    final itemCount =
                                                        FFAppState()
                                                            .promotersListData
                                                            .toList();
                                                    _model.debugGeneratorVariables[
                                                            'itemCount${itemCount.length > 100 ? ' (first 100)' : ''}'] =
                                                        debugSerializeParam(
                                                      itemCount.take(100),
                                                      ParamType.JSON,
                                                      link:
                                                          'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=pROMOTERS',
                                                      name: 'dynamic',
                                                      nullable: false,
                                                    );
                                                    debugLogWidgetClass(_model);

                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          itemCount.length,
                                                      itemBuilder: (context,
                                                          itemCountIndex) {
                                                        final itemCountItem =
                                                            itemCount[
                                                                itemCountIndex];
                                                        return Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      15.0,
                                                                      10.0,
                                                                      15.0,
                                                                      15.0),
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.black,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                context
                                                                    .pushNamed(
                                                                  'Promoterdetails',
                                                                  queryParameters:
                                                                      {
                                                                    'promoters':
                                                                        serializeParam(
                                                                      itemCountItem,
                                                                      ParamType
                                                                          .JSON,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .promotersDataContainerModels
                                                                    .getModel(
                                                                  itemCountIndex
                                                                      .toString(),
                                                                  itemCountIndex,
                                                                ),
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child: Builder(
                                                                    builder:
                                                                        (_) {
                                                                  return DebugFlutterFlowModelContext(
                                                                    rootModel:
                                                                        _model
                                                                            .rootModel,
                                                                    child:
                                                                        PromotersDataContainerWidget(
                                                                      key: Key(
                                                                        'Keylep_${itemCountIndex.toString()}',
                                                                      ),
                                                                      title:
                                                                          getJsonField(
                                                                        itemCountItem,
                                                                        r'''$.promoterTitle''',
                                                                      ).toString(),
                                                                      subtitle:
                                                                          getJsonField(
                                                                        itemCountItem,
                                                                        r'''$.promoterSubtitle''',
                                                                      ).toString(),
                                                                    ),
                                                                  );
                                                                }),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            );
                                          } else {
                                            return Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child:
                                                      CircularPercentIndicator(
                                                    percent: 0.7,
                                                    radius: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.1,
                                                    lineWidth: 10.0,
                                                    animation: true,
                                                    animateFromLastPercent:
                                                        true,
                                                    progressColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent4,
                                                  ).animateOnPageLoad(animationsMap[
                                                          'progressBarOnPageLoadAnimation1']!),
                                                ),
                                              ],
                                            );
                                          }
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          50.0, 0.0, 40.0, 4.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () async {
                                              context.safePop();
                                            },
                                            text: 'BACK',
                                            options: FFButtonOptions(
                                              width: 80.0,
                                              height: 80.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Colors.black,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(360.0),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    var _shouldSetState = false;
                                                    if (FFAppState()
                                                            .isPromoterSort ==
                                                        false) {
                                                      FFAppState()
                                                              .isPromoterSort =
                                                          true;
                                                      safeSetState(() {});
                                                      _model.sortPromoters =
                                                          await actions
                                                              .getSortedPromotersAndDetails(
                                                        true,
                                                      );
                                                      _shouldSetState = true;
                                                      FFAppState()
                                                              .promotersListData =
                                                          _model.sortPromoters!;
                                                      FFAppState()
                                                              .isPromoterSort =
                                                          false;
                                                      safeSetState(() {});
                                                      if (_shouldSetState)
                                                        safeSetState(() {});
                                                      return;
                                                    } else {
                                                      if (_shouldSetState)
                                                        safeSetState(() {});
                                                      return;
                                                    }

                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons
                                                        .keyboard_arrow_up_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 60.0,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    var _shouldSetState = false;
                                                    if (FFAppState()
                                                            .isPromoterSort ==
                                                        false) {
                                                      FFAppState()
                                                              .isPromoterSort =
                                                          true;
                                                      safeSetState(() {});
                                                      _model.decendingPromoters =
                                                          await actions
                                                              .getSortedPromotersAndDetails(
                                                        false,
                                                      );
                                                      _shouldSetState = true;
                                                      FFAppState()
                                                              .promotersListData =
                                                          _model
                                                              .decendingPromoters!;
                                                      FFAppState()
                                                              .isPromoterSort =
                                                          false;
                                                      safeSetState(() {});
                                                      if (_shouldSetState)
                                                        safeSetState(() {});
                                                      return;
                                                    } else {
                                                      if (_shouldSetState)
                                                        safeSetState(() {});
                                                      return;
                                                    }

                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 60.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1.08, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/IMG_6683-removebg-preview.png',
                                      width: 135.0,
                                      height: 97.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.11, -0.71),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Text(
                                    'PROMOTERS',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'SF pro',
                                          color: Colors.black,
                                          fontSize: 30.0,
                                          letterSpacing: 15.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              } else {
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: CircularPercentIndicator(
                        percent: 0.7,
                        radius: MediaQuery.sizeOf(context).width * 0.1,
                        lineWidth: 10.0,
                        animation: true,
                        animateFromLastPercent: true,
                        progressColor: FlutterFlowTheme.of(context).primary,
                        backgroundColor: FlutterFlowTheme.of(context).accent4,
                      ).animateOnPageLoad(
                          animationsMap['progressBarOnPageLoadAnimation2']!),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
