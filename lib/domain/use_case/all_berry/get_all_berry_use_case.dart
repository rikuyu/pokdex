import 'package:pokedex/data/remote_data_source.dart';
import 'package:pokedex/foundation/utils/utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_all_berry_use_case.g.dart';

@riverpod
GetAllBerryUseCase getAllBerryUseCase(GetAllBerryUseCaseRef ref) =>
    GetAllBerryUseCase(ref.watch(remoteDataSourceProvider));

class GetAllBerryUseCase {
  const GetAllBerryUseCase(this.remoteDataSource);

  final RemoteDataSource remoteDataSource;

  Future<List<Berry>> getAllBerries() async {
    return await remoteDataSource.getAllBerries();
  }
}
