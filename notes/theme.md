## Colours 

https://material.io/design/material-theming/implementing-your-theme.html#color

1. Primary
2. Primary Variant
3. Secondary
4. Secondary Variant
5. Background
6. Surface
7. Error
8. On Primary
9. On Secondary
10. On Background
11. On Surface
12. On Error

# ??=

## Extending a class
```dart
/// Below here are notes
extension CustomColorScheme on ColorScheme {
  Color get success => const Color(0xFF28a745);
  Color get info => const Color(0xFF17a2b8);
  Color get warning => const Color(0xFFffc107);
  Color get danger => const Color(0xFFdc3545);
}
```

## ColorScheme example
```dart
ColorScheme(
  primary: themeLight.colorScheme.primary,
  primaryVariant: themeLight.colorScheme.primaryVariant,
  secondary: themeLight.colorScheme.secondary,
  secondaryVariant: themeLight.colorScheme.secondaryVariant,
  surface: themeLight.colorScheme.surface,
  background: themeLight.colorScheme.background,
  error: themeLight.colorScheme.error,
  onPrimary: themeLight.colorScheme.onPrimary,
  onSecondary: themeLight.colorScheme.onSecondary,
  onSurface: themeLight.colorScheme.onSurface,
  onBackground: themeLight.colorScheme.onBackground,
  onError: themeLight.colorScheme.onError,
  brightness: themeLight.colorScheme.brightness,
)
```

## Color Swatch

```dart
ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.lightBlue[800],
  accentColor: Colors.cyan[600],
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  ),
)
```