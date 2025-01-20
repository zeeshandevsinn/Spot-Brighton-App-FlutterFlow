import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'alleve6mth_copy_widget.dart' show Alleve6mthCopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class Alleve6mthCopyModel extends FlutterFlowModel<Alleve6mthCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - isAdmin] action in Alleve6mthCopy widget.
  bool? _isAdmin;
  set isAdmin(bool? value) {
    _isAdmin = value;
    debugLogWidgetClass(this);
  }

  bool? get isAdmin => _isAdmin;

  // Stores action output result for [Custom Action - getSortedMonthsAndEvents] action in Alleve6mthCopy widget.
  dynamic? _eventData;
  set eventData(dynamic? value) {
    _eventData = value;
    debugLogWidgetClass(this);
  }

  dynamic? get eventData => _eventData;

  // Stores action output result for [Custom Action - sortEvents] action in Icon widget.
  dynamic? _sortEvent;
  set sortEvent(dynamic? value) {
    _sortEvent = value;
    debugLogWidgetClass(this);
  }

  dynamic? get sortEvent => _sortEvent;

  // Stores action output result for [Custom Action - sortEvents] action in Icon widget.
  dynamic? _decendingSort;
  set decendingSort(dynamic? value) {
    _decendingSort = value;
    debugLogWidgetClass(this);
  }

  dynamic? get decendingSort => _decendingSort;

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
          'isAdmin': debugSerializeParam(
            isAdmin,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=Alleve6mthCopy',
            name: 'bool',
            nullable: true,
          ),
          'eventData': debugSerializeParam(
            eventData,
            ParamType.JSON,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=Alleve6mthCopy',
            name: 'dynamic',
            nullable: true,
          ),
          'sortEvent': debugSerializeParam(
            sortEvent,
            ParamType.JSON,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=Alleve6mthCopy',
            name: 'dynamic',
            nullable: true,
          ),
          'decendingSort': debugSerializeParam(
            decendingSort,
            ParamType.JSON,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=Alleve6mthCopy',
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
            'https://app.flutterflow.io/project/brighton-spot-3t7pm2/tab=uiBuilder&page=Alleve6mthCopy',
        searchReference:
            'reference=Og5BbGxldmU2bXRoQ29weVABWg5BbGxldmU2bXRoQ29weQ==',
        widgetClassName: 'Alleve6mthCopy',
      );
}
