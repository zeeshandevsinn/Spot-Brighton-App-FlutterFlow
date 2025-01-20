import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'webview_page_widget.dart' show WebviewPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WebviewPageModel extends FlutterFlowModel<WebviewPageWidget> {
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
        widgetParameters: {
          'viewUrl': debugSerializeParam(
            widget?.viewUrl,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=webviewPage',
            searchReference:
                'reference=SjAKEQoHdmlld1VybBIGZjFkZzJvKhUSE2h0dHBzOi8vZmx1dHRlci5kZXZyBAgDIAFQAVoHdmlld1VybA==',
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
            'https://app.flutterflow.io/project/brighton-spot-3t7pm2/tab=uiBuilder&page=webviewPage',
        searchReference: 'reference=Ogt3ZWJ2aWV3UGFnZVABWgt3ZWJ2aWV3UGFnZQ==',
        widgetClassName: 'webviewPage',
      );
}
