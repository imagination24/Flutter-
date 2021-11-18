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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("ECH0",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      body: ListView.builder(
        itemCount: 100,
          itemExtent: 60,
          controller: _controller,
          itemBuilder: (BuildContext context,int index){
            return ListTile(title: Text("item$index"),tileColor: Colors.white38,leading: CircleAvatar(backgroundImage: NetworkImage("https://upload-images.jianshu.io/upload_images/2391067-877d01cd30d6efcb?imageMogr2/auto-orient/strip|imageView2/2/w/522/format/webp"),),);
          }),
      bottomNavigationBar: BottomAppBar(
        color: Colors.indigoAccent,
        shape:CircularNotchedRectangle(),
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
          child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
          ],)
        ),
      ),
      floatingActionButton: FloatingActionButtonDemo(),
      floatingActionButtonLocation: CustomFloatingActionButtonLocation(FloatingActionButtonLocation.centerDocked,0,20),
    );
  }
}

class CustomFloatingActionButtonLocation extends FloatingActionButtonLocation{
  FloatingActionButtonLocation location;
  double offsetX;
  double offsetY;
  CustomFloatingActionButtonLocation(this.location,this.offsetX,this.offsetY);
  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    Offset offset=location.getOffset(scaffoldGeometry);
    return Offset(offset.dx+offsetX, offset.dy+offsetY);
  }

}

class FloatingActionButtonDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white,width: 5),
        borderRadius: BorderRadius.circular(40),
        color: Colors.white
      ),
      child: FloatingActionButton(
        elevation: 1.0,
        backgroundColor: Colors.indigoAccent,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
        onPressed: (){},
      ),
    );
  }

}



