// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomePageInfoResponse _$HomePageInfoResponseFromJson(Map<String, dynamic> json) {
  return _HomePageInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$HomePageInfoResponse {
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "paths")
  List<String> get paths => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomePageInfoResponseCopyWith<HomePageInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageInfoResponseCopyWith<$Res> {
  factory $HomePageInfoResponseCopyWith(HomePageInfoResponse value,
          $Res Function(HomePageInfoResponse) then) =
      _$HomePageInfoResponseCopyWithImpl<$Res, HomePageInfoResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String status,
      @JsonKey(name: "paths") List<String> paths});
}

/// @nodoc
class _$HomePageInfoResponseCopyWithImpl<$Res,
        $Val extends HomePageInfoResponse>
    implements $HomePageInfoResponseCopyWith<$Res> {
  _$HomePageInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? paths = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paths: null == paths
          ? _value.paths
          : paths // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomePageInfoResponseImplCopyWith<$Res>
    implements $HomePageInfoResponseCopyWith<$Res> {
  factory _$$HomePageInfoResponseImplCopyWith(_$HomePageInfoResponseImpl value,
          $Res Function(_$HomePageInfoResponseImpl) then) =
      __$$HomePageInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String status,
      @JsonKey(name: "paths") List<String> paths});
}

/// @nodoc
class __$$HomePageInfoResponseImplCopyWithImpl<$Res>
    extends _$HomePageInfoResponseCopyWithImpl<$Res, _$HomePageInfoResponseImpl>
    implements _$$HomePageInfoResponseImplCopyWith<$Res> {
  __$$HomePageInfoResponseImplCopyWithImpl(_$HomePageInfoResponseImpl _value,
      $Res Function(_$HomePageInfoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? paths = null,
  }) {
    return _then(_$HomePageInfoResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paths: null == paths
          ? _value._paths
          : paths // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomePageInfoResponseImpl implements _HomePageInfoResponse {
  const _$HomePageInfoResponseImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "paths") required final List<String> paths})
      : _paths = paths;

  factory _$HomePageInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomePageInfoResponseImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String status;
  final List<String> _paths;
  @override
  @JsonKey(name: "paths")
  List<String> get paths {
    if (_paths is EqualUnmodifiableListView) return _paths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paths);
  }

  @override
  String toString() {
    return 'HomePageInfoResponse(status: $status, paths: $paths)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageInfoResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._paths, _paths));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_paths));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageInfoResponseImplCopyWith<_$HomePageInfoResponseImpl>
      get copyWith =>
          __$$HomePageInfoResponseImplCopyWithImpl<_$HomePageInfoResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomePageInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _HomePageInfoResponse implements HomePageInfoResponse {
  const factory _HomePageInfoResponse(
          {@JsonKey(name: "status") required final String status,
          @JsonKey(name: "paths") required final List<String> paths}) =
      _$HomePageInfoResponseImpl;

  factory _HomePageInfoResponse.fromJson(Map<String, dynamic> json) =
      _$HomePageInfoResponseImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "paths")
  List<String> get paths;
  @override
  @JsonKey(ignore: true)
  _$$HomePageInfoResponseImplCopyWith<_$HomePageInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
