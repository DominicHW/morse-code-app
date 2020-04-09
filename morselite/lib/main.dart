import 'package:flutter/material.dart';
import 'morse.dart';
import 'drawerList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MorseLite',
      color: Color(0xff20243C),
      // theme: ThemeData(
      //   primarySwatch: Color(0xff20243C),
      // ),
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
  String sosText = "SOS";

  bool active = false;
  bool sosActive = false;

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

            Row(  
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Container(
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

                Container(
                  child: RaisedButton(
                    onPressed: () {
                      if(sosActive){
                        cancelSOS();
                      }
                      else{
                        sosFlash();
                      }
                    },
                    child: Text(
                      sosText,
                      textAlign: TextAlign.center
                    ),
                  ),
                )
              ]
            ),
          ],
        ),
      ),
    );
  }

  //takes the entered sentence, converts to morse and flashes
  void startFlash() async {

    if(sosActive){
      cancelSOS();
    }

    String morse = Morse.stringToMorse(textController.text);

    setState(() {
      buttonText = "CANCEL FLASHING";
      active = true;
    });

    Morse.flash(morse);
  }

  //flashes sos
  void sosFlash() async {

    if(active){
      cancelFlash();
    }

    String morse = Morse.stringToMorse("SOS");

    setState(() {
      sosActive = true;
      sosText = "CANCEL";
    });

    Morse.flash(morse);
  }

  //cancelrs the flash currently in progress
  void cancelFlash(){
    Morse.cancelFlash();

    setState(() {
      buttonText = "FLASH IT!";
      active = false;
    });
  }

  //cancels the sos flash currently in progress
  void cancelSOS(){
    Morse.cancelFlash();

    setState(() {
      sosActive = false;
      sosText = "SOS";
    });
  }
}
