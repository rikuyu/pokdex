// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'abstract_pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AbstractPokemon _$AbstractPokemonFromJson(Map<String, dynamic> json) {
  return _AbstractPokemon.fromJson(json);
}

/// @nodoc
mixin _$AbstractPokemon {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbstractPokemonCopyWith<AbstractPokemon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbstractPokemonCopyWith<$Res> {
  factory $AbstractPokemonCopyWith(
          AbstractPokemon value, $Res Function(AbstractPokemon) then) =
      _$AbstractPokemonCopyWithImpl<$Res, AbstractPokemon>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$AbstractPokemonCopyWithImpl<$Res, $Val extends AbstractPokemon>
    implements $AbstractPokemonCopyWith<$Res> {
  _$AbstractPokemonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AbstractPokemonImplCopyWith<$Res>
    implements $AbstractPokemonCopyWith<$Res> {
  factory _$$AbstractPokemonImplCopyWith(_$AbstractPokemonImpl value,
          $Res Function(_$AbstractPokemonImpl) then) =
      __$$AbstractPokemonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$AbstractPokemonImplCopyWithImpl<$Res>
    extends _$AbstractPokemonCopyWithImpl<$Res, _$AbstractPokemonImpl>
    implements _$$AbstractPokemonImplCopyWith<$Res> {
  __$$AbstractPokemonImplCopyWithImpl(
      _$AbstractPokemonImpl _value, $Res Function(_$AbstractPokemonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$AbstractPokemonImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AbstractPokemonImpl implements _AbstractPokemon {
  const _$AbstractPokemonImpl({required this.name, required this.url});

  factory _$AbstractPokemonImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbstractPokemonImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'AbstractPokemon(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbstractPokemonImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AbstractPokemonImplCopyWith<_$AbstractPokemonImpl> get copyWith =>
      __$$AbstractPokemonImplCopyWithImpl<_$AbstractPokemonImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbstractPokemonImplToJson(
      this,
    );
  }
}

abstract class _AbstractPokemon implements AbstractPokemon {
  const factory _AbstractPokemon(
      {required final String name,
      required final String url}) = _$AbstractPokemonImpl;

  factory _AbstractPokemon.fromJson(Map<String, dynamic> json) =
      _$AbstractPokemonImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$AbstractPokemonImplCopyWith<_$AbstractPokemonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
