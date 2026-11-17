import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kukmor_valenki/di/injection.dart';
import 'package:kukmor_valenki/navigation/app_router.dart';
import 'package:order_action/order_action.dart';
import 'package:showcase/showcase.dart';
import 'package:size_guide/size_guide.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const KukmorValenkiApp());
}

class KukmorValenkiApp extends StatefulWidget {
  const KukmorValenkiApp({super.key});

  @override
  State<KukmorValenkiApp> createState() => _KukmorValenkiAppState();
}

class _KukmorValenkiAppState extends State<KukmorValenkiApp> {
  final _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Кукморские валенки',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFFAF9F6),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFC25E34),
          primary: const Color(0xFF2C2D30),
          secondary: const Color(0xFFC25E34),
          surface: const Color(0xFFFAF9F6),
        ),
        fontFamily: 'Roboto',
      ),
      localizationsDelegates: const [
        ...ShowcaseLocalizations.localizationsDelegates,
        ...SizeGuideLocalizations.localizationsDelegates,
        ...OrderActionLocalizations.localizationsDelegates,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ru'),
        Locale('en'),
      ],
      locale: const Locale('ru'),
      routerConfig: _appRouter.config(),
    );
  }
}
