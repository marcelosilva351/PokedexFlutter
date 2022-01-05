import 'package:flutter/material.dart';
import 'package:pokedex/Models/Pokemon.dart';
import 'package:pokedex/Pages/Home/ContainerGrid.dart';
import 'package:pokedex/Repository/PokemonRepository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Container(
                width: double.infinity,
                child: Text(
                  "Pokedex",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            ContainerGrid()
          ],
        ),
      ),
    ));
  }
}
