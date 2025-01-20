import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/widgets/ticket_list_details/ticket_list_details_widget.dart';
import 'dart:ui';
import 'january_widget.dart' show JanuaryWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class JanuaryModel extends FlutterFlowModel<JanuaryWidget> {
  ///  State fields for stateful widgets in this page.

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
        widgetParameters: {
          'events': debugSerializeParam(
            widget?.events,
            ParamType.JSON,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=January',
            searchReference:
                'reference=ShgKEAoGZXZlbnRzEgYyczc0azRyBAgJIAFQAVoGZXZlbnRz',
            name: 'dynamic',
            nullable: true,
          )
        }.withoutNulls,
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
            'https://app.flutterflow.io/project/brighton-spot-3t7pm2/tab=uiBuilder&page=January',
        searchReference: 'reference=OgdKYW51YXJ5UAFaB0phbnVhcnk=',
        widgetClassName: 'January',
      );
}
