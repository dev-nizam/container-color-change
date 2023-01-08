import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Color color = Colors.grey;
  // bool redpressed= false;
  // bool greenpressed= false;
  // bool yellowpressed= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(margin: EdgeInsets.all(30),
            height: 200,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color:color
            ),
          ),
          SizedBox(
            height: 100,
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              color=Colors.red;
            });
          },style:ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)) , child: Text("red")),
          ElevatedButton(onPressed: (){
            setState(() {
              color=Colors.green;
            });
          },style:ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)) , child: Text("green")),
          ElevatedButton(onPressed: (){
            setState(() {
              color=Colors.yellowAccent;
            });
          },style:ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.yellowAccent)) , child: Text("yellow")),
        ],
      ),
    );
  }
}
