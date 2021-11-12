import 'package:flutter/material.dart';
///ClipOval也可以实现圆角头像，而且通常是在只有头像时使用
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
    return Center(
        child: ClipOval(
          child: Image.network("https://i0.hdslb.com/bfs/article/59babed869ed8307ce05c228f3388a8bb32dc43d.jpg@942w_707h_progressive.webp",width: 100,height: 100,),
        )
    );
  }
}



