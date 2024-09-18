enum Env {
  dev,
  prod;
}

extension EnvExtension on Env {
  String get host => switch (this) {
        Env.dev => 'https://pixabay.com/api/',
        Env.prod => throw Exception("host not set"),
      };

  String get apiKey => switch (this) {
        Env.dev => "", // place your key here
        Env.prod => throw Exception("key not set"),
      };
}
