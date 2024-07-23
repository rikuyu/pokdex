import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/model/data_unit/data_unit.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@freezed
class ApiResponse with _$ApiResponse {
  const factory ApiResponse({
    String? next,
    String? previous,
    required List<DataUnit> results,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, dynamic> json) => _$ApiResponseFromJson(json);
}
