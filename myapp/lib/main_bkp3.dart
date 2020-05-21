/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whales meeting"),
        backgroundColor: Colors.black54,
        centerTitle: true,
        //elevation: 0.0, for flat design
      ),
      body: Container(
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
                mainAxisAlignment: MainAxisAlignment.center,
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
                        "42",
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


          ],
        ),
      ),
    );
  }
}*/