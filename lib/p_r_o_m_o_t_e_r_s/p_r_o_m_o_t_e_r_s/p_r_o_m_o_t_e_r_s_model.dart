import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/widgets/promoters_data_container/promoters_data_container_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'p_r_o_m_o_t_e_r_s_widget.dart' show PROMOTERSWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class PROMOTERSModel extends FlutterFlowModel<PROMOTERSWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getPromotersAndDetails] action in pROMOTERS widget.
  dynamic? _promoters;
  set promoters(dynamic? value) {
    _promoters = value;
    debugLogWidgetClass(this);
  }

  dynamic? get promoters => _promoters;

  // Models for promoters_data_container dynamic component.
  late FlutterFlowDynamicModels<PromotersDataContainerModel>
      promotersDataContainerModels;
  // Stores action output result for [Custom Action - getSortedPromotersAndDetails] action in Icon widget.
  dynamic? _sortPromoters;
  set sortPromoters(dynamic? value) {
    _sortPromoters = value;
    debugLogWidgetClass(this);
  }

  dynamic? get sortPromoters => _sortPromoters;

  // Stores action output result for [Custom Action - getSortedPromotersAndDetails] action in Icon widget.
  dynamic? _decendingPromoters;
  set decendingPromoters(dynamic? value) {
    _decendingPromoters = value;
    debugLogWidgetClass(this);
  }

  dynamic? get decendingPromoters => _decendingPromoters;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    promotersDataContainerModels =
        FlutterFlowDynamicModels(() => PromotersDataContainerModel());

    debugLogWidgetClass(this);
  }

  @override
  void dispose() {
    promotersDataContainerModels.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        actionOutputs: {
          'promoters': debugSerializeParam(
            promoters,
            ParamType.JSON,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=pROMOTERS',
            name: 'dynamic',
            nullable: true,
          ),
          'sortPromoters': debugSerializeParam(
            sortPromoters,
            ParamType.JSON,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=pROMOTERS',
            name: 'dynamic',
            nullable: true,
          ),
          'decendingPromoters': debugSerializeParam(
            decendingPromoters,
            ParamType.JSON,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=pROMOTERS',
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
          'promotersDataContainerModels (List<promoters_data_container>)':
              promotersDataContainerModels?.toDynamicWidgetClassDebugData(),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/brighton-spot-3t7pm2/tab=uiBuilder&page=pROMOTERS',
        searchReference: 'reference=OglwUk9NT1RFUlNQAVoJcFJPTU9URVJT',
        widgetClassName: 'pROMOTERS',
      );
}
