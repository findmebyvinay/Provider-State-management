import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _counter=0;
  void incrementCounter(){
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider statemanageent"),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("You have pushed button this many time:",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),),
          const SizedBox(height: 20,),
          Text("$_counter",style: TextStyle(
            fontSize: 30,
            color: Colors.blueGrey

          ),),
          ElevatedButton(onPressed: incrementCounter,
           child:Icon(Icons.add,size: 20,)),

           const SizedBox(height: 20,),
           Text("This example is about using stateful widget for state management and its consiquence😊😍",
           style: TextStyle(
            color: Colors.pinkAccent,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic 
           ),)
        ],
      ),
    );
  }
}