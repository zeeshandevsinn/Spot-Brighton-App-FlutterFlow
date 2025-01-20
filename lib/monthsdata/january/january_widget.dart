import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/widgets/ticket_list_details/ticket_list_details_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'january_model.dart';
export 'january_model.dart';

class JanuaryWidget extends StatefulWidget {
  const JanuaryWidget({
    super.key,
    required this.events,
  });

  final dynamic events;

  @override
  State<JanuaryWidget> createState() => _JanuaryWidgetState();
}

class _JanuaryWidgetState extends State<JanuaryWidget> with RouteAware {
  late JanuaryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JanuaryModel());
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
        backgroundColor: Color(0xFFD7E1E1),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(3.71, 1.5),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.67,
                    height: MediaQuery.sizeOf(context).width * 0.67,
                    decoration: BoxDecoration(
                      color: Color(0xFFFE967D),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 150.0, 0.0, 0.0),
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.5,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 1.0),
                          child: Builder(
                            builder: (context) {
                              final itemCount = getJsonField(
                                widget!.events,
                                r'''$.events''',
                              ).toList();
                              _model.debugGeneratorVariables[
                                      'itemCount${itemCount.length > 100 ? ' (first 100)' : ''}'] =
                                  debugSerializeParam(
                                itemCount.take(100),
                                ParamType.JSON,
                                link:
                                    'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=January',
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
                                  final itemCountItem =
                                      itemCount[itemCountIndex];
                                  return wrapWithModel(
                                    model:
                                        _model.ticketListDetailsModels.getModel(
                                      itemCountIndex.toString(),
                                      itemCountIndex,
                                    ),
                                    updateCallback: () => safeSetState(() {}),
                                    child: Builder(builder: (_) {
                                      return DebugFlutterFlowModelContext(
                                        rootModel: _model.rootModel,
                                        child: TicketListDetailsWidget(
                                          key: Key(
                                            'Key5pg_${itemCountIndex.toString()}',
                                          ),
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
                                          date: getJsonField(
                                            itemCountItem,
                                            r'''$.date''',
                                          ).toString(),
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
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: 400.0,
                  height: 130.0,
                  constraints: BoxConstraints(
                    minWidth: 358.0,
                  ),
                  decoration: BoxDecoration(),
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 20.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.safePop();
                            },
                            text: 'BACK',
                            options: FFButtonOptions(
                              width: 90.0,
                              height: 90.0,
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
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
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
                              borderColor: Colors.transparent,
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
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 1.0, 10.0),
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
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: Text(
                          getJsonField(
                            widget!.events,
                            r'''$.month''',
                          ).toString(),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'SF pro',
                                    fontSize: 31.0,
                                    letterSpacing: 7.0,
                                    fontWeight: FontWeight.w900,
                                    useGoogleFonts: false,
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
      ),
    );
  }
}
