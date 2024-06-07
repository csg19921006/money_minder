// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomePageState {
  String? get name => throw _privateConstructorUsedError;
  HomePageInfoResponse? get homePageInfoResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res, HomePageState>;
  @useResult
  $Res call({String? name, HomePageInfoResponse? homePageInfoResponse});

  $HomePageInfoResponseCopyWith<$Res>? get homePageInfoResponse;
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res, $Val extends HomePageState>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? homePageInfoResponse = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      homePageInfoResponse: freezed == homePageInfoResponse
          ? _value.homePageInfoResponse
          : homePageInfoResponse // ignore: cast_nullable_to_non_nullable
              as HomePageInfoResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomePageInfoResponseCopyWith<$Res>? get homePageInfoResponse {
    if (_value.homePageInfoResponse == null) {
      return null;
    }

    return $HomePageInfoResponseCopyWith<$Res>(_value.homePageInfoResponse!,
        (value) {
      return _then(_value.copyWith(homePageInfoResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomePageStateImplCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$HomePageStateImplCopyWith(
          _$HomePageStateImpl value, $Res Function(_$HomePageStateImpl) then) =
      __$$HomePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, HomePageInfoResponse? homePageInfoResponse});

  @override
  $HomePageInfoResponseCopyWith<$Res>? get homePageInfoResponse;
}

/// @nodoc
class __$$HomePageStateImplCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$HomePageStateImpl>
    implements _$$HomePageStateImplCopyWith<$Res> {
  __$$HomePageStateImplCopyWithImpl(
      _$HomePageStateImpl _value, $Res Function(_$HomePageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? homePageInfoResponse = freezed,
  }) {
    return _then(_$HomePageStateImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      homePageInfoResponse: freezed == homePageInfoResponse
          ? _value.homePageInfoResponse
          : homePageInfoResponse // ignore: cast_nullable_to_non_nullable
              as HomePageInfoResponse?,
    ));
  }
}

/// @nodoc

class _$HomePageStateImpl implements _HomePageState {
  _$HomePageStateImpl({this.name, this.homePageInfoResponse});

  @override
  final String? name;
  @override
  final HomePageInfoResponse? homePageInfoResponse;

  @override
  String toString() {
    return 'HomePageState(name: $name, homePageInfoResponse: $homePageInfoResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.homePageInfoResponse, homePageInfoResponse) ||
                other.homePageInfoResponse == homePageInfoResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, homePageInfoResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      __$$HomePageStateImplCopyWithImpl<_$HomePageStateImpl>(this, _$identity);
}

abstract class _HomePageState implements HomePageState {
  factory _HomePageState(
      {final String? name,
      final HomePageInfoResponse? homePageInfoResponse}) = _$HomePageStateImpl;

  @override
  String? get name;
  @override
  HomePageInfoResponse? get homePageInfoResponse;
  @override
  @JsonKey(ignore: true)
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
