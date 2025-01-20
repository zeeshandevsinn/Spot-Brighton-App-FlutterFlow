import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/widgets/ticket_list_details/ticket_list_details_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'v_e_n_u_edetails_model.dart';
export 'v_e_n_u_edetails_model.dart';

class VENUEdetailsWidget extends StatefulWidget {
  const VENUEdetailsWidget({
    super.key,
    required this.venueDetails,
  });

  final dynamic venueDetails;

  @override
  State<VENUEdetailsWidget> createState() => _VENUEdetailsWidgetState();
}

class _VENUEdetailsWidgetState extends State<VENUEdetailsWidget>
    with RouteAware {
  late VENUEdetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VENUEdetailsModel());
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

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(2.01, 1.41),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.6,
                    height: MediaQuery.sizeOf(context).width * 0.6,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF8AD2),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
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
                    ],
                  ),
                  Text(
                    getJsonField(
                      widget!.venueDetails,
                      r'''$.venueTitle''',
                    ).toString(),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'SF pro',
                          fontSize: 28.0,
                          letterSpacing: 7.0,
                          fontWeight: FontWeight.w900,
                          useGoogleFonts: false,
                        ),
                  ),
                  Expanded(
                    child: Builder(
                      builder: (context) {
                        final itemCount = getJsonField(
                          widget!.venueDetails,
                          r'''$.venueDetails''',
                        ).toList();
                        _model.debugGeneratorVariables[
                                'itemCount${itemCount.length > 100 ? ' (first 100)' : ''}'] =
                            debugSerializeParam(
                          itemCount.take(100),
                          ParamType.JSON,
                          link:
                              'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=vENUEdetails',
                          name: 'dynamic',
                          nullable: false,
                        );
                        debugLogWidgetClass(_model);

                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: itemCount.length,
                          itemBuilder: (context, itemCountIndex) {
                            final itemCountItem = itemCount[itemCountIndex];
                            return wrapWithModel(
                              model: _model.ticketListDetailsModels.getModel(
                                itemCountIndex.toString(),
                                itemCountIndex,
                              ),
                              updateCallback: () => safeSetState(() {}),
                              child: Builder(builder: (_) {
                                return DebugFlutterFlowModelContext(
                                  rootModel: _model.rootModel,
                                  child: TicketListDetailsWidget(
                                    key: Key(
                                      'Keyxoo_${itemCountIndex.toString()}',
                                    ),
                                    date: getJsonField(
                                      itemCountItem,
                                      r'''$.date''',
                                    ).toString(),
                                    eventTitle: getJsonField(
                                      itemCountItem,
                                      r'''$.eventTitle''',
                                    ).toString(),
                                    venueName: getJsonField(
                                      itemCountItem,
                                      r'''$.venueName''',
                                    ).toString(),
                                    isFavorite: getJsonField(
                                      itemCountItem,
                                      r'''$.isFavorite''',
                                    ),
                                    id: getJsonField(
                                      itemCountItem,
                                      r'''$.id''',
                                    ).toString(),
                                    shareLink: getJsonField(
                                      itemCountItem,
                                      r'''$.shareLink''',
                                    ).toString(),
                                  ),
                                );
                              }),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(5.0, 30.0, 20.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 0.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.safePop();
                                },
                                text: 'BACK',
                                options: FFButtonOptions(
                                  width: 80.0,
                                  height: 80.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
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
                                  borderRadius: BorderRadius.circular(360.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  9.0, 0.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed(
                                    'webviewPage',
                                    queryParameters: {
                                      'viewUrl': serializeParam(
                                        getJsonField(
                                          widget!.venueDetails,
                                          r'''$.localMapLink''',
                                        ).toString(),
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                text: 'MAP',
                                options: FFButtonOptions(
                                  width: 80.0,
                                  height: 80.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
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
                                  borderRadius: BorderRadius.circular(360.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'webviewPage',
                                queryParameters: {
                                  'viewUrl': serializeParam(
                                    getJsonField(
                                      widget!.venueDetails,
                                      r'''$.instagramLink''',
                                    ).toString(),
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: FaIcon(
                              FontAwesomeIcons.instagram,
                              color: Colors.black,
                              size: 75.0,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowIconButton(
                                  borderRadius: 0.0,
                                  borderWidth: 1.0,
                                  buttonSize: 60.0,
                                  icon: Icon(
                                    Icons.keyboard_arrow_up_sharp,
                                    color: Colors.black,
                                    size: 80.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                                FlutterFlowIconButton(
                                  borderRadius: 0.0,
                                  borderWidth: 1.0,
                                  buttonSize: 60.0,
                                  icon: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.black,
                                    size: 80.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
