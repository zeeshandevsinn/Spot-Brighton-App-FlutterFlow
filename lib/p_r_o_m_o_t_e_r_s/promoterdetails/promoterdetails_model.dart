import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/widgets/ticket_list_details/ticket_list_details_widget.dart';
import 'dart:math';
import 'dart:ui';
import 'promoterdetails_widget.dart' show PromoterdetailsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class PromoterdetailsModel extends FlutterFlowModel<PromoterdetailsWidget> {
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
          'promoters': debugSerializeParam(
            widget?.promoters,
            ParamType.JSON,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=Promoterdetails',
            searchReference:
                'reference=ShsKEwoJcHJvbW90ZXJzEgZucXRhcGlyBAgJIAFQAVoJcHJvbW90ZXJz',
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
            'https://app.flutterflow.io/project/brighton-spot-3t7pm2/tab=uiBuilder&page=Promoterdetails',
        searchReference:
            'reference=Og9Qcm9tb3RlcmRldGFpbHNQAVoPUHJvbW90ZXJkZXRhaWxz',
        widgetClassName: 'Promoterdetails',
      );
}
