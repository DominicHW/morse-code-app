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
      home: MyHomePage(title: 'MorseLite',),
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

  //button texts
  String buttonText = "FLASH IT!";
  String sosText = "SOS";

  //if buttons are currently in use
  bool active = false;
  bool sosActive = false;

  //letter and morse currently being flashed
  String currLetter = "A";
  String currMorse = "..-";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff20243C),

      // App drawer with Morse representations
      drawer: Drawer(
        child: getList()
      ),

      // Top application bar
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color(0xff20243C),
      ),
      
      // Body content of main page
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 250,
              child: TextField(
                style: new TextStyle(color: Colors.white),
                controller: textController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'What do you wanna flash out?',
                  hintStyle: TextStyle(color: Colors.white54),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                  counterStyle: TextStyle(color: Colors.white54)
                ),
                maxLength: 50,
              ),
            ),

            Row(  
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
                // Flash button
                Container(
                  child: RaisedButton(
                    child: Text(buttonText),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
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

                // SOS button
                Container(
                  margin: EdgeInsets.only(left:30),
                  child: RaisedButton(
                    color: Colors.red[700],
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
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

            Container(
              margin: EdgeInsets.only(top:50),
              child: Column(
                children: <Widget>[
                  Text(
                    currLetter,
                    style: TextStyle(
                      fontSize:50
                    ),
                  ),
                  Text(
                    currMorse,
                    style: TextStyle(
                      fontSize:25
                    ),
                  )
                ]
              )
            )
          ],
        ),
      ),
    );
  }

  //takes the entered sentence, converts to morse and flashes
  void startFlash() async {
    //cancels the sos flash if currently active
    if(sosActive){
      cancelSOS();
    }

    String morse = Morse.stringToMorse(textController.text);

    //change the text of the button
    setState(() {
      buttonText = "CANCEL FLASHING";
      active = true;
    });

    List<String> morseWords = morse.split(" ");

    int stringLetter = 0;

    //go through each word in the given string
    for(int i=0; i < morseWords.length; i++) {
      String word = morseWords[i];
      List<String> letters = word.split("£");
      letters.removeLast();

      //go through each letter in the given word, update the letters
      //on screen and flash the current letter
      for(int j=0; j< letters.length; j++) {
        String letter = letters[j];

        if(active == false || letter == " "){
          break;
        }

        updateLetters(textController.text[stringLetter], letter);
        await Morse.flashLetter(letter);

        stringLetter += 1;
      }

      await Morse.pause(3 * 300);
    }

    //changes back to default text etc from before flash
    cancelFlash();
  }

  //flashes sos
  void sosFlash() async {

    //if the string flash is on, stop it
    if(active){
      cancelFlash();
    }

    String sos = "SOS";
    String morse = Morse.stringToMorse(sos);

    setState(() {
      sosActive = true;
      sosText = "CANCEL";
    });

    //tracks what letter we're currently on
    int stringLetter = 0;

    List<String> letters = morse.split("£");
    letters.removeLast();

    //goes through each letter, updates the letter on screen and flashes
    for(int j=0; j< letters.length; j++) {
      String letter = letters[j];

      if(sosActive == false || letter == " "){
        break;
      }

      //update letters on screen and flash
      updateLetters(sos[stringLetter], letter);
      await Morse.flashLetter(letter);
      
      stringLetter += 1;
    }

    //changes back to default text etc from before flash
    cancelSOS();
  }

  //cancels the flash currently in progress
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

  //syncs the letter currently being flashed with one on screen
  void updateLetters(String letter, String morse){
    setState(() {
      currLetter = letter;
      currMorse = morse;
    });
  }
}
