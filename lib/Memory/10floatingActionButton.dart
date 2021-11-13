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
      home : ContentBody(),
    );
  }
}
class ContentBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>ContentBodyState();
}
class ContentBodyState extends State<ContentBody>{
  late ScrollController _controller;
  bool isShowTop = false;
  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _controller.addListener(() {
      var tempShowTop = _controller.offset >= 1000;
      if(tempShowTop!= isShowTop){
        setState(() {
          isShowTop=tempShowTop;
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView展示"),
      ),
      body: ListView.builder(
          itemCount: 100,
          itemExtent: 60,
          controller: _controller,
          itemBuilder: (BuildContext context,int index){
            return ListTile(title: Text("item$index"),);
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: !isShowTop?null:FloatingActionButton(
          child: Icon(Icons.arrow_upward),
          tooltip: "返回顶部",
          onPressed: (){
            _controller.animateTo(0, duration: Duration(milliseconds: 1000), curve: Curves.ease);
          }),
    );
  }
}



