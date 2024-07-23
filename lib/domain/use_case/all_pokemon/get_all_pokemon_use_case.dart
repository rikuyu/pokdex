import 'package:pokedex/data/remote_data_source.dart';
import 'package:pokedex/foundation/utils/utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_all_pokemon_use_case.g.dart';

@riverpod
GetAllPokemonUseCase getAllPokemonUseCase(GetAllPokemonUseCaseRef ref) =>
    GetAllPokemonUseCase(remoteDataSource: ref.watch(remoteDataSourceProvider));

class GetAllPokemonUseCase {
  GetAllPokemonUseCase({required this.remoteDataSource});

  final RemoteDataSource remoteDataSource;

  Future<List<Pokemon>> call() => remoteDataSource.getPokemonList();
}
