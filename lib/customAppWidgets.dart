

import 'package:phone_book/appConstants.dart';
import 'package:flutter/material.dart';

Container buildMyCard(String title, String img, String sub, Color myCardColor, Color myBorderColor){
  return  Container(

      margin:   const EdgeInsets.only(bottom: 20.0),

      decoration: BoxDecoration(

       border: Border.all(
         color: myBorderColor,
         width: 1.5,
       ) ,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(22.0),
            topRight:Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0) ),
        color: myCardColor,

      )

  ,

      child: ListTile(

        leading:  Container(
          padding: const EdgeInsets.all(8.0),
          width: 60,
          height: 70,
      decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(180),
            border: Border.all(color: myBorderColor),
                    ),
          child: Image.asset(img, fit: BoxFit.fill,),
        ),
        title: Text(title, style: const TextStyle(
            fontWeight: FontWeight.bold,
            color:Colors.black87,
        fontSize: 20.0
        ),),
        isThreeLine: false,
        subtitle: sub.isEmpty?null:Text("رقم الهاتف : ${sub}", style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0
        ),) ,
       contentPadding:sub.isNotEmpty?const EdgeInsets.symmetric(horizontal: 5.0): const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      )
  );
}



AppBar phoneAppBar(){
  return AppBar(
    backgroundColor: greenColor,
    title: Text("دليل الهاتف", style: TextStyle(
      color: blackColor,
      fontWeight: FontWeight.bold,

    ),),
    actions: [
      IconButton(onPressed: (){
        print("pressed");
      },
        icon: Icon(Icons.account_circle_outlined, size: 30.0,),
        style: ButtonStyle(
            iconColor: MaterialStatePropertyAll(blackColor),
            iconSize: const MaterialStatePropertyAll(20.0)
        ),
      )
    ],
  );
}