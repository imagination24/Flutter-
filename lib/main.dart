import 'package:flutter/material.dart';


///ClipRRect用于实现圆角效果，可以设置圆角的大小。
///
/// 实现代码如下，非常简单：
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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(150),
        child: Image.network("https://i0.hdslb.com/bfs/article/59babed869ed8307ce05c228f3388a8bb32dc43d.jpg@942w_707h_progressive.webp",width: 250,height: 250,),
      )
    );
  }
}



