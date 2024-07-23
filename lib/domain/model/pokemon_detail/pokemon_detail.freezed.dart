// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonDetail _$PokemonDetailFromJson(Map<String, dynamic> json) {
  return _PokemonDetail.fromJson(json);
}

/// @nodoc
mixin _$PokemonDetail {
  int get id => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  List<PokemonType> get types => throw _privateConstructorUsedError;
  List<PokemonStat> get stats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonDetailCopyWith<PokemonDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailCopyWith<$Res> {
  factory $PokemonDetailCopyWith(
          PokemonDetail value, $Res Function(PokemonDetail) then) =
      _$PokemonDetailCopyWithImpl<$Res, PokemonDetail>;
  @useResult
  $Res call(
      {int id,
      int height,
      int weight,
      List<PokemonType> types,
      List<PokemonStat> stats});
}

/// @nodoc
class _$PokemonDetailCopyWithImpl<$Res, $Val extends PokemonDetail>
    implements $PokemonDetailCopyWith<$Res> {
  _$PokemonDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? height = null,
    Object? weight = null,
    Object? types = null,
    Object? stats = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokemonStat>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonDetailImplCopyWith<$Res>
    implements $PokemonDetailCopyWith<$Res> {
  factory _$$PokemonDetailImplCopyWith(
          _$PokemonDetailImpl value, $Res Function(_$PokemonDetailImpl) then) =
      __$$PokemonDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int height,
      int weight,
      List<PokemonType> types,
      List<PokemonStat> stats});
}

/// @nodoc
class __$$PokemonDetailImplCopyWithImpl<$Res>
    extends _$PokemonDetailCopyWithImpl<$Res, _$PokemonDetailImpl>
    implements _$$PokemonDetailImplCopyWith<$Res> {
  __$$PokemonDetailImplCopyWithImpl(
      _$PokemonDetailImpl _value, $Res Function(_$PokemonDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? height = null,
    Object? weight = null,
    Object? types = null,
    Object? stats = null,
  }) {
    return _then(_$PokemonDetailImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
      null == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokemonStat>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonDetailImpl implements _PokemonDetail {
  const _$PokemonDetailImpl(this.id, this.height, this.weight,
      final List<PokemonType> types, final List<PokemonStat> stats)
      : _types = types,
        _stats = stats;

  factory _$PokemonDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonDetailImplFromJson(json);

  @override
  final int id;
  @override
  final int height;
  @override
  final int weight;
  final List<PokemonType> _types;
  @override
  List<PokemonType> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final List<PokemonStat> _stats;
  @override
  List<PokemonStat> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  @override
  String toString() {
    return 'PokemonDetail(id: $id, height: $height, weight: $weight, types: $types, stats: $stats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality().equals(other._stats, _stats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      height,
      weight,
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_stats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDetailImplCopyWith<_$PokemonDetailImpl> get copyWith =>
      __$$PokemonDetailImplCopyWithImpl<_$PokemonDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonDetailImplToJson(
      this,
    );
  }
}

abstract class _PokemonDetail implements PokemonDetail {
  const factory _PokemonDetail(
      final int id,
      final int height,
      final int weight,
      final List<PokemonType> types,
      final List<PokemonStat> stats) = _$PokemonDetailImpl;

  factory _PokemonDetail.fromJson(Map<String, dynamic> json) =
      _$PokemonDetailImpl.fromJson;

  @override
  int get id;
  @override
  int get height;
  @override
  int get weight;
  @override
  List<PokemonType> get types;
  @override
  List<PokemonStat> get stats;
  @override
  @JsonKey(ignore: true)
  _$$PokemonDetailImplCopyWith<_$PokemonDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
