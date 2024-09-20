# download dependencies
flutter pub get

# generate translations
flutter gen-l10n

# generate boilerplate code (json, mocks, etc)
dart run build_runner build --delete-conflicting-outputs

# sometimes - with changes in flutter version, the images may not match 100%
flutter test --update-goldens

flutter test --coverage
flutter pub run test_cov_console

# generate web distribution code
#flutter build web