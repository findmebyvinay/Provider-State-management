import 'dart:js_interop';

import 'package:flutter/material.dart';

import 'cartpage.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
 List <int> SelectedItem=[];
  @override
  Widget build(BuildContext context) {
    print('reapeated');
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider statemanageent"),
        backgroundColor: Colors.purpleAccent,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));
          },
           icon:Icon(Icons.add_alert,size:30,color: Colors.amber[300],))
        ],
      ),
      body:ListView.builder(
        itemCount: 50,
        itemBuilder: (context,index){
        return ListTile(
          onTap:(){
          //SelectedItem.add(index);
            setState(() {
              if(SelectedItem.isEmpty){
                SelectedItem.add(index);
              }
              else{
                SelectedItem.remove(index);
              }
            });
          }
          ,
          leading: Text('Item $index'),
          trailing: Icon(
            SelectedItem.contains(index)?Icons.favorite:
            Icons.favorite_outline_rounded),

        );
      })
    );
  }
}