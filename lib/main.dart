import 'package:flutter/material.dart';
import 'package:flutter_material_design/src/theme/app_theme.dart';
import 'package:provider/provider.dart';

import 'notifiers/app_state_notifier.dart';
import 'modules/home_view.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => AppStateNotifier(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appStateNotifier = Provider.of<AppStateNotifier>(context);

    return MaterialApp(
      title: 'Material Design',
      theme: AppTheme.lightTheme.copyWith(useMaterial3: appStateNotifier.isM3),
      darkTheme:
          AppTheme.darkTheme.copyWith(useMaterial3: appStateNotifier.isM3),
      home: const MyHomePage(title: 'Material'),
      themeMode: appStateNotifier.isDarkMode ? ThemeMode.dark : ThemeMode.light,
    );
  }
}
