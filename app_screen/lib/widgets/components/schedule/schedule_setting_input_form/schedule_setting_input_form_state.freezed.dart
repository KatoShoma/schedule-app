// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'schedule_setting_input_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ScheduleSettingInputFormStateTearOff {
  const _$ScheduleSettingInputFormStateTearOff();

  _ScheduleSettingInputFormState call(
      {String taskName = '', String workingTime = '30分'}) {
    return _ScheduleSettingInputFormState(
      taskName: taskName,
      workingTime: workingTime,
    );
  }
}

/// @nodoc
const $ScheduleSettingInputFormState = _$ScheduleSettingInputFormStateTearOff();

/// @nodoc
mixin _$ScheduleSettingInputFormState {
  String get taskName => throw _privateConstructorUsedError;
  String get workingTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleSettingInputFormStateCopyWith<ScheduleSettingInputFormState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleSettingInputFormStateCopyWith<$Res> {
  factory $ScheduleSettingInputFormStateCopyWith(
          ScheduleSettingInputFormState value,
          $Res Function(ScheduleSettingInputFormState) then) =
      _$ScheduleSettingInputFormStateCopyWithImpl<$Res>;
  $Res call({String taskName, String workingTime});
}

/// @nodoc
class _$ScheduleSettingInputFormStateCopyWithImpl<$Res>
    implements $ScheduleSettingInputFormStateCopyWith<$Res> {
  _$ScheduleSettingInputFormStateCopyWithImpl(this._value, this._then);

  final ScheduleSettingInputFormState _value;
  // ignore: unused_field
  final $Res Function(ScheduleSettingInputFormState) _then;

  @override
  $Res call({
    Object? taskName = freezed,
    Object? workingTime = freezed,
  }) {
    return _then(_value.copyWith(
      taskName: taskName == freezed
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String,
      workingTime: workingTime == freezed
          ? _value.workingTime
          : workingTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ScheduleSettingInputFormStateCopyWith<$Res>
    implements $ScheduleSettingInputFormStateCopyWith<$Res> {
  factory _$ScheduleSettingInputFormStateCopyWith(
          _ScheduleSettingInputFormState value,
          $Res Function(_ScheduleSettingInputFormState) then) =
      __$ScheduleSettingInputFormStateCopyWithImpl<$Res>;
  @override
  $Res call({String taskName, String workingTime});
}

/// @nodoc
class __$ScheduleSettingInputFormStateCopyWithImpl<$Res>
    extends _$ScheduleSettingInputFormStateCopyWithImpl<$Res>
    implements _$ScheduleSettingInputFormStateCopyWith<$Res> {
  __$ScheduleSettingInputFormStateCopyWithImpl(
      _ScheduleSettingInputFormState _value,
      $Res Function(_ScheduleSettingInputFormState) _then)
      : super(_value, (v) => _then(v as _ScheduleSettingInputFormState));

  @override
  _ScheduleSettingInputFormState get _value =>
      super._value as _ScheduleSettingInputFormState;

  @override
  $Res call({
    Object? taskName = freezed,
    Object? workingTime = freezed,
  }) {
    return _then(_ScheduleSettingInputFormState(
      taskName: taskName == freezed
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String,
      workingTime: workingTime == freezed
          ? _value.workingTime
          : workingTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ScheduleSettingInputFormState
    implements _ScheduleSettingInputFormState {
  const _$_ScheduleSettingInputFormState(
      {this.taskName = '', this.workingTime = '30分'});

  @JsonKey(defaultValue: '')
  @override
  final String taskName;
  @JsonKey(defaultValue: '30分')
  @override
  final String workingTime;

  @override
  String toString() {
    return 'ScheduleSettingInputFormState(taskName: $taskName, workingTime: $workingTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScheduleSettingInputFormState &&
            (identical(other.taskName, taskName) ||
                const DeepCollectionEquality()
                    .equals(other.taskName, taskName)) &&
            (identical(other.workingTime, workingTime) ||
                const DeepCollectionEquality()
                    .equals(other.workingTime, workingTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(taskName) ^
      const DeepCollectionEquality().hash(workingTime);

  @JsonKey(ignore: true)
  @override
  _$ScheduleSettingInputFormStateCopyWith<_ScheduleSettingInputFormState>
      get copyWith => __$ScheduleSettingInputFormStateCopyWithImpl<
          _ScheduleSettingInputFormState>(this, _$identity);
}

abstract class _ScheduleSettingInputFormState
    implements ScheduleSettingInputFormState {
  const factory _ScheduleSettingInputFormState(
      {String taskName, String workingTime}) = _$_ScheduleSettingInputFormState;

  @override
  String get taskName => throw _privateConstructorUsedError;
  @override
  String get workingTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ScheduleSettingInputFormStateCopyWith<_ScheduleSettingInputFormState>
      get copyWith => throw _privateConstructorUsedError;
}
