import 'package:pokedex/domain/model/data_unit.dart';
import 'package:pokedex/foundation/utils/pokemon_name.dart';

typedef Pokemon = DataUnit;
typedef Berry = DataUnit;

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
  PokemonName.values.forEach((p) {
    if (p.number == id) name = p.nameJa;
  });
  return name;
}
