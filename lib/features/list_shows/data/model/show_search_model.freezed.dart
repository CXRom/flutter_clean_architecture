// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'show_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShowSearchModel _$ShowSearchModelFromJson(Map<String, dynamic> json) {
  return _ShowSearchModel.fromJson(json);
}

/// @nodoc
mixin _$ShowSearchModel {
  double get score => throw _privateConstructorUsedError;
  ShowModel get show => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowSearchModelCopyWith<ShowSearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowSearchModelCopyWith<$Res> {
  factory $ShowSearchModelCopyWith(
          ShowSearchModel value, $Res Function(ShowSearchModel) then) =
      _$ShowSearchModelCopyWithImpl<$Res, ShowSearchModel>;
  @useResult
  $Res call({double score, ShowModel show});

  $ShowModelCopyWith<$Res> get show;
}

/// @nodoc
class _$ShowSearchModelCopyWithImpl<$Res, $Val extends ShowSearchModel>
    implements $ShowSearchModelCopyWith<$Res> {
  _$ShowSearchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? show = null,
  }) {
    return _then(_value.copyWith(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as ShowModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShowModelCopyWith<$Res> get show {
    return $ShowModelCopyWith<$Res>(_value.show, (value) {
      return _then(_value.copyWith(show: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ShowSearchModelCopyWith<$Res>
    implements $ShowSearchModelCopyWith<$Res> {
  factory _$$_ShowSearchModelCopyWith(
          _$_ShowSearchModel value, $Res Function(_$_ShowSearchModel) then) =
      __$$_ShowSearchModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double score, ShowModel show});

  @override
  $ShowModelCopyWith<$Res> get show;
}

/// @nodoc
class __$$_ShowSearchModelCopyWithImpl<$Res>
    extends _$ShowSearchModelCopyWithImpl<$Res, _$_ShowSearchModel>
    implements _$$_ShowSearchModelCopyWith<$Res> {
  __$$_ShowSearchModelCopyWithImpl(
      _$_ShowSearchModel _value, $Res Function(_$_ShowSearchModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? show = null,
  }) {
    return _then(_$_ShowSearchModel(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as ShowModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShowSearchModel implements _ShowSearchModel {
  const _$_ShowSearchModel({required this.score, required this.show});

  factory _$_ShowSearchModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShowSearchModelFromJson(json);

  @override
  final double score;
  @override
  final ShowModel show;

  @override
  String toString() {
    return 'ShowSearchModel(score: $score, show: $show)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowSearchModel &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.show, show) || other.show == show));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, score, show);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowSearchModelCopyWith<_$_ShowSearchModel> get copyWith =>
      __$$_ShowSearchModelCopyWithImpl<_$_ShowSearchModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShowSearchModelToJson(
      this,
    );
  }
}

abstract class _ShowSearchModel implements ShowSearchModel {
  const factory _ShowSearchModel(
      {required final double score,
      required final ShowModel show}) = _$_ShowSearchModel;

  factory _ShowSearchModel.fromJson(Map<String, dynamic> json) =
      _$_ShowSearchModel.fromJson;

  @override
  double get score;
  @override
  ShowModel get show;
  @override
  @JsonKey(ignore: true)
  _$$_ShowSearchModelCopyWith<_$_ShowSearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}
