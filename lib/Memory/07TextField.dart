import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///keyboardType键盘的类型，style设置样式，textAlign文本对齐方式，maxLength最大显示行数等等；
///
/// decoration：用于设置输入框相关的样式
///
/// icon：设置左边显示的图标
///
/// labelText：在输入框上面显示一个提示的文本
///
/// hintText：显示提示的占位文字
///
/// border：输入框的边框，默认底部有一个边框，可以通过InputBorder.none删除掉
///
/// filled：是否填充输入框，默认为false
///
/// fillColor：输入框填充的颜色
///
/// controller：
///
/// onChanged：监听输入框内容的改变，传入一个回调函数
///
/// onSubmitted：点击键盘中右下角的down时，会回调的一个函数

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
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextFieldDemo(),
        ],
      ),
    );
  }
}
class TextFieldDemo extends StatefulWidget{
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}
var  name="";
class _TextFieldDemoState extends State<TextFieldDemo>{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person,color: Colors.indigo,),
            Text(name,style: TextStyle(fontSize: 20,color: Colors.indigo),),
          ],
        ),
        SizedBox(height: 100,),
        TextField(
          decoration: InputDecoration(
              icon: Icon(Icons.people),
              labelText: "Username",
              hintText: "Please type",
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.indigo),
          onChanged: (value) {
            print("onChanged:$value");
          },
          onSubmitted: (value) {
            print("onSubmitted:$value");
            setState(() {
              name=value;
            });
          },
        ),
        SizedBox(height: 10,),
        TextField(
          decoration: InputDecoration(
              icon: Icon(Icons.people),
              labelText: "Password",
              hintText: "Please type",
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.indigo),
          onChanged: (value) {
            print("onChanged:$value");
          },
        ),
        SizedBox(height: 100,),
        ElevatedButton(
          onPressed: (){
          },
          child: Text("Log in"),
          style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(Size(200, 40)),
              backgroundColor: MaterialStateProperty.all(Colors.indigo)
              ,overlayColor: MaterialStateProperty.all(Colors.indigoAccent),
              shape: MaterialStateProperty.all(StadiumBorder(
                  side: BorderSide(
                      style: BorderStyle.solid,
                      color: Colors.indigo
                  )
              ))
          ),

        )
      ],
    );
  }

}

