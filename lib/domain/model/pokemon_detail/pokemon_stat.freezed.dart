// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_stat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonStat _$PokemonStatFromJson(Map<String, dynamic> json) {
  return _PokemonStat.fromJson(json);
}

/// @nodoc
mixin _$PokemonStat {
  @JsonKey(name: "base_stat")
  int get value => throw _privateConstructorUsedError;
  Stat get stat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonStatCopyWith<PokemonStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStatCopyWith<$Res> {
  factory $PokemonStatCopyWith(
          PokemonStat value, $Res Function(PokemonStat) then) =
      _$PokemonStatCopyWithImpl<$Res, PokemonStat>;
  @useResult
  $Res call({@JsonKey(name: "base_stat") int value, Stat stat});

  $StatCopyWith<$Res> get stat;
}

/// @nodoc
class _$PokemonStatCopyWithImpl<$Res, $Val extends PokemonStat>
    implements $PokemonStatCopyWith<$Res> {
  _$PokemonStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? stat = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as Stat,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatCopyWith<$Res> get stat {
    return $StatCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonStatImplCopyWith<$Res>
    implements $PokemonStatCopyWith<$Res> {
  factory _$$PokemonStatImplCopyWith(
          _$PokemonStatImpl value, $Res Function(_$PokemonStatImpl) then) =
      __$$PokemonStatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "base_stat") int value, Stat stat});

  @override
  $StatCopyWith<$Res> get stat;
}

/// @nodoc
class __$$PokemonStatImplCopyWithImpl<$Res>
    extends _$PokemonStatCopyWithImpl<$Res, _$PokemonStatImpl>
    implements _$$PokemonStatImplCopyWith<$Res> {
  __$$PokemonStatImplCopyWithImpl(
      _$PokemonStatImpl _value, $Res Function(_$PokemonStatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? stat = null,
  }) {
    return _then(_$PokemonStatImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as Stat,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonStatImpl implements _PokemonStat {
  const _$PokemonStatImpl(@JsonKey(name: "base_stat") this.value, this.stat);

  factory _$PokemonStatImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonStatImplFromJson(json);

  @override
  @JsonKey(name: "base_stat")
  final int value;
  @override
  final Stat stat;

  @override
  String toString() {
    return 'PokemonStat(value: $value, stat: $stat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonStatImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.stat, stat) || other.stat == stat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, stat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonStatImplCopyWith<_$PokemonStatImpl> get copyWith =>
      __$$PokemonStatImplCopyWithImpl<_$PokemonStatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonStatImplToJson(
      this,
    );
  }
}

abstract class _PokemonStat implements PokemonStat {
  const factory _PokemonStat(
          @JsonKey(name: "base_stat") final int value, final Stat stat) =
      _$PokemonStatImpl;

  factory _PokemonStat.fromJson(Map<String, dynamic> json) =
      _$PokemonStatImpl.fromJson;

  @override
  @JsonKey(name: "base_stat")
  int get value;
  @override
  Stat get stat;
  @override
  @JsonKey(ignore: true)
  _$$PokemonStatImplCopyWith<_$PokemonStatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Stat _$StatFromJson(Map<String, dynamic> json) {
  return _Stat.fromJson(json);
}

/// @nodoc
mixin _$Stat {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatCopyWith<Stat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatCopyWith<$Res> {
  factory $StatCopyWith(Stat value, $Res Function(Stat) then) =
      _$StatCopyWithImpl<$Res, Stat>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$StatCopyWithImpl<$Res, $Val extends Stat>
    implements $StatCopyWith<$Res> {
  _$StatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatImplCopyWith<$Res> implements $StatCopyWith<$Res> {
  factory _$$StatImplCopyWith(
          _$StatImpl value, $Res Function(_$StatImpl) then) =
      __$$StatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$StatImplCopyWithImpl<$Res>
    extends _$StatCopyWithImpl<$Res, _$StatImpl>
    implements _$$StatImplCopyWith<$Res> {
  __$$StatImplCopyWithImpl(_$StatImpl _value, $Res Function(_$StatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$StatImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatImpl implements _Stat {
  const _$StatImpl(this.name);

  factory _$StatImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'Stat(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatImplCopyWith<_$StatImpl> get copyWith =>
      __$$StatImplCopyWithImpl<_$StatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatImplToJson(
      this,
    );
  }
}

abstract class _Stat implements Stat {
  const factory _Stat(final String name) = _$StatImpl;

  factory _Stat.fromJson(Map<String, dynamic> json) = _$StatImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$StatImplCopyWith<_$StatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
