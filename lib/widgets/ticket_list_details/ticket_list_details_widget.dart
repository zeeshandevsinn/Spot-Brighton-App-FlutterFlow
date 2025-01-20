import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'ticket_list_details_model.dart';
export 'ticket_list_details_model.dart';

class TicketListDetailsWidget extends StatefulWidget {
  const TicketListDetailsWidget({
    super.key,
    this.date,
    this.eventTitle,
    this.venueName,
    this.isFavorite,
    String? id,
    String? shareLink,
  })  : this.id = id ?? 'event1',
        this.shareLink = shareLink ?? 'https://sharelink.com';

  final String? date;
  final String? eventTitle;
  final String? venueName;
  final bool? isFavorite;
  final String id;
  final String shareLink;

  @override
  State<TicketListDetailsWidget> createState() =>
      _TicketListDetailsWidgetState();
}

class _TicketListDetailsWidgetState extends State<TicketListDetailsWidget>
    with RouteAware {
  late TicketListDetailsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TicketListDetailsModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.dateTime = await actions.getParsedDateAction(
        widget!.date,
      );
      _model.isNew = await actions.checkNewAction(
        _model.dateTime!,
      );
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

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

    return Stack(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 15.0),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: 130.0,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 10.0, 5.0, 5.0),
                    child: Container(
                      width: 90.0,
                      height: 90.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        'https://picsum.photos/seed/459/600',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.38,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 4.0),
                            child: Text(
                              valueOrDefault<String>(
                                functions.getFormatDate(widget!.date),
                                'DATE',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SF pro',
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              widget!.eventTitle,
                              'EVENT TITLE',
                            ),
                            maxLines: 2,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SF pro',
                                  color: Colors.white,
                                  fontSize: 17.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                widget!.venueName,
                                'VENUE NAME',
                              ),
                              maxLines: 2,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SF pro',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    letterSpacing: 2.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 6.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          custom_widgets.FavoriteHeartIcon(
                            width: 40.0,
                            height: 40.0,
                            id: widget!.id,
                            eventTitle: widget!.eventTitle!,
                            venueName: widget!.venueName!,
                            shareLink: widget!.shareLink,
                          ),
                          Expanded(
                            child: Builder(
                              builder: (context) => InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await Share.share(
                                    widget!.shareLink,
                                    sharePositionOrigin:
                                        getWidgetBoundingBox(context),
                                  );
                                },
                                child: Icon(
                                  FFIcons.kshare,
                                  color: Colors.white,
                                  size: 70.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.15,
                    height: MediaQuery.sizeOf(context).width * 0.15,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      shape: BoxShape.circle,
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Icon(
                      FFIcons.ktickets,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 80.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Builder(
          builder: (context) {
            if (_model.isNew == true) {
              return Align(
                alignment: AlignmentDirectional(-1.1, -1.04),
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  constraints: BoxConstraints(
                    minWidth: 100.0,
                    minHeight: 100.0,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      alignment: AlignmentDirectional(0.0, -1.0),
                      image: Image.asset(
                        'assets/images/Screenshot_2024-12-09_155858-removebg-preview-removebg-preview.png',
                      ).image,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'NEW!',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: Colors.white,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
              );
            } else {
              return Text(
                '',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              );
            }
          },
        ),
      ],
    );
  }
}
