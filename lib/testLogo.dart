import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phone_book/appConstants.dart';

void main(){
  runApp(MyLogo());
}

class MyLogo extends StatelessWidget {
  const MyLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          backgroundColor: greenColor,

        ),
        body:  Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 600,
                  height: 100.0,
                  decoration: const BoxDecoration(
                                          image: DecorationImage(
                          image: AssetImage("assets/images/Vector-up-1.png"),
                          fit: BoxFit.fill
                      )
                  ),
                ),
                Positioned(
                    top:-20,
                    child: Container(
                      height:150,
                      width: 400,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/Vector-up-2.png"),
                              fit: BoxFit.fill
                          )
                      ),
                    ))


              ],
            ),
          ],
        )
      ),
    );
  }
}
