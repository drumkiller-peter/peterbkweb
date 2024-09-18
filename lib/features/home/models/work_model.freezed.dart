// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkModel _$WorkModelFromJson(Map<String, dynamic> json) {
  return _WorkModel.fromJson(json);
}

/// @nodoc
mixin _$WorkModel {
  String get projectName => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;

  /// Serializes this WorkModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkModelCopyWith<WorkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkModelCopyWith<$Res> {
  factory $WorkModelCopyWith(WorkModel value, $Res Function(WorkModel) then) =
      _$WorkModelCopyWithImpl<$Res, WorkModel>;
  @useResult
  $Res call(
      {String projectName,
      String imageUrl,
      String description,
      String? videoUrl});
}

/// @nodoc
class _$WorkModelCopyWithImpl<$Res, $Val extends WorkModel>
    implements $WorkModelCopyWith<$Res> {
  _$WorkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectName = null,
    Object? imageUrl = null,
    Object? description = null,
    Object? videoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkModelImplCopyWith<$Res>
    implements $WorkModelCopyWith<$Res> {
  factory _$$WorkModelImplCopyWith(
          _$WorkModelImpl value, $Res Function(_$WorkModelImpl) then) =
      __$$WorkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String projectName,
      String imageUrl,
      String description,
      String? videoUrl});
}

/// @nodoc
class __$$WorkModelImplCopyWithImpl<$Res>
    extends _$WorkModelCopyWithImpl<$Res, _$WorkModelImpl>
    implements _$$WorkModelImplCopyWith<$Res> {
  __$$WorkModelImplCopyWithImpl(
      _$WorkModelImpl _value, $Res Function(_$WorkModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectName = null,
    Object? imageUrl = null,
    Object? description = null,
    Object? videoUrl = freezed,
  }) {
    return _then(_$WorkModelImpl(
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkModelImpl implements _WorkModel {
  const _$WorkModelImpl(
      {required this.projectName,
      required this.imageUrl,
      required this.description,
      this.videoUrl});

  factory _$WorkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkModelImplFromJson(json);

  @override
  final String projectName;
  @override
  final String imageUrl;
  @override
  final String description;
  @override
  final String? videoUrl;

  @override
  String toString() {
    return 'WorkModel(projectName: $projectName, imageUrl: $imageUrl, description: $description, videoUrl: $videoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkModelImpl &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, projectName, imageUrl, description, videoUrl);

  /// Create a copy of WorkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkModelImplCopyWith<_$WorkModelImpl> get copyWith =>
      __$$WorkModelImplCopyWithImpl<_$WorkModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkModelImplToJson(
      this,
    );
  }
}

abstract class _WorkModel implements WorkModel {
  const factory _WorkModel(
      {required final String projectName,
      required final String imageUrl,
      required final String description,
      final String? videoUrl}) = _$WorkModelImpl;

  factory _WorkModel.fromJson(Map<String, dynamic> json) =
      _$WorkModelImpl.fromJson;

  @override
  String get projectName;
  @override
  String get imageUrl;
  @override
  String get description;
  @override
  String? get videoUrl;

  /// Create a copy of WorkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkModelImplCopyWith<_$WorkModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
