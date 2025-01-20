import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'add_events_widget.dart' show AddEventsWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class AddEventsModel extends FlutterFlowModel<AddEventsWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Custom Action - getVenueTitles] action in addEvents widget.
  List<String>? _venueTitles;
  set venueTitles(List<String>? value) {
    _venueTitles = value;
    debugLogWidgetClass(this);
  }

  List<String>? get venueTitles => _venueTitles;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Event Title is required';
    }

    return null;
  }

  // State field(s) for venueDrop widget.
  String? _venueDropValue;
  set venueDropValue(String? value) {
    _venueDropValue = value;
    debugLogWidgetClass(this);
  }

  String? get venueDropValue => _venueDropValue;

  FormFieldController<String>? venueDropValueController;
  // State field(s) for monthDrop widget.
  String? _monthDropValue;
  set monthDropValue(String? value) {
    _monthDropValue = value;
    debugLogWidgetClass(this);
  }

  String? get monthDropValue => _monthDropValue;

  FormFieldController<String>? monthDropValueController;
  DateTime? datePicked;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;

    debugLogWidgetClass(this);
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetStates: {
          'textFieldText': debugSerializeParam(
            textController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=addEvents',
            name: 'String',
            nullable: true,
          ),
          'venueDropValue': debugSerializeParam(
            venueDropValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=addEvents',
            name: 'String',
            nullable: true,
          ),
          'monthDropValue': debugSerializeParam(
            monthDropValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=addEvents',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'venueTitles': debugSerializeParam(
            venueTitles,
            ParamType.String,
            isList: true,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=addEvents',
            name: 'String',
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
            'https://app.flutterflow.io/project/brighton-spot-3t7pm2/tab=uiBuilder&page=addEvents',
        searchReference: 'reference=OglhZGRFdmVudHNQAVoJYWRkRXZlbnRz',
        widgetClassName: 'addEvents',
      );
}
