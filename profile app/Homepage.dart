import 'package:flutter/material.dart'; //import all the widget to application

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
//can direct select Scaffold then ctrl + . then choose extract widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column( 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("img1.jpg"),radius: 100,
                  ),
                ),
            Divider(height: 80, thickness: 0.2, color: Colors.black, indent: 8, endIndent: 8),
            Row(
              children: [Icon(Icons.people), Text(" NAME",style: TextStyle(fontWeight: FontWeight.bold),
      ),],
            ),
            Row(
              children: [Text("ali bin abu")],
            ),
            Row(children: [Text("")],),
            Row(
              children: [Icon(Icons.email), Text(" EMAIL",style: TextStyle(fontWeight: FontWeight.bold))],
            ),
            Row(
              children: [Text("ali@gmail.com")],
            ),
            Row(children: [Text("")],),
            Row(
              children: [Icon(Icons.thumb_up), Text(" LIKE COUNT",style: TextStyle(fontWeight: FontWeight.bold))],
            ),
            Text(counter.toString()),
            Center(child: ElevatedButton(onPressed:(){setState(() {
              counter++;
            });} ,child: Icon(Icons.thumb_up),),)
            ]),
          ),
        appBar: AppBar(
            title: Text("Profile App"),
            backgroundColor: Color.fromARGB(255, 209, 226, 239),
            foregroundColor: Colors.black,
          ),
      );
  }
}