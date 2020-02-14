import 'package:flutter/material.dart';

import 'flavor/config.dart';
import 'home/home.dart';

void main() {
  Config.appFlavor = Flavor.DEVELOPMENT;
  runApp(new Home());
}