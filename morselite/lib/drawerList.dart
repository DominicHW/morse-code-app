
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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

            // LETTERS: Morse code text tiles
            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('A: .-')),),
                Expanded(child: ListTile(title: Text('B: -...')),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('C: -.-.')),),
                Expanded(child: ListTile(title: Text('D: -..')),),
              ],
            ),
            
            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('E: .')),),
                Expanded(child: ListTile(title: Text('F: ..-.')),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('G: --.')),),
                Expanded(child: ListTile(title: Text('H: ....')),),
              ],
            ),
            
            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('I: ..')),),
                Expanded(child: ListTile(title: Text('J: .---')),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('K: -.-')),),
                Expanded(child: ListTile(title: Text('L: .-..')),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('M: --')),),
                Expanded(child: ListTile(title: Text('N: -.')),),
              ],
            ),


            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('O: ---')),),
                Expanded(child: ListTile(title: Text('P: .--.')),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('Q: --.-')),),
                Expanded(child: ListTile(title: Text('R: .-.')),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('S: ...')),),
                Expanded(child: ListTile(title: Text('T: -')),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('U: ..-')),),
                Expanded(child: ListTile(title: Text('V: ...-')),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('W: .--')),),
                Expanded(child: ListTile(title: Text('X: -..-')),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('Y: -.--')),),
                Expanded(child: ListTile(title: Text('Z: --..')),),
              ],
            ),


            ListTile(title: Text('NUMBERS', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),

            // NUMBERS: Morse code text tiles
            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('0: -----')),),
                Expanded(child: ListTile(title: Text('1: .----')),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('2: ..---')),),
                Expanded(child: ListTile(title: Text('3: ...--')),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('4: ....-')),),
                Expanded(child: ListTile(title: Text('5: .....')),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('6: -....')),),
                Expanded(child: ListTile(title: Text('7: --...')),),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(child: ListTile(title: Text('8: ---..')),),
                Expanded(child: ListTile(title: Text('9: ----.')),),
              ],
            ),
          ]
        );
}