import 'package:dio/dio.dart';

// 1-100までの一覧
// https://pokeapi.co/api/v2/pokemon?offset=0&limit=100
class RemoteDataSource {
  final Dio? dio = Dio();
}
