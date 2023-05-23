import 'package:flutter/material.dart';
import 'package:my_app/movie_gallery.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sugestões de Filmes',
      theme: ThemeData(
     
        primarySwatch: Colors.red
      ),
      home: const MovieGallery(),
    );
  }
}

