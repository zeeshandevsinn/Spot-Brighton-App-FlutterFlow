import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/widgets/ticket_list_details/ticket_list_details_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'saved_model.dart';
export 'saved_model.dart';

class SavedWidget extends StatefulWidget {
  const SavedWidget({super.key});

  @override
  State<SavedWidget> createState() => _SavedWidgetState();
}

class _SavedWidgetState extends State<SavedWidget>
    with TickerProviderStateMixin, RouteAware {
  late SavedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SavedModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.favoritesData = await actions.getFavoriteDetails();
      FFAppState().favLoading = false;
      safeSetState(() {});
    });

    animationsMap.addAll({
      'progressBarOnPageLoadAnimation': AnimationInfo(
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
        backgroundColor: Color(0xFFD9DEE5),
        body: SafeArea(
          top: true,
          child: Builder(
            builder: (context) {
              if (FFAppState().favLoading == false) {
                return Stack(
                  children: [
                    Container(
                      constraints: BoxConstraints(
                        minWidth: MediaQuery.sizeOf(context).width * 1.0,
                        minHeight: MediaQuery.sizeOf(context).height * 1.0,
                        maxWidth: MediaQuery.sizeOf(context).width * 1.0,
                        maxHeight: MediaQuery.sizeOf(context).height * 1.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/IMG_6683-removebg-preview.png',
                                      width: 135.0,
                                      height: 97.0,
                                      fit: BoxFit.cover,
                                      alignment: Alignment(0.0, 0.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'SAVED',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SF pro',
                                  color: Colors.black,
                                  fontSize: 30.0,
                                  letterSpacing: 15.0,
                                  fontWeight: FontWeight.w900,
                                  useGoogleFonts: false,
                                ),
                          ),
                          Divider(
                            thickness: 2.0,
                            color: FlutterFlowTheme.of(context).alternate,
                          ),
                          Builder(
                            builder: (context) {
                              if (_model.favoritesData != null &&
                                  (_model.favoritesData)!.isNotEmpty) {
                                return Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.55,
                                  decoration: BoxDecoration(),
                                  child: Builder(
                                    builder: (context) {
                                      final count =
                                          _model.favoritesData!.toList();
                                      _model.debugGeneratorVariables[
                                              'count${count.length > 100 ? ' (first 100)' : ''}'] =
                                          debugSerializeParam(
                                        count.take(100),
                                        ParamType.JSON,
                                        isList: true,
                                        link:
                                            'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=Saved',
                                        name: 'dynamic',
                                        nullable: false,
                                      );
                                      debugLogWidgetClass(_model);

                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: count.length,
                                        itemBuilder: (context, countIndex) {
                                          final countItem = count[countIndex];
                                          return wrapWithModel(
                                            model: _model
                                                .ticketListDetailsModels
                                                .getModel(
                                              countItem.toString(),
                                              countIndex,
                                            ),
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: Builder(builder: (_) {
                                              return DebugFlutterFlowModelContext(
                                                rootModel: _model.rootModel,
                                                child: TicketListDetailsWidget(
                                                  key: Key(
                                                    'Keyc49_${countItem.toString()}',
                                                  ),
                                                  eventTitle: getJsonField(
                                                    countItem,
                                                    r'''$.eventTitle''',
                                                  ).toString(),
                                                  venueName: getJsonField(
                                                    countItem,
                                                    r'''$.venueName''',
                                                  ).toString(),
                                                  isFavorite: getJsonField(
                                                    countItem,
                                                    r'''$.isFavorite''',
                                                  ),
                                                  date: getJsonField(
                                                    countItem,
                                                    r'''$.date''',
                                                  ).toString(),
                                                  id: getJsonField(
                                                    countItem,
                                                    r'''$.id''',
                                                  ).toString(),
                                                  shareLink:
                                                      valueOrDefault<String>(
                                                    getJsonField(
                                                      countItem,
                                                      r'''$.shareLink''',
                                                    )?.toString(),
                                                    'https://sharelink.com',
                                                  ),
                                                ),
                                              );
                                            }),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                );
                              } else {
                                return Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          'NO FAVORITES FOUND!',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 18.0,
                                                letterSpacing: 3.0,
                                                fontWeight: FontWeight.w800,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }
                            },
                          ),
                          Spacer(),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      context.safePop();
                                    },
                                    text: 'BACK',
                                    options: FFButtonOptions(
                                      width: 80.0,
                                      height: 80.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.black,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
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
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(2.03, 1.4),
                      child: SafeArea(
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.55,
                          height: MediaQuery.sizeOf(context).width * 0.55,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondary,
                            shape: BoxShape.circle,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 40.0, 10.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.keyboard_arrow_up_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 60.0,
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 60.0,
                                  ),
                                  Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
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
                          animationsMap['progressBarOnPageLoadAnimation']!),
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
