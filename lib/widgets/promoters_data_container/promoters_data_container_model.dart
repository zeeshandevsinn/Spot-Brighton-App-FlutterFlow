import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'promoters_data_container_widget.dart' show PromotersDataContainerWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PromotersDataContainerModel
    extends FlutterFlowModel<PromotersDataContainerWidget> {
  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'title': debugSerializeParam(
            widget?.title,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=promoters_data_container',
            searchReference:
                'reference=SiAKDwoFdGl0bGUSBjJjYmNqaSoHEgV0aXRsZXIECAMgAVAAWgV0aXRsZQ==',
            name: 'String',
            nullable: false,
          ),
          'subtitle': debugSerializeParam(
            widget?.subtitle,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=promoters_data_container',
            searchReference:
                'reference=SiYKEgoIc3VidGl0bGUSBmRjZGFiMCoKEghzdWJ0aXRsZXIECAMgAVAAWghzdWJ0aXRsZQ==',
            name: 'String',
            nullable: false,
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
        link:
            'https://app.flutterflow.io/project/brighton-spot-3t7pm2/tab=uiBuilder&page=promoters_data_container',
        searchReference:
            'reference=Ohhwcm9tb3RlcnNfZGF0YV9jb250YWluZXJQAFoYcHJvbW90ZXJzX2RhdGFfY29udGFpbmVy',
        widgetClassName: 'promoters_data_container',
      );
}
