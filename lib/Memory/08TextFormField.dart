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
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FormDemo(),
        ],
      ),
    );
  }
}
class FormDemo extends StatefulWidget{
  @override
  _FormDemoState createState() =>_FormDemoState();
}

class _FormDemoState extends State<FormDemo>{
  final registerFormKey = GlobalKey<FormState>();
  var  username,passsword;
  void registForm(){
    registerFormKey.currentState!.save();
    registerFormKey.currentState!.validate();
    print("username:$username password:$passsword");
  }
  @override
  Widget build(BuildContext context) {
    return Form(
        key: registerFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  icon: Icon(Icons.people),
                  labelText: "name/number"
              ),
              onSaved: (value){
                this.username=value;
              },
              validator: (value){
                if(value!.isEmpty){
                  return "Can't be Null";
                }
                return null;
              },
              autovalidate: true,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: "password"
              ),
              onSaved: (value){
                this.passsword=value;
              },
              validator: (value){
                if(value!.isEmpty){
                  return "Can't be Null";
                }
                return null;
              },
              autovalidate: true,
            ),
            SizedBox(height: 16,),
            Container(
              width: double.infinity,
              height: 44,
              child: RaisedButton(
                color: Colors.indigo,
                child: Text("log in",style: TextStyle(fontSize: 20,color: Colors.white),),
                onPressed: registForm,
              ),
            )
          ],
        )
    );
  }

}


