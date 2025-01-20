import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/widgets/ticket_list_details/ticket_list_details_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'saved_widget.dart' show SavedWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class SavedModel extends FlutterFlowModel<SavedWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getFavoriteDetails] action in Saved widget.
  List<dynamic>? _favoritesData;
  set favoritesData(List<dynamic>? value) {
    _favoritesData = value;
    debugLogWidgetClass(this);
  }

  List<dynamic>? get favoritesData => _favoritesData;

  // Models for ticketListDetails dynamic component.
  late FlutterFlowDynamicModels<TicketListDetailsModel> ticketListDetailsModels;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    ticketListDetailsModels =
        FlutterFlowDynamicModels(() => TicketListDetailsModel());

    debugLogWidgetClass(this);
  }

  @override
  void dispose() {
    ticketListDetailsModels.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        actionOutputs: {
          'favoritesData': debugSerializeParam(
            favoritesData,
            ParamType.JSON,
            isList: true,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=Saved',
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
        dynamicComponentStates: {
          'ticketListDetailsModels (List<ticketListDetails>)':
              ticketListDetailsModels?.toDynamicWidgetClassDebugData(),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/brighton-spot-3t7pm2/tab=uiBuilder&page=Saved',
        searchReference: 'reference=OgVTYXZlZFABWgVTYXZlZA==',
        widgetClassName: 'Saved',
      );
}
