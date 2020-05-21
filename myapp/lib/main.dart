import 'package:flutter/material.dart';
import 'quote.dart';

Color a = Colors.white;
Color b = Colors.black54;
void main(List<String> args) => runApp(MaterialApp(
  title: "Lukas App",
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<int> iconNumber = [1,2,3];
  int _level = 42;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whales meeting"),
        backgroundColor: Colors.black87,
        centerTitle: true,
        //elevation: 0.0, for flat design
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.black87,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClipOval(child:Container(
                    height: 150,
                    width: 150,
                    color: Colors.grey,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image.asset("assets/leaves.jpg")
                      )
                  ),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(Icons.wb_iridescent,color: Colors.cyan),Icon(Icons.wb_iridescent,color: Colors.cyan),Icon(Icons.wb_iridescent,color: Colors.cyan),Icon(Icons.wb_iridescent,color: Colors.cyan),
                  Icon(Icons.wb_iridescent,color: Colors.cyan),Icon(Icons.wb_iridescent,color: Colors.cyan),Icon(Icons.wb_iridescent,color: Colors.cyan),Icon(Icons.wb_iridescent,color: Colors.cyan),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.label_important,
                    size: 50,
                    color: Colors.cyan
                  ),
                ),
                Container(
                 child: Text(
                   "Level:", 
                   textAlign: TextAlign.center, 
                   style: TextStyle(
                     fontFamily: "LobsterTwo",
                     fontSize: 30,
                     color: Colors.white,
                   ), ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "$_level",
                        style: TextStyle(
                          color: Colors.white,
                           fontSize: 25,
                           fontFamily: "LobsterTwo",
                           )
                      ),
                    ),
                  )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.email,
                    size: 40,
                    color: Colors.cyan
                  ),
                ),
                Container(
                  child: Text(
                    "turbolukas3002@gmail.com", 
                    textAlign: TextAlign.center, 
                    style: TextStyle(
                      fontFamily: "LobsterTwo",
                      fontSize: 30,
                      color: Colors.white,
                    ), ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.phone_android,
                    size: 40,
                    color: Colors.cyan
                  ),
                ),
                Container(
                 child: Text(
                   "608398229", 
                   textAlign: TextAlign.center, 
                   style: TextStyle(
                     fontFamily: "LobsterTwo",
                     fontSize: 30,
                     color: Colors.white,
                   ), ),
                  )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: iconNumber.map((i) {
                  return IconButton(
                    icon: Icon(Icons.insert_emoticon, color: Colors.cyan), 
                    onPressed: (){
                      setState(() {
                        iconNumber.add(1);}
                        );
                      },
                    );
                }).toList()
                )
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: (){
                    setState(() {
                      _level +=1;
                    });
                  },
                  color: Colors.cyan,
                  child: Text("Level augmentation", style: TextStyle(color: Colors.white),),
                ),
                RaisedButton.icon(
                  color: Colors.pink,
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
                      );
                  }, 
                  icon: Icon(
                    Icons.navigate_next, 
                    color: Colors.white,
                    ),
                  label: Text(
                    "Next",
                    style: TextStyle(
                      color: Colors.white
                    ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Row(
          children: <Widget>[
            Text("Sceond Page",
            style: TextStyle(
              color: Colors.white
            ),),
          ],
        ),
        
      ),
      body: Container(
      padding: EdgeInsets.all(20),
       color: Colors.black87,
       child: Column(
         children: <Widget>[
           Center(
             child: ClipRRect(
               child: Container(
                 width: 200,
                 height: 200,
                 child: FittedBox(
                   fit: BoxFit.fill,
                   child: Image.asset("assets/leaves.jpg")
                 ),
               )
             )
           ),
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 RaisedButton.icon(onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdPAge()),
                        );
                 }, icon: Icon(Icons.gps_not_fixed, color: Colors.white,), label: Text("Third", style: TextStyle( fontFamily: "LobsterTwo", color: Colors.white),), color: Colors.pink,)
               ],
             ),
           ),
           /*Container(
             child: Padding(
               padding: const EdgeInsets.all(30.0),
               child: FloatingActionButton(
                 onPressed: (){Navigator.pop(context);},
                 backgroundColor: Colors.cyan,
                 child: Icon(Icons.offline_bolt, color: Colors.white,)
                 ),
             ),
           ),*/
         ],
       ), 
      ),
    );
  }
}

class ThirdPAge extends StatefulWidget {
  @override
  _ThirdPAgeState createState() => _ThirdPAgeState();
}

class _ThirdPAgeState extends State<ThirdPAge> {

  List<Quote> quotes = [
    Quote('Value your time ro someone else will value it for you', 'Unknown'),
    Quote('If you want to keep your employers coming to work, keep them poor', 'Rich Dad'),
    Quote('Future starts today, not tomorrow', 'John Paul II')
  ];

  Widget buildCard(Quote){
    return Card(
      color: Colors.cyan,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
          Text(
            '"'+Quote.text+'"',
            style: TextStyle(
              fontFamily: "LobsterTwo",
              color: a,
              fontSize: 20,
            ),
          ),
          SizedBox(
           height: 5, 
          ),
            Text(
            " - "+Quote.author,
            style: TextStyle(
              fontFamily: "LobsterTwo",
              color: a,
              fontSize: 20,
            ),
          ),
        
          ]
        ),
      )
    );
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("ThirdPage"),
      ),
      backgroundColor: b,
      body: Container(
        color: b,
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: quotes.map((q) => buildCard(q)).toList() 
          ),
        ),

      ),
    );
  }
}

