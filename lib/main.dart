import 'package:flutter/material.dart';
import 'package:muzica/models/playlist_provider.dart';
import 'package:muzica/pages/home_page.dart';
import 'package:muzica/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    // ChangeNotifierProvider(
    //   create: (context) => ThemeProvider(),
    //   child: const MyApp(),
    // ),
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PlaylistProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
