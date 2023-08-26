import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';

/// Contains used constants for doubles, strings and colors.
class App {
  App._();

  // Just a simple way to leave a trace of what version we built the Flutter
  // Web demo with inside the app. Shown on the start screen in the demo,
  // so people testing it don't have to ask. Also info for the About screen.
  static const String appName = 'FlexColorPicker';
  static const String version = '3.3.0';
  static const String packageVersion = 'FlexColorPicker package $version';
  static final Uri packageUri = Uri(
    scheme: 'https',
    host: 'pub.dev',
    path: 'packages/flex_color_picker',
  );
  static const String flutterVersion = 'Channel stable 3.10.6 (canvaskit)';
  static const String copyright = '© 2020 - 2023';
  static const String author = 'Mike Rydstrom';
  static const String license = 'BSD 3-Clause License';
  static const String icon = 'assets/images/app_icon.png';

  // Max width of the body content when used on a wide screen.
  static const double maxBodyWidth = 2100;
  // Min allowed width for the columns, if lower, column count is reduced.
  static const double minColumnWidth = 395;
  // The outline thickness of OutlinedButton and ToggleButtons
  static const double outlineThickness = 1;
  // Border radius for rounded buttons
  static const double borderRadius = 50;

  // Theme Color
  static const Color seedColor = Color(0xFF095D9E);
  static const Color scaffoldBackgroundLight = Color(0xFFFDFDFE);
  static const Color scaffoldBackgroundDark = Color(0xFF070A0C);

  // Some example custom colors for our custom picker.
  static const Color guideNewPrimary = Color(0xFF6200EE);
  static const Color guideNewPrimaryVariant = Color(0xFF3700B3);
  static const Color guideNewSecondary = Color(0xFF03DAC6);
  static const Color guideNewSecondaryVariant = Color(0xFF018786);
  static const Color guideNewError = Color(0xFFB00020);
  static const Color guideNewErrorDark = Color(0xFFCF6679);
  static const Color blueBlues = Color(0xFF174378);
  static const Color clearBlue = Color(0xFF3db5e0);
  static const Color darkPink = Color(0xFFa33e94);
  static const Color redWine = Color(0xFFad0c1c);
  static const Color grassGreen = Color(0xFF3bb87f);
  static const Color moneyGreen = Color(0xFF869962);
  static const Color mandarinOrange = Color(0xFFdb7a25);
  static const Color brightOrange = Color(0xFFff5319);
  static const Color brightGreen = Color(0xFF00ab25);
  static const Color blueJean = Color(0xFF4f75b8);
  static const Color deepBlueSea = Color(0xFF132b80);

  // Add a custom white to black grey scale.
  static const MaterialColor whiteToBlack = MaterialColor(
    0xFF7C7D80, // Set the 500 index value here.
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFE1E2E4),
      200: Color(0xFFC7C8CA),
      300: Color(0xFFACADB0),
      400: Color(0xFF949599),
      500: Color(0xFF7C7D80),
      600: Color(0xFF646567),
      700: Color(0xFF48484A),
      800: Color(0xFF212121),
      900: Color(0xFF000000),
    },
  );

  // Add a custom white to black grey scale.
  static const MaterialColor whiteBlueBlack = MaterialColor(
    0xFF4355B9, // Set the 500 index value here.
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFF0EFFF),
      200: Color(0xFFBAC3FF),
      300: Color(0xFF7789F0),
      400: Color(0xFF5D6FD4),
      500: Color(0xFF4355B9),
      600: Color(0xFF293CA0),
      700: Color(0xFF08218A),
      800: Color(0xFF00105C),
      900: Color(0xFF000000),
    },
  );

  // A custom color swatch, to name map, for the above custom colors.
  static Map<ColorSwatch<Object>, String> get colorsNameMap =>
      <ColorSwatch<Object>, String>{
        ColorTools.createPrimarySwatch(guideNewPrimary): 'Guide Purple',
        ColorTools.createPrimarySwatch(guideNewPrimaryVariant):
            'Guide Purple Variant',
        ColorTools.createAccentSwatch(guideNewSecondary): 'Guide Teal',
        ColorTools.createAccentSwatch(guideNewSecondaryVariant):
            'Guide Teal Variant',
        ColorTools.createPrimarySwatch(guideNewError): 'Guide Error',
        ColorTools.createPrimarySwatch(guideNewErrorDark): 'Guide Error Dark',
        ColorTools.createPrimarySwatch(blueBlues): 'Blue blues',
        ColorTools.createPrimarySwatch(clearBlue): 'Clear blue',
        ColorTools.createPrimarySwatch(darkPink): 'Dark pink',
        ColorTools.createPrimarySwatch(redWine): 'Red wine',
        ColorTools.createPrimarySwatch(grassGreen): 'Grass green',
        ColorTools.createPrimarySwatch(moneyGreen): 'Money green',
        ColorTools.createPrimarySwatch(mandarinOrange): 'Mandarin orange',
        ColorTools.createPrimarySwatch(brightOrange): 'Bright orange',
        ColorTools.createPrimarySwatch(brightGreen): 'Bright green',
        ColorTools.createPrimarySwatch(blueJean): 'Washed jean blue',
        ColorTools.createPrimarySwatch(deepBlueSea): 'Deep blue sea',
        whiteBlueBlack: 'White via Blue to Black',
        whiteToBlack: 'White to black',
      };
}
