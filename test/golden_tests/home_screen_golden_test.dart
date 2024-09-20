import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:image_client/common/global_di.dart';
import 'package:image_client/common/model/error/generic_error_model.dart';
import 'package:image_client/common/model/pixabay_image.dart';

import 'golden_helper.dart';
import 'home_screen_factory.dart';
import 'models/scenario.dart';

Future<void> main() async {
  GlobalDI.isTest = true;
  await loadAppFonts();
  runGoldenTests([
    generateDeviceBuilder(
      scenario: Scenario(name: 'home_page_empty_test'),
      widget: homeScreenFactory(
        loading: false,
        images: [],
      ),
    ),
    generateDeviceBuilder(
      scenario: Scenario(name: 'home_page_error_test'),
      widget: homeScreenFactory(
        error: GenericErrorModel("Golden test for error"),
        loading: false,
      ),
    ),
    generateDeviceBuilder(
      scenario: Scenario(name: 'home_page_with_data_test'),
      widget: homeScreenFactory(
        loading: false,
        images: [
          const PixabayImage(id: 1, title: '1', previewURL: '1'),
          const PixabayImage(id: 1, title: '1', previewURL: '1'),
        ],
      ),
    ),
    generateDeviceBuilder(
      scenario: Scenario(name: 'home_page_loading_with_data_test'),
      widget: homeScreenFactory(
        loading: true,
        images: [
          const PixabayImage(id: 1, title: '1', previewURL: '1'),
          const PixabayImage(id: 1, title: '1', previewURL: '1'),
        ],
      ),
    ),
    generateDeviceBuilder(
      scenario: Scenario(name: 'home_page_loading_test'),
      widget: homeScreenFactory(
        loading: true,
      ),
    ),
  ]);
}
