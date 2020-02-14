import 'package:flutter/material.dart';

enum Flavor {
  DEVELOPMENT,
  PRODUCTION,
}

class Config {

  static Flavor appFlavor;

  //TODO Properties to be configure for App Flavor
  ///******************/
  static String get helloMessage {
    switch (appFlavor) {
      case Flavor.PRODUCTION:
        return 'PRODUCTION';
      case Flavor.DEVELOPMENT:
      default:
        return 'DEVELOPMENT';
    }
  }

  static Icon get helloIcon {
    switch (appFlavor) {
      case Flavor.PRODUCTION:
        return new Icon(Icons.new_releases);
      case Flavor.DEVELOPMENT:
      default:
        return new Icon(Icons.developer_mode);
    }
  }
  ///******************/
}