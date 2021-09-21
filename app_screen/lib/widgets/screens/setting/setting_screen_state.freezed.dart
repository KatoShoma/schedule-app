// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'setting_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingScreenStateTearOff {
  const _$SettingScreenStateTearOff();

  _SettingScreenState call(
      {bool isAllowedRetranslation = false,
      bool isDarkModeRetranslation = false}) {
    return _SettingScreenState(
      isAllowedRetranslation: isAllowedRetranslation,
      isDarkModeRetranslation: isDarkModeRetranslation,
    );
  }
}

/// @nodoc
const $SettingScreenState = _$SettingScreenStateTearOff();

/// @nodoc
mixin _$SettingScreenState {
  bool get isAllowedRetranslation => throw _privateConstructorUsedError;
  bool get isDarkModeRetranslation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingScreenStateCopyWith<SettingScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingScreenStateCopyWith<$Res> {
  factory $SettingScreenStateCopyWith(
          SettingScreenState value, $Res Function(SettingScreenState) then) =
      _$SettingScreenStateCopyWithImpl<$Res>;
  $Res call({bool isAllowedRetranslation, bool isDarkModeRetranslation});
}

/// @nodoc
class _$SettingScreenStateCopyWithImpl<$Res>
    implements $SettingScreenStateCopyWith<$Res> {
  _$SettingScreenStateCopyWithImpl(this._value, this._then);

  final SettingScreenState _value;
  // ignore: unused_field
  final $Res Function(SettingScreenState) _then;

  @override
  $Res call({
    Object? isAllowedRetranslation = freezed,
    Object? isDarkModeRetranslation = freezed,
  }) {
    return _then(_value.copyWith(
      isAllowedRetranslation: isAllowedRetranslation == freezed
          ? _value.isAllowedRetranslation
          : isAllowedRetranslation // ignore: cast_nullable_to_non_nullable
              as bool,
      isDarkModeRetranslation: isDarkModeRetranslation == freezed
          ? _value.isDarkModeRetranslation
          : isDarkModeRetranslation // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SettingScreenStateCopyWith<$Res>
    implements $SettingScreenStateCopyWith<$Res> {
  factory _$SettingScreenStateCopyWith(
          _SettingScreenState value, $Res Function(_SettingScreenState) then) =
      __$SettingScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isAllowedRetranslation, bool isDarkModeRetranslation});
}

/// @nodoc
class __$SettingScreenStateCopyWithImpl<$Res>
    extends _$SettingScreenStateCopyWithImpl<$Res>
    implements _$SettingScreenStateCopyWith<$Res> {
  __$SettingScreenStateCopyWithImpl(
      _SettingScreenState _value, $Res Function(_SettingScreenState) _then)
      : super(_value, (v) => _then(v as _SettingScreenState));

  @override
  _SettingScreenState get _value => super._value as _SettingScreenState;

  @override
  $Res call({
    Object? isAllowedRetranslation = freezed,
    Object? isDarkModeRetranslation = freezed,
  }) {
    return _then(_SettingScreenState(
      isAllowedRetranslation: isAllowedRetranslation == freezed
          ? _value.isAllowedRetranslation
          : isAllowedRetranslation // ignore: cast_nullable_to_non_nullable
              as bool,
      isDarkModeRetranslation: isDarkModeRetranslation == freezed
          ? _value.isDarkModeRetranslation
          : isDarkModeRetranslation // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SettingScreenState implements _SettingScreenState {
  const _$_SettingScreenState(
      {this.isAllowedRetranslation = false,
      this.isDarkModeRetranslation = false});

  @JsonKey(defaultValue: false)
  @override
  final bool isAllowedRetranslation;
  @JsonKey(defaultValue: false)
  @override
  final bool isDarkModeRetranslation;

  @override
  String toString() {
    return 'SettingScreenState(isAllowedRetranslation: $isAllowedRetranslation, isDarkModeRetranslation: $isDarkModeRetranslation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingScreenState &&
            (identical(other.isAllowedRetranslation, isAllowedRetranslation) ||
                const DeepCollectionEquality().equals(
                    other.isAllowedRetranslation, isAllowedRetranslation)) &&
            (identical(
                    other.isDarkModeRetranslation, isDarkModeRetranslation) ||
                const DeepCollectionEquality().equals(
                    other.isDarkModeRetranslation, isDarkModeRetranslation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isAllowedRetranslation) ^
      const DeepCollectionEquality().hash(isDarkModeRetranslation);

  @JsonKey(ignore: true)
  @override
  _$SettingScreenStateCopyWith<_SettingScreenState> get copyWith =>
      __$SettingScreenStateCopyWithImpl<_SettingScreenState>(this, _$identity);
}

abstract class _SettingScreenState implements SettingScreenState {
  const factory _SettingScreenState(
      {bool isAllowedRetranslation,
      bool isDarkModeRetranslation}) = _$_SettingScreenState;

  @override
  bool get isAllowedRetranslation => throw _privateConstructorUsedError;
  @override
  bool get isDarkModeRetranslation => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SettingScreenStateCopyWith<_SettingScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
