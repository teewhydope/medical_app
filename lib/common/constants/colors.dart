import 'package:flutter/material.dart';

const Color white = Colors.white;
const Color whiteShade800 = Color(0xFFfefefe);
const Color whiteShade600 = Color(0xFFe2eaf1);

const Color black = Colors.black;
const Color grey = Colors.grey;
Color yellowShade800 = Colors.yellow.shade800;

const Color transparent = Colors.transparent;

const Color primaryColor = Color(0xFF363cc0);
const Color secondaryColor = Color(0xFFf1f5ff);

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}
