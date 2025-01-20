// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserModelStruct extends FFFirebaseStruct {
  UserModelStruct({
    String? createdTime,
    String? displayName,
    String? email,
    List<int>? favoriteIDs,
    String? phoneNumber,
    String? photoUrl,
    String? role,
    String? uid,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _createdTime = createdTime,
        _displayName = displayName,
        _email = email,
        _favoriteIDs = favoriteIDs != null ? LoggableList(favoriteIDs) : null,
        _phoneNumber = phoneNumber,
        _photoUrl = photoUrl,
        _role = role,
        _uid = uid,
        super(firestoreUtilData);

  // "created_time" field.
  String? _createdTime;
  String get createdTime => _createdTime ?? '';
  set createdTime(String? val) {
    _createdTime = val;
    debugLog();
  }

  bool hasCreatedTime() => _createdTime != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) {
    _displayName = val;
    debugLog();
  }

  bool hasDisplayName() => _displayName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) {
    _email = val;
    debugLog();
  }

  bool hasEmail() => _email != null;

  // "favoriteIDs" field.
  LoggableList<int>? _favoriteIDs;
  List<int> get favoriteIDs =>
      (_favoriteIDs ?? LoggableList(const []))..logger = logger;
  set favoriteIDs(List<int>? val) {
    if (val != null) {
      _favoriteIDs = LoggableList(val);
    } else {
      _favoriteIDs = null;
    }
    debugLog();
  }

  void updateFavoriteIDs(Function(List<int>) updateFn) {
    updateFn(_favoriteIDs ??= LoggableList([]));
    debugLog();
  }

  bool hasFavoriteIDs() => _favoriteIDs != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) {
    _phoneNumber = val;
    debugLog();
  }

  bool hasPhoneNumber() => _phoneNumber != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  set photoUrl(String? val) {
    _photoUrl = val;
    debugLog();
  }

  bool hasPhotoUrl() => _photoUrl != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) {
    _role = val;
    debugLog();
  }

  bool hasRole() => _role != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) {
    _uid = val;
    debugLog();
  }

  bool hasUid() => _uid != null;

  static UserModelStruct fromMap(Map<String, dynamic> data) => UserModelStruct(
        createdTime: data['created_time'] as String?,
        displayName: data['display_name'] as String?,
        email: data['email'] as String?,
        favoriteIDs: getDataList(data['favoriteIDs']),
        phoneNumber: data['phone_number'] as String?,
        photoUrl: data['photo_url'] as String?,
        role: data['role'] as String?,
        uid: data['uid'] as String?,
      );

  static UserModelStruct? maybeFromMap(dynamic data) => data is Map
      ? UserModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'created_time': _createdTime,
        'display_name': _displayName,
        'email': _email,
        'favoriteIDs': _favoriteIDs,
        'phone_number': _phoneNumber,
        'photo_url': _photoUrl,
        'role': _role,
        'uid': _uid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'created_time': serializeParam(
          _createdTime,
          ParamType.String,
        ),
        'display_name': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'favoriteIDs': serializeParam(
          _favoriteIDs,
          ParamType.int,
          isList: true,
        ),
        'phone_number': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'photo_url': serializeParam(
          _photoUrl,
          ParamType.String,
        ),
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserModelStruct(
        createdTime: deserializeParam(
          data['created_time'],
          ParamType.String,
          false,
        ),
        displayName: deserializeParam(
          data['display_name'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        favoriteIDs: deserializeParam<int>(
          data['favoriteIDs'],
          ParamType.int,
          true,
        ),
        phoneNumber: deserializeParam(
          data['phone_number'],
          ParamType.String,
          false,
        ),
        photoUrl: deserializeParam(
          data['photo_url'],
          ParamType.String,
          false,
        ),
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
      );
  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'created_time': debugSerializeParam(
          createdTime,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'display_name': debugSerializeParam(
          displayName,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'email': debugSerializeParam(
          email,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'favoriteIDs': debugSerializeParam(
          _favoriteIDs,
          ParamType.int,
          isList: true,
          name: 'int',
          nullable: false,
        ),
        'phone_number': debugSerializeParam(
          phoneNumber,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'photo_url': debugSerializeParam(
          photoUrl,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'role': debugSerializeParam(
          role,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'uid': debugSerializeParam(
          uid,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
      };

  @override
  String toString() => 'UserModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserModelStruct &&
        createdTime == other.createdTime &&
        displayName == other.displayName &&
        email == other.email &&
        listEquality.equals(favoriteIDs, other.favoriteIDs) &&
        phoneNumber == other.phoneNumber &&
        photoUrl == other.photoUrl &&
        role == other.role &&
        uid == other.uid;
  }

  @override
  int get hashCode => const ListEquality().hash([
        createdTime,
        displayName,
        email,
        favoriteIDs,
        phoneNumber,
        photoUrl,
        role,
        uid
      ]);
}

UserModelStruct createUserModelStruct({
  String? createdTime,
  String? displayName,
  String? email,
  String? phoneNumber,
  String? photoUrl,
  String? role,
  String? uid,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserModelStruct(
      createdTime: createdTime,
      displayName: displayName,
      email: email,
      phoneNumber: phoneNumber,
      photoUrl: photoUrl,
      role: role,
      uid: uid,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserModelStruct? updateUserModelStruct(
  UserModelStruct? userModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserModelStructData(
  Map<String, dynamic> firestoreData,
  UserModelStruct? userModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userModel == null) {
    return;
  }
  if (userModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userModelData = getUserModelFirestoreData(userModel, forFieldValue);
  final nestedData = userModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserModelFirestoreData(
  UserModelStruct? userModel, [
  bool forFieldValue = false,
]) {
  if (userModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userModel.toMap());

  // Add any Firestore field values
  userModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserModelListFirestoreData(
  List<UserModelStruct>? userModels,
) =>
    userModels?.map((e) => getUserModelFirestoreData(e, true)).toList() ?? [];
