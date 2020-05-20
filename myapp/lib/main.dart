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
        child: Image(
          image: AssetImage('assets/leaves.jpg'),
          //image: NetworkImage('https://images.pexels.com/photos/3636074/pexels-photo-3636074.jpeg?cs=srgb&dl=jasny-lekki-relaks-niebieski-3636074.jpg&fm=jpg'))
        )
        ),
    floatingActionButton: FloatingActionButton(
      onPressed: null,
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