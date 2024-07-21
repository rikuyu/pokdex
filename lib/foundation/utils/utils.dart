import 'package:pokedex/domain/model/data_unit.dart';
import 'package:pokedex/foundation/utils/berry_data.dart';
import 'package:pokedex/foundation/utils/pokemon_data.dart';

typedef Pokemon = DataUnit;
typedef Berry = DataUnit;
typedef Item = DataUnit;

int extractIdFromUrl(String url) {
  List<String> parts = url.split('/');
  return int.parse(parts[parts.length - 2]);
}

String formatId(int id) {
  if (id < 1 || id > 999) {
    throw ArgumentError('The id must be within the range of 1 to 999.');
  }
  return '#${id.toString().padLeft(3, '0')}';
}

String getPokemonNameJa(String id) {
  String name = "unknown";
  for (var value in PokemonData.values) {
    if (value.number == id) name = value.nameJa;
  }
  return name;
}

BerryData? getBerryData(Berry b) {
  BerryData? berry;
  for (var value in BerryData.values) {
    if (b.name.replaceFirst("-", "") == value.name.toLowerCase()) berry = value;
  }
  return berry;
}
