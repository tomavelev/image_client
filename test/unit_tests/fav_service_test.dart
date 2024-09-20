import 'package:flutter_test/flutter_test.dart';
import 'package:image_client/common/service/favorite_service.dart';

void main() {
  late FavoriteService favoriteService;

  setUp(() {
    favoriteService = FavoriteService();
  });

  group('FavoriteService tests', () {
    test('initially empty favorites', () async {
      expect(await favoriteService.fetch(), isEmpty);
    });

    test('add favorite and check if it is in the set', () async {
      expect(await favoriteService.add(1), true);
      expect(await favoriteService.isFavorite(1), true);
    });

    test('remove favorite and check if it is not in the set', () async {
      await favoriteService.add(2);
      expect(await favoriteService.isFavorite(2), true);
      expect(await favoriteService.remove(2), true);
      expect(await favoriteService.isFavorite(2), false);
    });

    test('add multiple favorites and check if they are all in the set', () async {
      await favoriteService.add(3);
      await favoriteService.add(4);
      expect(await favoriteService.fetch(), unorderedEquals([3, 4]));
    });

    test('fetch favorites', () async {
      await favoriteService.add(5);
      final fetchedFavorites = await favoriteService.fetch();
      expect(fetchedFavorites, unorderedEquals({5}));
    });
  });
}