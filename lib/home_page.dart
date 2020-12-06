import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final myStyle = TextStyle(fontSize: 25, color: Colors.amber[900]);
  final numberStyle = TextStyle(fontSize: 25, color: Colors.deepPurple[900]);

  TextEditingController tec1 = TextEditingController();
  TextEditingController tec2 = TextEditingController();
  int sum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Suma de dos números'),
         centerTitle: true,
       ),
       body: Container(
         child: Column(
           children: <Widget>[
             Row(
               children: <Widget>[
                 SizedBox(width: 30),
                 Text('Valor 1:', style: myStyle),
                 Flexible(
                   child: TextField(
                     style: TextStyle(fontSize: 25),
                     controller: tec1,
                   ) 
                 )
               ],
             ),
             Row(
               children: <Widget>[
                 SizedBox(width: 30),
                 Text('Valor 2:', style: myStyle),
                 Flexible(
                   child: TextField(
                     style: TextStyle(fontSize: 25),
                     controller: tec2,
                   ) )
               ],
             ),
             Divider(),
             Text('Resultado', style: myStyle),
             Text('$sum', style: numberStyle)             
           ],
         ),
       ),
       floatingActionButton: Row(
         children: <Widget>[
           SizedBox(width: 30),
           FloatingActionButton(
             child: Icon(Icons.exposure_zero),
             onPressed: cero
           ),
           Expanded(child: SizedBox()),
           FloatingActionButton(
             child: Icon(Icons.add),
             onPressed: suma
           )
         ],
       ),
    );
  }

  suma() {
    setState(() {
      int numA = int.parse(tec1.text);
      int numB = int.parse(tec2.text);
      sum = numA + numB;
    });
  }

  void cero() {
    setState(() {
      tec1.text = '';
      tec2.text = '';
      sum = 0;
    });
  }
}