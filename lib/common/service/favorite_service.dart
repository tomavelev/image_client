class FavoriteService {
  //ideally this would be some data storage. Lets keep it short.
  final Set<int> _favorites = {};

  Future<bool> isFavorite(int id) async {
    await Future.delayed(const Duration(seconds: 1));
    return _favorites.contains(id);
  }

  Future<bool> add(int id) async {
    await Future.delayed(const Duration(seconds: 1));
    return _favorites.add(id);
  }

  Future<bool> remove(int id) async {
    await Future.delayed(const Duration(seconds: 1));
    return _favorites.remove(id);
  }

  Future<Set<int>> fetch() {
    return Future.value(_favorites);
  }
}
