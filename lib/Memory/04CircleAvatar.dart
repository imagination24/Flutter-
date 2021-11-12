import 'package:flutter/material.dart';
///CircleAvatar可以实现圆角头像，也可以添加一个子Widget：
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
      child: CircleAvatar(
        radius: 100,
        backgroundImage: NetworkImage("https://i0.hdslb.com/bfs/article/59babed869ed8307ce05c228f3388a8bb32dc43d.jpg@942w_707h_progressive.webp"),
        child: Container(
          alignment: Alignment(0,5),
          width: 200,
          height: 200,
          child: Text("极氪001",style: TextStyle(color: Colors.orange,fontSize: 30),),
        ),
      ),
    );
  }
}



