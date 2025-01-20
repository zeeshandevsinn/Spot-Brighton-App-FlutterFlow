import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'custom_container_text_widget.dart' show CustomContainerTextWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomContainerTextModel
    extends FlutterFlowModel<CustomContainerTextWidget> {
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
          'titleText': debugSerializeParam(
            widget?.titleText,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=customContainerText',
            searchReference:
                'reference=ShkKEwoJdGl0bGVUZXh0EgZuNWRlMDByAggDUABaCXRpdGxlVGV4dA==',
            name: 'String',
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
        link:
            'https://app.flutterflow.io/project/brighton-spot-3t7pm2/tab=uiBuilder&page=customContainerText',
        searchReference:
            'reference=OhNjdXN0b21Db250YWluZXJUZXh0UABaE2N1c3RvbUNvbnRhaW5lclRleHQ=',
        widgetClassName: 'customContainerText',
      );
}
