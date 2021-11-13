import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home : Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Echo",style: TextStyle(color: Colors.white70)),
            backgroundColor: Colors.indigo,
          ),
          body: const ContentBody(),
        )
    );
  }
}
class ContentBody extends StatelessWidget {
  const ContentBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Icon(Icons.pets,color: Colors.indigo,),
      alignment: Alignment.centerRight,
      widthFactor: 40,
      heightFactor: 0,
    );
  }
}



