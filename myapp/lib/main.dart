import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

void main() => runApp(MaterialApp(
  home: Home(),
  ),  
);

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Helllo World My Guys"),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 255, 0, 0),
      ),
    body: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 100,
          height: 100,
          child: Container(
            color: Colors.blueGrey,
          ),
        ),
        Expanded(child: Container(
          color: Colors.red,
        ),
        ),
      ]),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        print("clicked");
      },
      backgroundColor: Colors.amberAccent,
      child: Text(
        "click",
        style: TextStyle(
          fontFamily: 'LobsterTwo',
          fontStyle: FontStyle.italic,
          color: Colors.black,
        ),
        ),
    ),
    );
  }
}