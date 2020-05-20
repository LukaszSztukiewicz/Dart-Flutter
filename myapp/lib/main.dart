import 'package:flutter/material.dart';

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
    body: Center(
        
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        print("clicked");
      },
      backgroundColor: Color.fromARGB(255, 255,2, 20),
      child: Text(
        "click",
        style: TextStyle(
          fontFamily: 'LobsterTwo',
          fontStyle: FontStyle.italic,
        ),
        ),
    ),
    );
  }
}