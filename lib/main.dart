import 'package:flutter/material.dart';
import 'package:kukmor_valenki/di/injection.dart';
import 'package:kukmor_valenki/navigation/app_router.dart';

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
      title: 'Кукморские валенки — Настоящая овечья шерсть из Татарстана',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFFAF9F6),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFC25E34), // Крафтовая терракота
          primary: const Color(0xFF2C2D30),
          secondary: const Color(0xFFC25E34),
          surface: const Color(0xFFFAF9F6),
        ),
        fontFamily: 'Roboto',
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
