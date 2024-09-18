class FavoriteService {
  //ideally this would be some data storage. Lets keep it short.
  Set<String> recentSearches = {};

  Future<bool> add(String id) async {
    await Future.delayed(const Duration(seconds: 1));
    return recentSearches.add(id);
  }

  Future<bool> remove(int id) async {
    await Future.delayed(const Duration(seconds: 1));
    return recentSearches.remove(id);
  }

  Future<Set<String>> fetch() {
    return Future.value(recentSearches);
  }
}
