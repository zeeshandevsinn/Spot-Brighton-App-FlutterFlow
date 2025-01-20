import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_promotersListData')) {
        try {
          _promotersListData =
              jsonDecode(prefs.getString('ff_promotersListData') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_monthListName')) {
        try {
          _monthListName =
              jsonDecode(prefs.getString('ff_monthListName') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_getEventData')) {
        try {
          _getEventData = jsonDecode(prefs.getString('ff_getEventData') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_getVenueData')) {
        try {
          _getVenueData = jsonDecode(prefs.getString('ff_getVenueData') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _favLoading = prefs.getBool('ff_favLoading') ?? _favLoading;
    });
    _safeInit(() {
      _isEventSort = prefs.getBool('ff_isEventSort') ?? _isEventSort;
    });
    _safeInit(() {
      _isVenueSort = prefs.getBool('ff_isVenueSort') ?? _isVenueSort;
    });
    _safeInit(() {
      _isPromoterSort = prefs.getBool('ff_isPromoterSort') ?? _isPromoterSort;
    });
    _safeInit(() {
      _isAdmin = prefs.getBool('ff_isAdmin') ?? _isAdmin;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  dynamic _promotersListData = jsonDecode('null');
  dynamic get promotersListData => _promotersListData;
  set promotersListData(dynamic value) {
    _promotersListData = value;
    prefs.setString('ff_promotersListData', jsonEncode(value));
    debugLogAppState(this);
  }

  dynamic _monthListName = jsonDecode(
      '{\"months\":[\"Jan\",\"Feb\",\"Mar\",\"Apr\",\"May\",\"Jun\",\"Jul\",\"Aug\",\"Sep\",\"Oct\",\"Nov\",\"Dec\"]}');
  dynamic get monthListName => _monthListName;
  set monthListName(dynamic value) {
    _monthListName = value;
    prefs.setString('ff_monthListName', jsonEncode(value));
    debugLogAppState(this);
  }

  dynamic _getEventData;
  dynamic get getEventData => _getEventData;
  set getEventData(dynamic value) {
    _getEventData = value;
    prefs.setString('ff_getEventData', jsonEncode(value));
    debugLogAppState(this);
  }

  dynamic _getVenueData;
  dynamic get getVenueData => _getVenueData;
  set getVenueData(dynamic value) {
    _getVenueData = value;
    prefs.setString('ff_getVenueData', jsonEncode(value));
    debugLogAppState(this);
  }

  bool _favLoading = true;
  bool get favLoading => _favLoading;
  set favLoading(bool value) {
    _favLoading = value;
    prefs.setBool('ff_favLoading', value);
    debugLogAppState(this);
  }

  bool _isEventSort = false;
  bool get isEventSort => _isEventSort;
  set isEventSort(bool value) {
    _isEventSort = value;
    prefs.setBool('ff_isEventSort', value);
    debugLogAppState(this);
  }

  bool _isVenueSort = false;
  bool get isVenueSort => _isVenueSort;
  set isVenueSort(bool value) {
    _isVenueSort = value;
    prefs.setBool('ff_isVenueSort', value);
    debugLogAppState(this);
  }

  bool _isPromoterSort = false;
  bool get isPromoterSort => _isPromoterSort;
  set isPromoterSort(bool value) {
    _isPromoterSort = value;
    prefs.setBool('ff_isPromoterSort', value);
    debugLogAppState(this);
  }

  UserModelStruct _UserModel = UserModelStruct();
  UserModelStruct get UserModel =>
      _UserModel?..logger = () => debugLogAppState(this);
  set UserModel(UserModelStruct value) {
    _UserModel = value;

    debugLogAppState(this);
  }

  void updateUserModelStruct(Function(UserModelStruct) updateFn) {
    updateFn(_UserModel);

    debugLogAppState(this);
  }

  bool _isAdmin = false;
  bool get isAdmin => _isAdmin;
  set isAdmin(bool value) {
    _isAdmin = value;
    prefs.setBool('ff_isAdmin', value);
    debugLogAppState(this);
  }

  Map<String, DebugDataField> toDebugSerializableMap() => {
        'promotersListData': debugSerializeParam(
          promotersListData,
          ParamType.JSON,
          link:
              'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=CiMKHQoRcHJvbW90ZXJzTGlzdERhdGESCDB1a3F3OHE5cgIICVoRcHJvbW90ZXJzTGlzdERhdGE=',
          name: 'dynamic',
          nullable: false,
        ),
        'monthListName': debugSerializeParam(
          monthListName,
          ParamType.JSON,
          link:
              'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=Ch8KGQoNbW9udGhMaXN0TmFtZRIIeDd5eGU3bHNyAggJWg1tb250aExpc3ROYW1l',
          name: 'dynamic',
          nullable: false,
        ),
        'getEventData': debugSerializeParam(
          getEventData,
          ParamType.JSON,
          link:
              'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=Ch4KGAoMZ2V0RXZlbnREYXRhEghzaGZud3ZxbXICCAlaDGdldEV2ZW50RGF0YQ==',
          name: 'dynamic',
          nullable: false,
        ),
        'getVenueData': debugSerializeParam(
          getVenueData,
          ParamType.JSON,
          link:
              'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=Ch4KGAoMZ2V0VmVudWVEYXRhEghqbjlhZW81dHICCAlaDGdldFZlbnVlRGF0YQ==',
          name: 'dynamic',
          nullable: false,
        ),
        'favLoading': debugSerializeParam(
          favLoading,
          ParamType.bool,
          link:
              'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=ChwKFgoKZmF2TG9hZGluZxIIcHkxbmxjeWtyAggFWgpmYXZMb2FkaW5n',
          name: 'bool',
          nullable: false,
        ),
        'isEventSort': debugSerializeParam(
          isEventSort,
          ParamType.bool,
          link:
              'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=Ch0KFwoLaXNFdmVudFNvcnQSCGlxb2Znajk1cgIIBVoLaXNFdmVudFNvcnQ=',
          name: 'bool',
          nullable: false,
        ),
        'isVenueSort': debugSerializeParam(
          isVenueSort,
          ParamType.bool,
          link:
              'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=Ch0KFwoLaXNWZW51ZVNvcnQSCG5xZHZ4ZXY2cgIIBVoLaXNWZW51ZVNvcnQ=',
          name: 'bool',
          nullable: false,
        ),
        'isPromoterSort': debugSerializeParam(
          isPromoterSort,
          ParamType.bool,
          link:
              'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=CiAKGgoOaXNQcm9tb3RlclNvcnQSCGs2dHoyZm92cgIIBVoOaXNQcm9tb3RlclNvcnQ=',
          name: 'bool',
          nullable: false,
        ),
        'UserModel': debugSerializeParam(
          UserModel,
          ParamType.DataStruct,
          link:
              'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=CjEKFQoJVXNlck1vZGVsEggzdHl6d3FscHIYCBQqFBISCgl1c2VyTW9kZWwSBXFmMnR6WglVc2VyTW9kZWw=',
          name: 'userModel',
          nullable: false,
        ),
        'isAdmin': debugSerializeParam(
          isAdmin,
          ParamType.bool,
          link:
              'https://app.flutterflow.io/project/brighton-spot-3t7pm2?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=ChkKEwoHaXNBZG1pbhIIb2R1b2N5dzRyAggFWgdpc0FkbWlu',
          name: 'bool',
          nullable: false,
        )
      };
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
