import 'package:app_pedidos_surtimasas/src/login/login_page.dart';
import 'package:app_pedidos_surtimasas/src/login/register/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery App Flutter',
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'register': (BuildContext context) => RegisterPage(),
      },
      theme: ThemeData(
        primaryColor: Colors.amber,
        colorScheme: ColorScheme(
          primary: Colors.amber,
          secondary: Colors.amberAccent,
          brightness: Brightness.light,
          onBackground: Colors.grey,
          onPrimary: Colors.grey,
          surface: Colors.grey,
          onSurface: Colors.grey,
          error: Colors.grey,
          onError: Colors.grey,
          onSecondary: Colors.grey,
          background: Colors.grey
        ),
      ),
    );
  }
}
