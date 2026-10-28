import 'dart:ui' show Locale;
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../app/models/app_theme.dart';

part 'app_settings.freezed.dart';

@freezed
abstract class AppSettings with _$AppSettings {
  const factory AppSettings({
    AppTheme? appTheme,
    Locale? locale,
    double? textScale,
  }) = _AppSettings;
}
