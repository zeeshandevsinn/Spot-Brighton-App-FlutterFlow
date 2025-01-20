import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'all_venues_widget.dart' show AllVenuesWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class AllVenuesModel extends FlutterFlowModel<AllVenuesWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getVenuesAndDetails] action in AllVenues widget.
  dynamic? _venuesData;
  set venuesData(dynamic? value) {
    _venuesData = value;
    debugLogWidgetClass(this);
  }

  dynamic? get venuesData => _venuesData;

  // Stores action output result for [Custom Action - getSortVenues] action in Icon widget.
  dynamic? _sortVenues;
  set sortVenues(dynamic? value) {
    _sortVenues = value;
    debugLogWidgetClass(this);
  }

  dynamic? get sortVenues => _sortVenues;

  // Stores action output result for [Custom Action - getSortVenues] action in Icon widget.
  dynamic? _decendingVenues;
  set decendingVenues(dynamic? value) {
    _decendingVenues = value;
    debugLogWidgetClass(this);
  }

  dynamic? get decendingVenues => _decendingVenues;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    debugLogWidgetClass(this);
  }

  @override
  void dispose() {}

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        actionOutputs: {
          'venuesData': debugSerializeParam(
            venuesData,
            ParamType.JSON,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=AllVenues',
            name: 'dynamic',
            nullable: true,
          ),
          'sortVenues': debugSerializeParam(
            sortVenues,
            ParamType.JSON,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=AllVenues',
            name: 'dynamic',
            nullable: true,
          ),
          'decendingVenues': debugSerializeParam(
            decendingVenues,
            ParamType.JSON,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=AllVenues',
            name: 'dynamic',
            nullable: true,
          )
        },
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/brighton-spot-3t7pm2/tab=uiBuilder&page=AllVenues',
        searchReference: 'reference=OglBbGxWZW51ZXNQAVoJQWxsVmVudWVz',
        widgetClassName: 'AllVenues',
      );
}
