# image_client

A new Flutter project for consuming images and marking them as favorites.

As Image Source - the project uses pixabay.

## Getting Started

1. After downloading the project - set your key from https://pixabay.com/api/docs/ to the env.dart
2. Execute - dart run build_runner build --delete-conflicting-outputs
3. Run the App

## App UI

![App UI](app_ui.png)

The App consists of:

- Home Screen - with the feature to search, go to favorites, go to details on image tab
- Recent Searches Functionality - inside the home search field
- Favorites Screen - very similar to Home with focus on fav images
- Details Screen - Bigger view and more details about the image. Feature - add/remove from fav.

## App Architecture

![App Architecture](architecture.png)

The app's code is organized in layers

- Data Access - Wrappers for the Information Sources - external to the App and - the Flutter Engine
- Repositories - Wrapper for the Data Access - so any exceptions, external (from flutter, or from a
  package) data models are mapped to internal and known objects
- Services - In many cases services are just thin bridge between the view+bloc and the data sources.
  Here is a perfect play for business logic with strict expected input -> output, so they could be wrapped in unit test
- BloCs - Controllers of the state of the screens 
- Local DIs for Blocs 
- Views / Components / Widgets
- Global DI
- Routing
- I18n (execute 'flutter gen-l10n' after each translation change (in lib/l10n/*.arb))

The code structure is inspired by the [Rx Bloc](https://pub.dev/packages/rx_bloc) ecosystem with few
replacements for less code generation and simplicity.

- [GetIt](https://pub.dev/packages/get_it) is used for DI instead
  of [provider](https://pub.dev/packages/provider)
- [BloC](https://pub.dev/packages/bloc)  is used instead of
  the [flutter_rx_bloc](https://pub.dev/packages/flutter_rx_bloc)
- it uses [freezed](https://pub.dev/packages/freezed) for from/to json, equals, copyWith
- Navigator 1.0 - instead of [go_router](https://pub.dev/packages/go_router)
- ...

## Testing

The Project includes samples for

- [Widget Tests](https://github.com/tomavelev/image_client/tree/master/test/widget_tests) - for testing the presence in the tree - the UI elements you are building.
- [Golden Tests](https://github.com/tomavelev/image_client/tree/master/test/golden_tests) - test pixel perfect designs
- [Unit Tests](https://github.com/tomavelev/image_client/tree/master/test/unit_tests) - test small functionality that has strict input-output requirements. Great Examples
  may be - calculations, encryption, etc
- [BloC Tests](https://github.com/tomavelev/image_client/tree/master/test/bloc_tests) - In many cases the business logic is hard to be extracted as Services. Bloc tests -
  verify expected state of **BlocState** during/before/after BloC Events.

