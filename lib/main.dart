import 'package:flutter/material.dart';
import 'package:morehub_mobile/screens/login.dart';
import 'package:morehub_mobile/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Morehub Mobile',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.orange,
        ).copyWith(secondary: Colors.orangeAccent),
        ),
        home: const LoginPage(),
      ),
    );
  }
}









