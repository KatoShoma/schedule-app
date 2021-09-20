// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'share_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShareScreenStateTearOff {
  const _$ShareScreenStateTearOff();

  _ShareScreenState call({bool isPressedEnjoyedButton = false}) {
    return _ShareScreenState(
      isPressedEnjoyedButton: isPressedEnjoyedButton,
    );
  }
}

/// @nodoc
const $ShareScreenState = _$ShareScreenStateTearOff();

/// @nodoc
mixin _$ShareScreenState {
  bool get isPressedEnjoyedButton => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShareScreenStateCopyWith<ShareScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareScreenStateCopyWith<$Res> {
  factory $ShareScreenStateCopyWith(
          ShareScreenState value, $Res Function(ShareScreenState) then) =
      _$ShareScreenStateCopyWithImpl<$Res>;
  $Res call({bool isPressedEnjoyedButton});
}

/// @nodoc
class _$ShareScreenStateCopyWithImpl<$Res>
    implements $ShareScreenStateCopyWith<$Res> {
  _$ShareScreenStateCopyWithImpl(this._value, this._then);

  final ShareScreenState _value;
  // ignore: unused_field
  final $Res Function(ShareScreenState) _then;

  @override
  $Res call({
    Object? isPressedEnjoyedButton = freezed,
  }) {
    return _then(_value.copyWith(
      isPressedEnjoyedButton: isPressedEnjoyedButton == freezed
          ? _value.isPressedEnjoyedButton
          : isPressedEnjoyedButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ShareScreenStateCopyWith<$Res>
    implements $ShareScreenStateCopyWith<$Res> {
  factory _$ShareScreenStateCopyWith(
          _ShareScreenState value, $Res Function(_ShareScreenState) then) =
      __$ShareScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isPressedEnjoyedButton});
}

/// @nodoc
class __$ShareScreenStateCopyWithImpl<$Res>
    extends _$ShareScreenStateCopyWithImpl<$Res>
    implements _$ShareScreenStateCopyWith<$Res> {
  __$ShareScreenStateCopyWithImpl(
      _ShareScreenState _value, $Res Function(_ShareScreenState) _then)
      : super(_value, (v) => _then(v as _ShareScreenState));

  @override
  _ShareScreenState get _value => super._value as _ShareScreenState;

  @override
  $Res call({
    Object? isPressedEnjoyedButton = freezed,
  }) {
    return _then(_ShareScreenState(
      isPressedEnjoyedButton: isPressedEnjoyedButton == freezed
          ? _value.isPressedEnjoyedButton
          : isPressedEnjoyedButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShareScreenState implements _ShareScreenState {
  const _$_ShareScreenState({this.isPressedEnjoyedButton = false});

  @JsonKey(defaultValue: false)
  @override
  final bool isPressedEnjoyedButton;

  @override
  String toString() {
    return 'ShareScreenState(isPressedEnjoyedButton: $isPressedEnjoyedButton)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShareScreenState &&
            (identical(other.isPressedEnjoyedButton, isPressedEnjoyedButton) ||
                const DeepCollectionEquality().equals(
                    other.isPressedEnjoyedButton, isPressedEnjoyedButton)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isPressedEnjoyedButton);

  @JsonKey(ignore: true)
  @override
  _$ShareScreenStateCopyWith<_ShareScreenState> get copyWith =>
      __$ShareScreenStateCopyWithImpl<_ShareScreenState>(this, _$identity);
}

abstract class _ShareScreenState implements ShareScreenState {
  const factory _ShareScreenState({bool isPressedEnjoyedButton}) =
      _$_ShareScreenState;

  @override
  bool get isPressedEnjoyedButton => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShareScreenStateCopyWith<_ShareScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
