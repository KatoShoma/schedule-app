// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'schedule_created_list_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ScheduleCreatedListScreenStateTearOff {
  const _$ScheduleCreatedListScreenStateTearOff();

  _ScheduleCreatedListScreenState call(
      {List<ScheduleItemModel> schedules = const []}) {
    return _ScheduleCreatedListScreenState(
      schedules: schedules,
    );
  }
}

/// @nodoc
const $ScheduleCreatedListScreenState =
    _$ScheduleCreatedListScreenStateTearOff();

/// @nodoc
mixin _$ScheduleCreatedListScreenState {
  List<ScheduleItemModel> get schedules => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleCreatedListScreenStateCopyWith<ScheduleCreatedListScreenState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCreatedListScreenStateCopyWith<$Res> {
  factory $ScheduleCreatedListScreenStateCopyWith(
          ScheduleCreatedListScreenState value,
          $Res Function(ScheduleCreatedListScreenState) then) =
      _$ScheduleCreatedListScreenStateCopyWithImpl<$Res>;
  $Res call({List<ScheduleItemModel> schedules});
}

/// @nodoc
class _$ScheduleCreatedListScreenStateCopyWithImpl<$Res>
    implements $ScheduleCreatedListScreenStateCopyWith<$Res> {
  _$ScheduleCreatedListScreenStateCopyWithImpl(this._value, this._then);

  final ScheduleCreatedListScreenState _value;
  // ignore: unused_field
  final $Res Function(ScheduleCreatedListScreenState) _then;

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
abstract class _$ScheduleCreatedListScreenStateCopyWith<$Res>
    implements $ScheduleCreatedListScreenStateCopyWith<$Res> {
  factory _$ScheduleCreatedListScreenStateCopyWith(
          _ScheduleCreatedListScreenState value,
          $Res Function(_ScheduleCreatedListScreenState) then) =
      __$ScheduleCreatedListScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ScheduleItemModel> schedules});
}

/// @nodoc
class __$ScheduleCreatedListScreenStateCopyWithImpl<$Res>
    extends _$ScheduleCreatedListScreenStateCopyWithImpl<$Res>
    implements _$ScheduleCreatedListScreenStateCopyWith<$Res> {
  __$ScheduleCreatedListScreenStateCopyWithImpl(
      _ScheduleCreatedListScreenState _value,
      $Res Function(_ScheduleCreatedListScreenState) _then)
      : super(_value, (v) => _then(v as _ScheduleCreatedListScreenState));

  @override
  _ScheduleCreatedListScreenState get _value =>
      super._value as _ScheduleCreatedListScreenState;

  @override
  $Res call({
    Object? schedules = freezed,
  }) {
    return _then(_ScheduleCreatedListScreenState(
      schedules: schedules == freezed
          ? _value.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<ScheduleItemModel>,
    ));
  }
}

/// @nodoc

class _$_ScheduleCreatedListScreenState
    implements _ScheduleCreatedListScreenState {
  const _$_ScheduleCreatedListScreenState({this.schedules = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<ScheduleItemModel> schedules;

  @override
  String toString() {
    return 'ScheduleCreatedListScreenState(schedules: $schedules)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScheduleCreatedListScreenState &&
            (identical(other.schedules, schedules) ||
                const DeepCollectionEquality()
                    .equals(other.schedules, schedules)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(schedules);

  @JsonKey(ignore: true)
  @override
  _$ScheduleCreatedListScreenStateCopyWith<_ScheduleCreatedListScreenState>
      get copyWith => __$ScheduleCreatedListScreenStateCopyWithImpl<
          _ScheduleCreatedListScreenState>(this, _$identity);
}

abstract class _ScheduleCreatedListScreenState
    implements ScheduleCreatedListScreenState {
  const factory _ScheduleCreatedListScreenState(
      {List<ScheduleItemModel> schedules}) = _$_ScheduleCreatedListScreenState;

  @override
  List<ScheduleItemModel> get schedules => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ScheduleCreatedListScreenStateCopyWith<_ScheduleCreatedListScreenState>
      get copyWith => throw _privateConstructorUsedError;
}
