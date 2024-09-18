class FavoriteService {
  //ideally this would be some data storage. Lets keep it short.
  Set<int> favorites = {};

  Future<bool> isFavorite(int id) async {
    await Future.delayed(const Duration(seconds: 1));
    return favorites.contains(id);
  }

  Future<bool> add(int id) async {
    await Future.delayed(const Duration(seconds: 1));
    return favorites.add(id);
  }

  Future<bool> remove(int id) async {
    await Future.delayed(const Duration(seconds: 1));
    return favorites.remove(id);
  }

  Future<Set<int>> fetch() {
    return Future.value(favorites);
  }
}
