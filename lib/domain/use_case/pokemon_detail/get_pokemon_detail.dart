import 'package:pokedex/data/remote_data_source.dart';
import 'package:pokedex/domain/model/pokemon_detail/pokemon_detail.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_pokemon_detail.g.dart';

@riverpod
GetPokemonDetail getPokemonDetail(GetPokemonDetailRef ref) => GetPokemonDetail(ref.watch(remoteDataSourceProvider));

class GetPokemonDetail {
  const GetPokemonDetail(this.remoteDataSource);

  final RemoteDataSource remoteDataSource;

  Future<PokemonDetail> call(int id) => remoteDataSource.getPokemonDetail(id);
}
