import 'package:desarrolla_t/habits_page.dart';
import 'package:desarrolla_t/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:desarrolla_t/home_page.dart';
import 'package:desarrolla_t/cale_page.dart';
import 'package:desarrolla_t/newEvent_page.dart';
import 'package:desarrolla_t/info_page.dart';
import 'package:desarrolla_t/editEvent_page.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:desarrolla_t/auth_gate.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
/*
void main() => runApp(MaterialApp(
      title: 'Rutas',
      home: const LoginPage(),
      routes: {
        '/habitpage': (context) => const Habits(),
        '/newpage': (context) => const NewEvent(),
        '/infopage': (context) => const InfoPage(),
        '/editeventpage': (context) => const ModifyEvent(),
        '/calpage': (context) => const TableBasicsExample(),
        '/loginpage' : (context) => const LoginPage(),
        '/homepage': (context) =>
            HomePage(items: List<String>.generate(5, (i) => 'Item $i')),
      },
    ));
*/
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeModel(),
      child: Consumer(builder: (context, ThemeModel themeNotifier, child){
      
        return MaterialApp(
          title: 'Rutas',
          theme: themeNotifier.isDark ? ThemeData.dark() : ThemeData.light(),
          home: const AuthGate(),
          routes: {
            '/habitpage': (context) => const Habits(),
            '/newpage': (context) => const NewEvent(),
            '/infopage': (context) => const InfoPage(),
            '/editeventpage': (context) => const ModifyEvent(),
            '/calpage': (context) => const TableBasicsExample(),
            //'/loginpage' : (context) => const LoginPage(),
            '/loginpage' : (context) => const AuthGate(),
            '/homepage': (context) => const HomePage(),
          },
        ); 
      },),
    );
  }
} 