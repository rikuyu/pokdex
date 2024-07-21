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

  String? nextPokemonUrl;
  String? nextItemUrl;

  int itemInitialCount = 0;

  Future<List<Pokemon>> getPokemonList() async {
    final url = nextPokemonUrl ?? "${Constants.pokemonUrl}?offset=0&limit=150";
    final response = await dio.get(url);
    final data = ApiResponse.fromJson(response.data);
    nextPokemonUrl = data.next;
    return data.results;
  }

  Future<List<Berry>> getAllBerries() async {
    final response = await dio.get(Constants.berryUrl);
    final data = ApiResponse.fromJson(response.data);
    return data.results;
  }

  Future<List<Item>> getAllItems() async {
    final url = switch (itemInitialCount) {
      0 => "${Constants.itemUrl}?offset=0&limit=125",
      1 => "${Constants.itemUrl}?offset=189&limit=123",
      _ => nextItemUrl,
    };
    if (url == null) {
      return [];
    }
    final response = await dio.get(url);
    final data = ApiResponse.fromJson(response.data);
    nextItemUrl = data.next;
    itemInitialCount++;
    return data.results;
  }
}
