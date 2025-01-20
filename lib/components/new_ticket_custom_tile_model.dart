import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'new_ticket_custom_tile_widget.dart' show NewTicketCustomTileWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class NewTicketCustomTileModel
    extends FlutterFlowModel<NewTicketCustomTileWidget> {
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
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=newTicketCustomTile',
            searchReference:
                'reference=ShYKDgoEZGF0ZRIGZmljM3dmcgQIAyAAUABaBGRhdGU=',
            name: 'String',
            nullable: true,
          ),
          'eventTitle': debugSerializeParam(
            widget?.eventTitle,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=newTicketCustomTile',
            searchReference:
                'reference=ShwKFAoKZXZlbnRUaXRsZRIGdnh1d3k0cgQIAyAAUABaCmV2ZW50VGl0bGU=',
            name: 'String',
            nullable: true,
          ),
          'venueName': debugSerializeParam(
            widget?.venueName,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=newTicketCustomTile',
            searchReference:
                'reference=ShsKEwoJdmVudWVOYW1lEgZuYjBiY2tyBAgDIABQAFoJdmVudWVOYW1l',
            name: 'String',
            nullable: true,
          ),
          'isFavorite': debugSerializeParam(
            widget?.isFavorite,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=newTicketCustomTile',
            searchReference:
                'reference=ShwKFAoKaXNGYXZvcml0ZRIGaGxlNTZhcgQIBSAAUABaCmlzRmF2b3JpdGU=',
            name: 'bool',
            nullable: true,
          ),
          'id': debugSerializeParam(
            widget?.id,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=newTicketCustomTile',
            searchReference:
                'reference=Sh4KDAoCaWQSBnN5MGRzMioIEgZldmVudDFyBAgDIABQAFoCaWQ=',
            name: 'String',
            nullable: false,
          ),
          'shareLink': debugSerializeParam(
            widget?.shareLink,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=uiBuilder&page=newTicketCustomTile',
            searchReference:
                'reference=SjQKEwoJc2hhcmVMaW5rEgZsMHdvejQqFxIVaHR0cHM6Ly9zaGFyZWxpbmsuY29tcgQIAyAAUABaCXNoYXJlTGluaw==',
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
            'https://app.flutterflow.io/project/brighton-spot-3t7pm2/tab=uiBuilder&page=newTicketCustomTile',
        searchReference:
            'reference=OhNuZXdUaWNrZXRDdXN0b21UaWxlUABaE25ld1RpY2tldEN1c3RvbVRpbGU=',
        widgetClassName: 'newTicketCustomTile',
      );
}
