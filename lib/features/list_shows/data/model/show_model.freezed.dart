// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'show_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShowModel _$ShowModelFromJson(Map<String, dynamic> json) {
  return _ShowModel.fromJson(json);
}

/// @nodoc
mixin _$ShowModel {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowModelCopyWith<ShowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowModelCopyWith<$Res> {
  factory $ShowModelCopyWith(ShowModel value, $Res Function(ShowModel) then) =
      _$ShowModelCopyWithImpl<$Res, ShowModel>;
  @useResult
  $Res call(
      {int id,
      String url,
      String name,
      String type,
      String language,
      String status});
}

/// @nodoc
class _$ShowModelCopyWithImpl<$Res, $Val extends ShowModel>
    implements $ShowModelCopyWith<$Res> {
  _$ShowModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? name = null,
    Object? type = null,
    Object? language = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShowModelCopyWith<$Res> implements $ShowModelCopyWith<$Res> {
  factory _$$_ShowModelCopyWith(
          _$_ShowModel value, $Res Function(_$_ShowModel) then) =
      __$$_ShowModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String url,
      String name,
      String type,
      String language,
      String status});
}

/// @nodoc
class __$$_ShowModelCopyWithImpl<$Res>
    extends _$ShowModelCopyWithImpl<$Res, _$_ShowModel>
    implements _$$_ShowModelCopyWith<$Res> {
  __$$_ShowModelCopyWithImpl(
      _$_ShowModel _value, $Res Function(_$_ShowModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? name = null,
    Object? type = null,
    Object? language = null,
    Object? status = null,
  }) {
    return _then(_$_ShowModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShowModel implements _ShowModel {
  const _$_ShowModel(
      {required this.id,
      required this.url,
      required this.name,
      required this.type,
      required this.language,
      required this.status});

  factory _$_ShowModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShowModelFromJson(json);

  @override
  final int id;
  @override
  final String url;
  @override
  final String name;
  @override
  final String type;
  @override
  final String language;
  @override
  final String status;

  @override
  String toString() {
    return 'ShowModel(id: $id, url: $url, name: $name, type: $type, language: $language, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, url, name, type, language, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowModelCopyWith<_$_ShowModel> get copyWith =>
      __$$_ShowModelCopyWithImpl<_$_ShowModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShowModelToJson(
      this,
    );
  }
}

abstract class _ShowModel implements ShowModel {
  const factory _ShowModel(
      {required final int id,
      required final String url,
      required final String name,
      required final String type,
      required final String language,
      required final String status}) = _$_ShowModel;

  factory _ShowModel.fromJson(Map<String, dynamic> json) =
      _$_ShowModel.fromJson;

  @override
  int get id;
  @override
  String get url;
  @override
  String get name;
  @override
  String get type;
  @override
  String get language;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$_ShowModelCopyWith<_$_ShowModel> get copyWith =>
      throw _privateConstructorUsedError;
}
