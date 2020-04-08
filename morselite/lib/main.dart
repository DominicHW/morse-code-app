import 'package:flutter/material.dart';

import 'package:torch/torch.dart';
import 'morse.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: textController,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'What do you wanna flash out?'
              ),
            ),
            RaisedButton(
              child: Text("FLASH IT!"),
              onPressed: (){
                getFlash();
              })
          ],
        ),
      ),
    );
  }

  //takes the entered sentence, converts to morse and flashes
  void getFlash() async {
    String morse = Morse.stringToMorse(textController.text);
    Morse.flash(morse);
  }
}
