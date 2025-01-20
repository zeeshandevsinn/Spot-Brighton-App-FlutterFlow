import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'custom_container_text_model.dart';
export 'custom_container_text_model.dart';

class CustomContainerTextWidget extends StatefulWidget {
  const CustomContainerTextWidget({
    super.key,
    this.titleText,
  });

  final String? titleText;

  @override
  State<CustomContainerTextWidget> createState() =>
      _CustomContainerTextWidgetState();
}

class _CustomContainerTextWidgetState extends State<CustomContainerTextWidget>
    with RouteAware {
  late CustomContainerTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomContainerTextModel());
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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 10.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 74.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryText,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Text(
            valueOrDefault<String>(
              widget!.titleText,
              'Titles',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'SF pro',
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  fontSize: 26.0,
                  letterSpacing: 5.0,
                  fontWeight: FontWeight.bold,
                  useGoogleFonts: false,
                ),
          ),
        ),
      ),
    );
  }
}
