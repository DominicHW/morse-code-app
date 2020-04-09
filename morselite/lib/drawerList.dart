import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

// App drawer, contains the Morse code translations of alphanumeric chars (a-z0-9)
ListView getList(){
 return ListView(
          // Remove padding from ListVIew
          padding: EdgeInsets.zero,
          children: <Widget>[
            // Drawer Header, wrapped in container
            Container(
              height: 90.0,
              child: DrawerHeader(
                child: Text(
                  'Morse Code Symbols', 
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    )
                  ),
                decoration: BoxDecoration(
                  color: Color(0xff20243C),
                ),
              ),
            ),
            
            ListTile(title: Text('LETTERS', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),

            // LETTERS: Morse code text tiles, press on each tile to copy the Morse
            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('A: .-'), onTap: () {Clipboard.setData(new ClipboardData(text: ".-")); showToast();}),),
                Expanded(child: ListTile(title: Text('B: -...'), onTap: () {Clipboard.setData(new ClipboardData(text: "-...")); showToast();}),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('C: -.-.'), onTap: () {Clipboard.setData(new ClipboardData(text: "-.-.")); showToast();}),),
                Expanded(child: ListTile(title: Text('D: -..'), onTap: () {Clipboard.setData(new ClipboardData(text: "-..")); showToast();}),),
              ],
            ),
            
            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('E: .'), onTap: () {Clipboard.setData(new ClipboardData(text: ".")); showToast();}),),
                Expanded(child: ListTile(title: Text('F: ..-.'), onTap: () {Clipboard.setData(new ClipboardData(text: "..-.")); showToast();}),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('G: --.'), onTap: () {Clipboard.setData(new ClipboardData(text: "--.")); showToast();}),),
                Expanded(child: ListTile(title: Text('H: ....'), onTap: () {Clipboard.setData(new ClipboardData(text: "....")); showToast();}),),
              ],
            ),
            
            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('I: ..'), onTap: () {Clipboard.setData(new ClipboardData(text: "..")); showToast();}),),
                Expanded(child: ListTile(title: Text('J: .---'), onTap: () {Clipboard.setData(new ClipboardData(text: ".---")); showToast();}),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('K: -.-'), onTap: () {Clipboard.setData(new ClipboardData(text: "-.-")); showToast();}),),
                Expanded(child: ListTile(title: Text('L: .-..'), onTap: () {Clipboard.setData(new ClipboardData(text: ".-..")); showToast();}),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('M: --'), onTap: () {Clipboard.setData(new ClipboardData(text: "--")); showToast();}),),
                Expanded(child: ListTile(title: Text('N: -.'), onTap: () {Clipboard.setData(new ClipboardData(text: "-.")); showToast();}),),
              ],
            ),


            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('O: ---'), onTap: () {Clipboard.setData(new ClipboardData(text: "---")); showToast();}),),
                Expanded(child: ListTile(title: Text('P: .--.'), onTap: () {Clipboard.setData(new ClipboardData(text: ".--.")); showToast();}),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('Q: --.-'), onTap: () {Clipboard.setData(new ClipboardData(text: "--.-")); showToast();}),),
                Expanded(child: ListTile(title: Text('R: .-.'), onTap: () {Clipboard.setData(new ClipboardData(text: ".-.")); showToast();}),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('S: ...'), onTap: () {Clipboard.setData(new ClipboardData(text: "...")); showToast();}),),
                Expanded(child: ListTile(title: Text('T: -'), onTap: () {Clipboard.setData(new ClipboardData(text: "-")); showToast();}),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('U: ..-'), onTap: () {Clipboard.setData(new ClipboardData(text: "..-")); showToast();}),),
                Expanded(child: ListTile(title: Text('V: ...-'), onTap: () {Clipboard.setData(new ClipboardData(text: "...-")); showToast();}),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('W: .--'), onTap: () {Clipboard.setData(new ClipboardData(text: ".--")); showToast();}),),
                Expanded(child: ListTile(title: Text('X: -..-'), onTap: () {Clipboard.setData(new ClipboardData(text: "-..-")); showToast();}),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('Y: -.--'), onTap: () {Clipboard.setData(new ClipboardData(text: "-.--")); showToast();}),),
                Expanded(child: ListTile(title: Text('Z: --..'), onTap: () {Clipboard.setData(new ClipboardData(text: "--..")); showToast();}),),
              ],
            ),


            ListTile(title: Text('NUMBERS', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),

            // NUMBERS: Morse code text tiles, press on each tile to copy the Morse
            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('0: -----'), onTap: () {Clipboard.setData(new ClipboardData(text: "-----")); showToast();}),),
                Expanded(child: ListTile(title: Text('1: .----'), onTap: () {Clipboard.setData(new ClipboardData(text: ".----")); showToast();}),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('2: ..---'), onTap: () {Clipboard.setData(new ClipboardData(text: "..---")); showToast();}),),
                Expanded(child: ListTile(title: Text('3: ...--'), onTap: () {Clipboard.setData(new ClipboardData(text: "...--")); showToast();}),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('4: ....-'), onTap: () {Clipboard.setData(new ClipboardData(text: "....-")); showToast();}),),
                Expanded(child: ListTile(title: Text('5: .....'), onTap: () {Clipboard.setData(new ClipboardData(text: ".....")); showToast();}),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('6: -....'), onTap: () {Clipboard.setData(new ClipboardData(text: "-....")); showToast();}),),
                Expanded(child: ListTile(title: Text('7: --...'), onTap: () {Clipboard.setData(new ClipboardData(text: "--...")); showToast();}),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('8: ---..'), onTap: () {Clipboard.setData(new ClipboardData(text: "---..")); showToast();}),),
                Expanded(child: ListTile(title: Text('9: ----.'), onTap: () {Clipboard.setData(new ClipboardData(text: "----.")); showToast();}),),
              ],
            ),
          ]
        );
}

void showToast() {
  Fluttertoast.showToast(
        msg: "Morse code copied",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Color(0xff20243C),
        textColor: Colors.white,
        fontSize: 16.0
    );
}
