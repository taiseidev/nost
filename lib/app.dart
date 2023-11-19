import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nost/core/i18n/strings.g.dart';
import 'package:nost/core/navigation/router/router.dart';
import 'package:nost/core/res/theme.dart';

final class App extends ConsumerWidget {
  const App({super.key});

  static const appName = 'Nost';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: appName,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      locale: TranslationProvider.of(context).flutterLocale,
      builder: DevicePreview.appBuilder,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      theme: getLightTheme(),
      darkTheme: getDarkTheme(),
    );
  }
}
