// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Events _$EventsFromJson(Map<String, dynamic> json) {
  return _Events.fromJson(json);
}

/// @nodoc
class _$EventsTearOff {
  const _$EventsTearOff();

  _Events call({required DateTime eventdate, required String event}) {
    return _Events(
      eventdate: eventdate,
      event: event,
    );
  }

  Events fromJson(Map<String, Object?> json) {
    return Events.fromJson(json);
  }
}

/// @nodoc
const $Events = _$EventsTearOff();

/// @nodoc
mixin _$Events {
  DateTime get eventdate => throw _privateConstructorUsedError;
  String get event => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventsCopyWith<Events> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsCopyWith<$Res> {
  factory $EventsCopyWith(Events value, $Res Function(Events) then) =
      _$EventsCopyWithImpl<$Res>;
  $Res call({DateTime eventdate, String event});
}

/// @nodoc
class _$EventsCopyWithImpl<$Res> implements $EventsCopyWith<$Res> {
  _$EventsCopyWithImpl(this._value, this._then);

  final Events _value;
  // ignore: unused_field
  final $Res Function(Events) _then;

  @override
  $Res call({
    Object? eventdate = freezed,
    Object? event = freezed,
  }) {
    return _then(_value.copyWith(
      eventdate: eventdate == freezed
          ? _value.eventdate
          : eventdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EventsCopyWith<$Res> implements $EventsCopyWith<$Res> {
  factory _$EventsCopyWith(_Events value, $Res Function(_Events) then) =
      __$EventsCopyWithImpl<$Res>;
  @override
  $Res call({DateTime eventdate, String event});
}

/// @nodoc
class __$EventsCopyWithImpl<$Res> extends _$EventsCopyWithImpl<$Res>
    implements _$EventsCopyWith<$Res> {
  __$EventsCopyWithImpl(_Events _value, $Res Function(_Events) _then)
      : super(_value, (v) => _then(v as _Events));

  @override
  _Events get _value => super._value as _Events;

  @override
  $Res call({
    Object? eventdate = freezed,
    Object? event = freezed,
  }) {
    return _then(_Events(
      eventdate: eventdate == freezed
          ? _value.eventdate
          : eventdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Events implements _Events {
  const _$_Events({required this.eventdate, required this.event});

  factory _$_Events.fromJson(Map<String, dynamic> json) =>
      _$$_EventsFromJson(json);

  @override
  final DateTime eventdate;
  @override
  final String event;

  @override
  String toString() {
    return 'Events(eventdate: $eventdate, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Events &&
            const DeepCollectionEquality().equals(other.eventdate, eventdate) &&
            const DeepCollectionEquality().equals(other.event, event));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(eventdate),
      const DeepCollectionEquality().hash(event));

  @JsonKey(ignore: true)
  @override
  _$EventsCopyWith<_Events> get copyWith =>
      __$EventsCopyWithImpl<_Events>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventsToJson(this);
  }
}

abstract class _Events implements Events {
  const factory _Events({required DateTime eventdate, required String event}) =
      _$_Events;

  factory _Events.fromJson(Map<String, dynamic> json) = _$_Events.fromJson;

  @override
  DateTime get eventdate;
  @override
  String get event;
  @override
  @JsonKey(ignore: true)
  _$EventsCopyWith<_Events> get copyWith => throw _privateConstructorUsedError;
}
