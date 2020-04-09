import 'package:flutter/material.dart';
import 'morse.dart';
import 'drawerList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MorseLite',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'MorseLite'),
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
  String buttonText = "FLASH IT!";
  bool active = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App drawer with Morse representations
      drawer: Drawer(
        child: getList()
      ),

      // Top application bar
      appBar: AppBar(
        title: Text(widget.title),
      ),
      
      // Body content of main page
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 250,
              child: TextField(
                controller: textController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'What do you wanna flash out?'
                ),
                maxLength: 50,
              ),
            ),

            Container(
              margin: EdgeInsets.only(top:10),
              child: RaisedButton(
                child: Text(buttonText),
                onPressed: (){
                  if(!active){
                    startFlash();
                  }
                  else{
                    cancelFlash();
                  }
                }
              )
            ),
          ],
        ),
      ),
    );
  }

  //takes the entered sentence, converts to morse and flashes
  void startFlash() async {
    String morse = Morse.stringToMorse(textController.text);

    setState(() {
      buttonText = "CANCEL FLASHING";
      active = true;
    });

    Morse.flash(morse);
  }

  void cancelFlash(){
    Morse.cancelFlash();

    setState(() {
      buttonText = "FLASH IT!";
      active = false;
    });
  }
}
