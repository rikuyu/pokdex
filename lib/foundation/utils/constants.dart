class Constants {
  const Constants();

  static const baseUrl = "https://pokeapi.co/api/v2";
  static const imageBaseUrl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites";

  final _berryInitialIndex = 126;

  static const basePokemonUrl = "$baseUrl/pokemon";

  static const baseItemUrl = "$baseUrl/item";

  static String getPokemonImage(int index) => "$imageBaseUrl/pokemon/$index.png";

  static String getItemImage(String itemName) => "$imageBaseUrl/items/$itemName.png";
}
