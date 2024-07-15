import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/data/remote_data_source.dart';
import 'package:pokedex/domain/model/pokemon.dart';

final getPokemonUseCase = Provider((ref) => GetPokemonUseCase(remoteDataSource: ref.read(remoteDataSource)));

class GetPokemonUseCase {
  GetPokemonUseCase({required this.remoteDataSource});

  final RemoteDataSource remoteDataSource;

  Future<List<Pokemon>> getPokemonList() async {
    return await remoteDataSource.getPokemonList();
  }
}
