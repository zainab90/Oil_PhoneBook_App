import 'package:flutter/material.dart';
import 'package:phone_book/Screens/Auth/loginPage.dart';
import 'package:phone_book/Screens/Search/searchEmployee.dart';
import 'package:phone_book/appConstants.dart';
import 'package:phone_book/customAppWidgets.dart';
import 'package:phone_book/info.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'dart:convert';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(

        appBar: phoneAppBar(),

        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (index){
            setState(() {
              _currentIndex=index;
            });

          },

          items: [
            //home
            SalomonBottomBarItem(icon: const Icon(Icons.home), title: const Text("الصفحة الرئيسية"), selectedColor: greenColor),
            SalomonBottomBarItem(icon: const Icon(Icons.settings), title: const Text("الضبط"), selectedColor: greenColor),

          ],

        ),


        body:<Widget>[
          Container(
            alignment: Alignment.center,
            child: myHomeList(context),
          ),
          Container(
            alignment: Alignment.center,
            child: const InfoPage(),
          ),

        ][_currentIndex],









      ),
    );
  }






}

ListView myHomeList(BuildContext context){
  return     ListView(
    children: [
      Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: greenColor,
            ),
          ),

          Positioned(
              bottom: -30.0,
              left: 10,
              child:

              Container(
                padding: EdgeInsets.all(8.0),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(180),
                  border: Border.all(color: Colors.green),
                ),
                child: Image.asset("assets/images/call.png", fit: BoxFit.fill,),
              )



          )
        ],

      ),
      const SizedBox(height: 50.0,),
      Container(

        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){  List<String> listOfCities = ["Ahmed", "Ali", "Sarah", "Zainab", "Zahraa", "Noor", "Hussain", "Salim", "Abass"
              ];
              List<String> phoneNum=["11","22","33","44"];
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context){
                    return SearchEmployee(listOfCities: listOfCities,
                        phoneNum:phoneNum,
                        lableText: "أبحث عن اسم الموظف",hintText: "أسماء الموظفين");
                  })
              );

              },
              child:  buildMyCard("البحث عن رقم هاتف الموظف",
                  "assets/images/employee.png","",simGreenColor, greenColor),
            ),

            InkWell(
              onTap: (){


                dynamic resp_data='[{"name":"xxx"},{"name":"xxkkkk"}]';
                List listOfRes=jsonDecode(resp_data);
                List listOfNames=[];
                listOfNames= listOfRes.map((item){ return item["name"];}).toList();
                print(listOfNames);


                List<String> listOfCities = ["مكتب الوزير","قسم تقنية المعلومات", "قسم السلامة", "الدائرة القانونية"];
                List<String> phoneNum=["11","22","33","44"];
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context){
                      return SearchEmployee(listOfCities: listOfCities,
                          phoneNum:phoneNum,
                          lableText: "أبحث عن اسم الدائرة / القسم",
                          hintText: "أسماءالدوائر ");

                    })
                );




              },
              child:    buildMyCard("البحث عن رقم هاتف الدائرة","assets/images/building.png","",simGreenColor, greenColor),


            ),

            InkWell(
              onTap: (){
                List<String> listOfCities = ["مكتب الوزير","قسم تقنية المعلومات", "قسم السلامة", "الدائرة القانونية"];
                List<String> phoneNum=["11","22","33","44"];
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context){
                      return SearchEmployee(listOfCities: phoneNum,
                          phoneNum:listOfCities,
                          lableText: "أبحث عن رقم الهاتف",
                          hintText: "أرقام الهواتف ");

                    })
                );


              },
              child:   buildMyCard("البحث عن رقم","assets/images/number-sort.png","",simGreenColor,greenColor),

            )
          ],

        ),
      )





    ],
  );
}
