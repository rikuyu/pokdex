import 'package:pokedex/data/remote_data_source.dart';
import 'package:pokedex/domain/model/pokemon.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_pokemon_use_case.g.dart';

@riverpod
GetPokemonUseCase getPokemonUseCase(GetPokemonUseCaseRef ref) =>
    GetPokemonUseCase(remoteDataSource: ref.watch(remoteDataSourceProvider));

class GetPokemonUseCase {
  GetPokemonUseCase({required this.remoteDataSource});

  final RemoteDataSource remoteDataSource;

  Future<List<Pokemon>> getPokemonList() async {
    return await remoteDataSource.getPokemonList();
  }
}
