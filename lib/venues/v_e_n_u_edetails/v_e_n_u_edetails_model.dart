import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/widgets/ticket_list_details/ticket_list_details_widget.dart';
import 'dart:ui';
import 'v_e_n_u_edetails_widget.dart' show VENUEdetailsWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VENUEdetailsModel extends FlutterFlowModel<VENUEdetailsWidget> {
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
          'venueDetails': debugSerializeParam(
            widget?.venueDetails,
            ParamType.JSON,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=vENUEdetails',
            searchReference:
                'reference=Sh4KFgoMdmVudWVEZXRhaWxzEgZra2J4YnNyBAgJIAFQAVoMdmVudWVEZXRhaWxz',
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
            'https://app.flutterflow.io/project/brighton-spot-3t7pm2/tab=uiBuilder&page=vENUEdetails',
        searchReference: 'reference=Ogx2RU5VRWRldGFpbHNQAVoMdkVOVUVkZXRhaWxz',
        widgetClassName: 'vENUEdetails',
      );
}
