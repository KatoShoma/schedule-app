// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'schedule_list_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ScheduleListScreenStateTearOff {
  const _$ScheduleListScreenStateTearOff();

  _ScheduleListScreenState call(
      {List<ScheduleItemModel> schedules = const []}) {
    return _ScheduleListScreenState(
      schedules: schedules,
    );
  }
}

/// @nodoc
const $ScheduleListScreenState = _$ScheduleListScreenStateTearOff();

/// @nodoc
mixin _$ScheduleListScreenState {
  List<ScheduleItemModel> get schedules => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleListScreenStateCopyWith<ScheduleListScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleListScreenStateCopyWith<$Res> {
  factory $ScheduleListScreenStateCopyWith(ScheduleListScreenState value,
          $Res Function(ScheduleListScreenState) then) =
      _$ScheduleListScreenStateCopyWithImpl<$Res>;
  $Res call({List<ScheduleItemModel> schedules});
}

/// @nodoc
class _$ScheduleListScreenStateCopyWithImpl<$Res>
    implements $ScheduleListScreenStateCopyWith<$Res> {
  _$ScheduleListScreenStateCopyWithImpl(this._value, this._then);

  final ScheduleListScreenState _value;
  // ignore: unused_field
  final $Res Function(ScheduleListScreenState) _then;

  @override
  $Res call({
    Object? schedules = freezed,
  }) {
    return _then(_value.copyWith(
      schedules: schedules == freezed
          ? _value.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<ScheduleItemModel>,
    ));
  }
}

/// @nodoc
abstract class _$ScheduleListScreenStateCopyWith<$Res>
    implements $ScheduleListScreenStateCopyWith<$Res> {
  factory _$ScheduleListScreenStateCopyWith(_ScheduleListScreenState value,
          $Res Function(_ScheduleListScreenState) then) =
      __$ScheduleListScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ScheduleItemModel> schedules});
}

/// @nodoc
class __$ScheduleListScreenStateCopyWithImpl<$Res>
    extends _$ScheduleListScreenStateCopyWithImpl<$Res>
    implements _$ScheduleListScreenStateCopyWith<$Res> {
  __$ScheduleListScreenStateCopyWithImpl(_ScheduleListScreenState _value,
      $Res Function(_ScheduleListScreenState) _then)
      : super(_value, (v) => _then(v as _ScheduleListScreenState));

  @override
  _ScheduleListScreenState get _value =>
      super._value as _ScheduleListScreenState;

  @override
  $Res call({
    Object? schedules = freezed,
  }) {
    return _then(_ScheduleListScreenState(
      schedules: schedules == freezed
          ? _value.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<ScheduleItemModel>,
    ));
  }
}

/// @nodoc

class _$_ScheduleListScreenState implements _ScheduleListScreenState {
  const _$_ScheduleListScreenState({this.schedules = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<ScheduleItemModel> schedules;

  @override
  String toString() {
    return 'ScheduleListScreenState(schedules: $schedules)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScheduleListScreenState &&
            (identical(other.schedules, schedules) ||
                const DeepCollectionEquality()
                    .equals(other.schedules, schedules)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(schedules);

  @JsonKey(ignore: true)
  @override
  _$ScheduleListScreenStateCopyWith<_ScheduleListScreenState> get copyWith =>
      __$ScheduleListScreenStateCopyWithImpl<_ScheduleListScreenState>(
          this, _$identity);
}

abstract class _ScheduleListScreenState implements ScheduleListScreenState {
  const factory _ScheduleListScreenState({List<ScheduleItemModel> schedules}) =
      _$_ScheduleListScreenState;

  @override
  List<ScheduleItemModel> get schedules => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ScheduleListScreenStateCopyWith<_ScheduleListScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
