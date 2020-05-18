import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProviderSelf with ChangeNotifier, DiagnosticableTreeMixin {
  /// 主题模式
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  void changeThemeMode() {
    if (_themeMode == ThemeMode.light) {
      _themeMode = ThemeMode.dark;
    } else {
      _themeMode = ThemeMode.light;
    }
    notifyListeners();
  }

  /// 灰度模式
  Color _colorFilter = Colors.transparent;

  Color get colorFilter => _colorFilter;

  void changeColorFilter() {
    if (_colorFilter == Colors.transparent) {
      _colorFilter = Colors.white;
    } else {
      _colorFilter = Colors.transparent;
    }
    notifyListeners();
  }

  /// Makes `Counter` readable inside the devTools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty('themeMode', themeMode));
    properties.add(EnumProperty('colorFilter', _colorFilter));
  }
}
