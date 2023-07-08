import 'package:flutter/material.dart';
import 'package:fourth_assignment/2_application/core/services/theme_service.dart';
import 'package:fourth_assignment/2_application/pages/advice/advice_page.dart';
import 'package:fourth_assignment/theme.dart';
import 'package:provider/provider.dart';
import 'package:fourth_assignment/injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode:
              themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          home: Scaffold(
            appBar: AppBar(
              title: const Text('Some App'),
              actions: [
                Switch(
                  value: Provider.of<ThemeService>(context).isDarkModeOn,
                  onChanged: (_) {
                    Provider.of<ThemeService>(context, listen: false)
                        .toggleDarkMode();
                  },
                ),
              ],
            ),
            body: const AdvicePageWrapperProvider(),
          ),
        );
      },
    );
  }
}
