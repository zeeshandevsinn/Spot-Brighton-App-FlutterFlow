import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'ticket_list_details_widget.dart' show TicketListDetailsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class TicketListDetailsModel extends FlutterFlowModel<TicketListDetailsWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - getParsedDateAction] action in ticketListDetails widget.
  DateTime? _dateTime;
  set dateTime(DateTime? value) {
    _dateTime = value;
    debugLogWidgetClass(this);
  }

  DateTime? get dateTime => _dateTime;

  // Stores action output result for [Custom Action - checkNewAction] action in ticketListDetails widget.
  bool? _isNew;
  set isNew(bool? value) {
    _isNew = value;
    debugLogWidgetClass(this);
  }

  bool? get isNew => _isNew;

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
          'date': debugSerializeParam(
            widget?.date,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=ticketListDetails',
            searchReference:
                'reference=ShYKDgoEZGF0ZRIGZmljM3dmcgQIAyAAUABaBGRhdGU=',
            name: 'String',
            nullable: true,
          ),
          'eventTitle': debugSerializeParam(
            widget?.eventTitle,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=ticketListDetails',
            searchReference:
                'reference=ShwKFAoKZXZlbnRUaXRsZRIGdnh1d3k0cgQIAyAAUABaCmV2ZW50VGl0bGU=',
            name: 'String',
            nullable: true,
          ),
          'venueName': debugSerializeParam(
            widget?.venueName,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=ticketListDetails',
            searchReference:
                'reference=ShsKEwoJdmVudWVOYW1lEgZuYjBiY2tyBAgDIABQAFoJdmVudWVOYW1l',
            name: 'String',
            nullable: true,
          ),
          'isFavorite': debugSerializeParam(
            widget?.isFavorite,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=ticketListDetails',
            searchReference:
                'reference=ShwKFAoKaXNGYXZvcml0ZRIGaGxlNTZhcgQIBSAAUABaCmlzRmF2b3JpdGU=',
            name: 'bool',
            nullable: true,
          ),
          'id': debugSerializeParam(
            widget?.id,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=ticketListDetails',
            searchReference:
                'reference=Sh4KDAoCaWQSBnN5MGRzMioIEgZldmVudDFyBAgDIABQAFoCaWQ=',
            name: 'String',
            nullable: false,
          ),
          'shareLink': debugSerializeParam(
            widget?.shareLink,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=ticketListDetails',
            searchReference:
                'reference=SjQKEwoJc2hhcmVMaW5rEgZsMHdvejQqFxIVaHR0cHM6Ly9zaGFyZWxpbmsuY29tcgQIAyAAUABaCXNoYXJlTGluaw==',
            name: 'String',
            nullable: false,
          )
        }.withoutNulls,
        actionOutputs: {
          'dateTime': debugSerializeParam(
            dateTime,
            ParamType.DateTime,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=ticketListDetails',
            name: 'DateTime',
            nullable: true,
          ),
          'isNew': debugSerializeParam(
            isNew,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=ticketListDetails',
            name: 'bool',
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
            'https://app.flutterflow.io/project/brighton-spot-3t7pm2/tab=uiBuilder&page=ticketListDetails',
        searchReference:
            'reference=OhF0aWNrZXRMaXN0RGV0YWlsc1AAWhF0aWNrZXRMaXN0RGV0YWlscw==',
        widgetClassName: 'ticketListDetails',
      );
}
