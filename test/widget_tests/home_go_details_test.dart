// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:image_client/common/data_source/image_remote_data_source.dart';
import 'package:image_client/common/env.dart';
import 'package:image_client/common/global_di.dart';
import 'package:image_client/common/model/image_search_response.dart';
import 'package:image_client/common/model/pixabay_image.dart';
import 'package:image_client/common/my_app.dart';
import 'package:image_client/common/views/image_grid_view.dart';
import 'package:image_client/common/views/image_tile.dart';
import 'package:image_client/detail/view/detail_screen.dart';
import 'package:image_client/home/view/home_screen.dart';
import 'package:image_client/main.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'home_go_details_test.mocks.dart';

@GenerateMocks([ImageDataSource])
void main() {
  var env = Env.dev;
  GlobalDI.isTest = true;

  testWidgets('home page test', (WidgetTester tester) async {
    final mockDs = MockImageDataSource();
    GetIt.instance.registerSingleton<ImageDataSource>(mockDs);

    when(mockDs.search(query: ''))
        .thenAnswer((realInvocation) => Future.value(const ImageSearchResponse(
              hits: [
                PixabayImage(id: 1, title: '1', previewURL: "1"),
                PixabayImage(id: 2, title: '2', previewURL: "2"),
              ],
              total: 0,
            )));

    await tester.pumpWidget(MyApp(
      env: env,
    ));
    await tester.pumpAndSettle();

    expect(find.byType(HomeScreen), findsOneWidget);
    expect(find.byType(ImageGridView), findsOneWidget);
    expect(find.byType(ImageTile), findsExactly(2));

    await tester.tap(find.byType(ImageTile).first);
    await tester.pumpAndSettle();

    expect(find.byType(DetailScreen), findsOneWidget);
  });
}
