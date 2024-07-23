import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_unit.freezed.dart';
part 'data_unit.g.dart';

@freezed
class DataUnit with _$DataUnit {
  const factory DataUnit({
    required String name,
    required String url,
  }) = _DataUnit;

  factory DataUnit.fromJson(Map<String, Object?> json) => _$DataUnitFromJson(json);
}
