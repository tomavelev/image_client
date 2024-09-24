enum Flavor {
  prod,
  dev,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.prod:
        return 'Image Client';
      case Flavor.dev:
        return 'Image Client Dev';
      default:
        return 'title';
    }
  }

}
