import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:phone_book/appConstants.dart';
import 'package:phone_book/customAppWidgets.dart';


class SearchEmployee extends StatefulWidget {
  final List<String> listOfCities ;
final String lableText;
final String hintText;
  final List<String> phoneNum;
   const SearchEmployee(
       {super.key,  required this.listOfCities,
     required this.phoneNum,
     required this.lableText,
     required this.hintText}
       );


  @override
  State<SearchEmployee> createState() => _SearchEmployeeState();
}
class _SearchEmployeeState extends State<SearchEmployee> {

  final List _empList=[];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: greenColor,
        appBar:phoneAppBar(),
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20.0,),
//  Padding(
//   padding: const EdgeInsets.symmetric(horizontal: 18.0),
//   child:   Text("للبحث عن رقم هاتف الموظف", style: TextStyle(
//
//     color: greenColor,
//
//     fontWeight: FontWeight.bold,
//
//     fontStyle: FontStyle.italic,
//
//     fontSize: 25.0,
//
//   ),),
// ),
//put drop
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(

                  children: [

                    Expanded(
                      flex: 1,
                      child: DropdownSearch<String>.multiSelection(
                        items: widget.listOfCities,

                        dropdownDecoratorProps:  DropDownDecoratorProps(
                          dropdownSearchDecoration: InputDecoration(

                            alignLabelWithHint: true,
                            enabled: true,
                          enabledBorder:  OutlineInputBorder(
                              borderRadius : const BorderRadius.all(
                                  Radius.circular(10.0)),
                              borderSide: BorderSide(
                                  color: greenColor
                              )
                          ),
                          focusedBorder:  OutlineInputBorder(
                              borderRadius : const BorderRadius.all(
                                  Radius.circular(10.0)),
                              borderSide: BorderSide(
                                  color: greenColor
                              )
                          ),
                          contentPadding: const EdgeInsets.all(15.0),
                            //label: Text("Enter Name of Employee", style: TextStyle(color:Colors.green),),
                            labelText: widget.lableText,
                            labelStyle: TextStyle(color: blackColor,
                                fontSize: 20.0),
                            hintText: widget.hintText,
                          ),

                        ),
                        popupProps: PopupPropsMultiSelection.menu(

                          showSearchBox: true,
                      showSelectedItems: true,
                              searchFieldProps:  TextFieldProps(
                              textDirection: TextDirection.rtl,
                              decoration:
                          InputDecoration(
                              enabledBorder:  OutlineInputBorder(
                                  borderRadius : BorderRadius.all(Radius.circular(4.0)),
                                  borderSide: BorderSide(
                                      color: greenColor
                                  )
                              ),
                              focusedBorder:  OutlineInputBorder(
                                  borderRadius : BorderRadius.all(Radius.circular(4.0)),
                                  borderSide: BorderSide(
                                      color: greenColor
                                  )
                              ),
                              //icon: Icon(Icons.search_rounded, color: greenColor,),
                              hintText: "أبحث هنا",
                            hintTextDirection: TextDirection.rtl,
                            hintStyle: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            prefixIcon: const Icon(Icons.search),

                          )
                          ),
                          textDirection: TextDirection.rtl,
                          disabledItemFn: (String s) => s.startsWith('I'),
                        ),

                        onChanged: (x){
                          //x is list of return values

                          if (x.isNotEmpty){
                            _empList.clear();
                            for (int i=0; i< x.length; i++){

                              _empList.insert(0, {"name":"${x[i]}", "number":"${widget.phoneNum[widget.listOfCities.indexOf(x[i])]}",});
                            }
                          }

                          else
                          {
                            _empList.clear();

                          }
                          setState(() {

                          });




                        },

                        selectedItems: const [],

                      ),
                    ),

                  ],
                ),
              ),

// put the result
Expanded(child: Padding(
  padding: const EdgeInsets.all(10.0),
  child:   ListView.builder(

    itemCount:_empList.length ,
    itemBuilder: (context,index){
      return buildMyCard( _empList[index]["name"],
          "assets/images/call.png",
          _empList[index]["number"],
          simYellowColor,
          Colors.yellow.shade600);
    },

    padding: const EdgeInsets.all(10.0),


  ),
))

            ],

          ),
        ),
      ),
    );
  }
}
