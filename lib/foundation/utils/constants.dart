class Constants {
  const Constants();

  static const baseUrl = "https://pokeapi.co/api/v2";
  static const imageBaseUrl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites";

  static const pokemonUrl = "$baseUrl/pokemon";

  static const itemUrl = "$baseUrl/item";

  static const berryUrl = "$baseUrl/item?offset=125&limit=64";

  static String getPokemonImage(int index) => "$imageBaseUrl/pokemon/$index.png";

  static String getItemImage(String itemName) => "$imageBaseUrl/items/$itemName.png";

  static String getPagingUrl(String baseUrl, int offset, int limit) => "$baseUrl?offset=$offset&limit=$limit";
}
