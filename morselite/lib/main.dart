import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MorseLite',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'MorseLite'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      drawer: Drawer(
        child: ListView(
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
        )
      ),

      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
