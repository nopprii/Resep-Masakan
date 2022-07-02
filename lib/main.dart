import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resepmasakapp/screens/resep_screen.dart';
import 'package:resepmasakapp/providers/resep_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ResepProvider>(
          create: (context) => ResepProvider(),
        ),
        ChangeNotifierProvider<ResepDetailProvider>(
          create: (context) => ResepDetailProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Aplikasi Resep Makanan',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ResepScreen(),
      ),
    );
  }
}
