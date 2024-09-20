# image_client

A new Flutter project for consuming images and marking them as favorites - after being request - Bootstrapped for a day (and a half).

As Image Source the project uses pixabay.

## Getting Started

1. After downloading the project - set your key from https://pixabay.com/api/docs/ to the env.dart
2. Execute - dart run build_runner build
3. Run the App

## App UI

![App UI](app_ui.png)

The App consists of:

- Home Screen - with the feature to search, go to favorites, go to details on image tab
- Favorites Screen - very similar to Home with focus on fav images
- Details Screen - Bigger view and more details about the image. Feature - add/remove from fav.
- (TODO) Recent Searches

## App Architecture

![App Architecture](architecture.png)

The app's code is organized in layers 

- Data Access
- Repositories
- Services
- BloCs
- Local DIs for Blocs
- Views
- Global DI
- Routing
- (TODO) I18n

The organization is inspired by the [Rx Bloc](https://pub.dev/packages/rx_bloc) ecosystem with few replacements.
- [GetIt](https://pub.dev/packages/get_it) is used for DI instead of [provider](https://pub.dev/packages/provider)
- [BloC](https://pub.dev/packages/bloc)  is used instead of the [flutter_rx_bloc](https://pub.dev/packages/flutter_rx_bloc)
- it uses [freezed](https://pub.dev/packages/freezed) for from/to json, equals, copyWith 
- ...

## Testing

The Project includes samples for 
- Widget Tests
- Golden Tests
- Unit Tests
- BloC Tests (TODO)

