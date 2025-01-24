import 'package:district_app_flutter/screens/category_list_item/category_list_item_screen.dart';
import 'package:district_app_flutter/screens/home/home_screen.dart';
import 'package:district_app_flutter/screens/splash/spalsh_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => const SplashScreen());
          case 'home':
            return MaterialPageRoute(builder: (context) => const HomeScreen());
          case 'category_list':
            return MaterialPageRoute(builder: (context) => const CategoryListItemScreen());
          default:
            return MaterialPageRoute(builder: (context) => const SplashScreen());
        }
      },
      // home: HomeScreen(),
    );
  }
}
