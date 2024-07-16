import 'package:dio/dio.dart';
import 'package:pokedex/domain/model/pokemon.dart';
import 'package:pokedex/domain/model/pokemon_response.dart';
import 'package:pokedex/foundation/utils/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remote_data_source.g.dart';

@Riverpod(keepAlive: true)
RemoteDataSource remoteDataSource(RemoteDataSourceRef ref) => RemoteDataSource();

class RemoteDataSource {
  RemoteDataSource();

  final Dio dio = Dio();

  String? nextUrl;

  Future<List<Pokemon>> getPokemonList() async {
    final url = nextUrl ?? "${Constants.basePokemonUrl}/?offset=0&limit=150";
    final response = await dio.get(url);
    final data = PokemonResponse.fromJson(response.data);
    nextUrl = data.next;
    return data.results;
  }
}
