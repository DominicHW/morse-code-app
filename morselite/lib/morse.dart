import 'package:torch/torch.dart';
import 'dart:io';

class Morse{

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
      for(int i=0; i<morse.length; i++) {
        String val = morse[i];

        if(val == "."){
          Torch.flash(Duration(milliseconds: 500));
          await Future.delayed(Duration(milliseconds: 500));
        }
        else if (val == "-"){
          Torch.flash(Duration(milliseconds: 1500));
          await Future.delayed(Duration(milliseconds: 1500));
        }
        else if (val == "£"){
          await Future.delayed(Duration(milliseconds: 1500));
        }
        else if (val == " "){
          await Future.delayed(Duration(milliseconds: 3000));
        }

        await Future.delayed(Duration(milliseconds: 500));

      }
    }


}