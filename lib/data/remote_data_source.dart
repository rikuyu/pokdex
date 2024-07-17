import 'package:dio/dio.dart';
import 'package:pokedex/domain/model/api_response.dart';
import 'package:pokedex/foundation/utils/constants.dart';
import 'package:pokedex/foundation/utils/utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remote_data_source.g.dart';

@Riverpod(keepAlive: true)
RemoteDataSource remoteDataSource(RemoteDataSourceRef ref) => RemoteDataSource();

class RemoteDataSource {
  RemoteDataSource();

  final Dio dio = Dio();

  String? nextUrl;

  Future<List<Pokemon>> getPokemonList() async {
    final url = nextUrl ?? "${Constants.pokemonUrl}/?offset=0&limit=150";
    final response = await dio.get(url);
    final data = ApiResponse.fromJson(response.data);
    nextUrl = data.next;
    return data.results;
  }

  Future<List<Berry>> getAllBerries() async {
    final response = await dio.get(Constants.berryUrl);
    final data = ApiResponse.fromJson(response.data);
    return data.results;
  }
}
