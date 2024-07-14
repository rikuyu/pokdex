import 'package:dio/dio.dart';
import 'package:pokedex/domain/model/pokemon_response.dart';
import 'package:pokedex/foundation/utils/constants.dart';

class RemoteDataSource {
  final Dio dio = Dio();

  Future<PokemonResponse> getPokemonList() async {
    final response = await dio.get(Constants.basePokemonUrl);
    return PokemonResponse.fromJson(response.data);
  }
}
