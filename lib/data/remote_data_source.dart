import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/model/pokemon.dart';
import 'package:pokedex/domain/model/pokemon_response.dart';
import 'package:pokedex/foundation/utils/constants.dart';

final remoteDataSource = Provider((ref) => RemoteDataSource());

class RemoteDataSource {
  final Dio dio = Dio();

  String? nextUrl;

  Future<List<Pokemon>> getPokemonList() async {
    final url = nextUrl ?? Constants.basePokemonUrl;
    final response = await dio.get(url);
    final data = PokemonResponse.fromJson(response.data);
    nextUrl = data.next;
    return data.results;
  }
}
