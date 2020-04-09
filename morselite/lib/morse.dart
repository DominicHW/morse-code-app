import 'package:torch/torch.dart';

class Morse{

  static bool cancel = false;
  static int unit = 300;

  //each char and equivalent morse code
  static Map<String, String> morseDict = {
    "a" : ".-",
    "b" : "-...",
    "c" : "-.-.",
    "d" : "-..",
    "e" : ".",
    "f" : "..-.",
    "g" : "--.",
    "h" : "....",
    "i" : "..",
    "j" : ".---",
    "k" : "-.-",
    "l" : ".-..",
    "m" : "--",
    "n" : "-.",
    "o" : "---",
    "p" : ".--.",
    "q" : "--.-",
    "r" : ".-.",
    "s" : "...",
    "t" : "-",
    "u" : "..-",
    "v" : "...-",
    "w" : ".--",
    "x" : "-..-",
    "y" : "-.--",
    "z" : "--..",
    "0" : ".----",
    "1" : "..---",
    "2" : "...--",
    "3" : "....-",
    "4" : ".....",
    "5" : "-....",
    "6" : "--...",
    "7" : "---..",
    "8" : "----.",
    "9" : "-----",
    };

    //converts the string to morse code using our dict
    //each letter is followed by a £ so we can differentiate
    //between spaces between words and between letters
    static String stringToMorse(String entry){
      String morse = "";

      for(int i=0; i<entry.length; i++) {
        String letter = entry[i].toLowerCase();

        if(morseDict.containsKey(letter)){
          morse += morseDict[letter];
          morse += "£";
        }
        else if (letter == " "){
          morse += " ";
        }
      }

      print(morse);
      return morse;
    }

    //flashes using the device flashlight for the given morse
    static void flash(String morse) async {
      cancel = false;

      for(int i=0; i<morse.length; i++) {
        String val = morse[i];

        if(cancel){
          break;
        }

        if(val == "."){
          Torch.flash(Duration(milliseconds: unit));
          await pause(unit);
        }
        else if (val == "-"){
          Torch.flash(Duration(milliseconds: 3 * unit));
          await pause(3 * unit);
        }
        else if (val == "£"){
          await pause(3 * unit);
        }
        else if (val == " "){
          await pause(6 * unit);
        }

        await pause(unit);

      }
    }

    static void cancelFlash() async {
      cancel = true;
    }

    static Future<int> pause(int millis) async{
      await Future.delayed(Duration(milliseconds: millis));
      return 1;
    }


}