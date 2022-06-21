import 'dart:math';

import 'package:flutter/material.dart';
class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  int i =1;
  int j=1;
  List image_path=[
    "assets/image/1.png",
    "assets/image/2.png",
    "assets/image/3.png",
    "assets/image/4.png",
    "assets/image/5.png",
    "assets/image/6.png"];
  List image_pathh=[
    "assets/image/1.png",
    "assets/image/2.png",
    "assets/image/3.png",
    "assets/image/4.png",
    "assets/image/5.png",
    "assets/image/6.png"];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${j+i+2}",style: TextStyle(fontSize: 40),),
            Container(
                height: 100
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    child: Container(
                      height: 150,
                      width: 150,
                      child: Image.asset(image_path[i]),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    child: Container(
                      height: 150,
                      width: 150,
                      child: Image.asset(image_pathh[j]),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    Random random = Random();
                    setState(() {
                      i = random.nextInt(6);
                      j = random.nextInt(6);
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      height: 50,
                      width: 100,
                      color: Colors.lightBlue,
                      alignment: Alignment.center,
                      child: Text("ROLL DICE"),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}