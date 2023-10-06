import 'package:flutter/material.dart';
import 'package:phone_book/Screens/Auth/loginPage.dart';
import 'package:phone_book/appConstants.dart';

void main(){
  runApp(RegistorPage());
}
class RegistorPage extends StatefulWidget {
  const RegistorPage({Key? key}) : super(key: key);

  @override
  State<RegistorPage> createState() => _RegistorPageState();
}

class _RegistorPageState extends State<RegistorPage> {
  final _formKey2= GlobalKey<FormState>();
  final  _myBorder= OutlineInputBorder(
    borderSide: BorderSide(
      color: greenColor,width: 1.0,
    ),
  );
  bool _passState=false;
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl, // set this property
      child: SafeArea(
        child: Scaffold(
        
          body:  Column(
            children: [
              Expanded(flex: 1,child:
              // Stack(
              //   clipBehavior: Clip.none,
              //   children: [
              //     Container(
              //       decoration: const BoxDecoration(
              //         image: DecorationImage(
              //           image: AssetImage("assets/images/Vector-up-1.png"),
              //           fit: BoxFit.fill
              //         )
              //       ),
              //     ),
              //
              //   ],
              // ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 150,
                  ),
                  Positioned(
                    top: 0.0,
                    child: Container(
                      width: 410.5,
                      height: 170.0,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/Vector-up-2.png"),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  ),
                  Positioned(
                      top:-20,
                      child: Container(
                        height:170,
                        width: 400,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/Vector-up-1.png"),
                                fit: BoxFit.fill
                            )
                        ),
                      ))


                ],
              ),
              ),
              Expanded(
                flex:4,
                child: Form(
                  key: _formKey2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0,),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 45.0,),
                          const Text("أضافة حساب جديد",
                            style: TextStyle(color:Colors.black,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontSize: 30.0),),
                          const SizedBox(height: 30.0,),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "أدحل اسم المستخدم",
                              hintStyle:const TextStyle(
                                  color: Colors.black54
                              ),
                              prefixIcon: Icon(Icons.account_circle,size: 30),
                              prefixIconColor: greenColor,
                              contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                              border: _myBorder,
                              focusedErrorBorder: _myBorder,
                              errorBorder: _myBorder,
                              focusedBorder: _myBorder,
                              enabledBorder: _myBorder,

                            ),
                            validator: (myValue){
                              if (myValue==null || myValue.isEmpty){
                                return "يرجى أدخال اسم المستخدم";
                              }
                              else
                              {
                                return null;
                              }
                            },


                          ),
                          const SizedBox(height: 20.0,),
                          TextFormField(
                            obscureText: !_passState,
                            decoration: InputDecoration(
                              hintText: "أدخل الرمز السري",
                              hintStyle: const TextStyle(
                                  color: Colors.black54
                              ),
                              prefixIcon: const Icon(Icons.password,size: 30),
                              prefixIconColor: greenColor,
                              suffixIcon: IconButton(
                                icon: _passState? const Icon(Icons.remove_red_eye_outlined): Icon(Icons.remove_red_eye_rounded),
                                iconSize: 20,
                                onPressed: (){
                                  _passState=! _passState;
                                  setState(() {

                                  });
                                },
                              ),
                              suffixIconColor: Colors.grey,
                              contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
                              border: _myBorder,
                              errorBorder: _myBorder,
                              focusedBorder: _myBorder,
                              enabledBorder: _myBorder,
                              focusedErrorBorder: _myBorder,


                            ),
                            validator: (myValue){
                              if (myValue==null || myValue.isEmpty){
                                return "يرجى ادخال الرمز السري";
                              }
                              else
                              {
                                return null;
                              }
                            },


                          ),
                          const SizedBox(height: 30.0,),

                          ElevatedButton(
                           onPressed: (){
                             if (_formKey2.currentState!.validate()){
                                // If the form is valid, display a snackbar. In the real world,
                                // you'd often call a server or save the information in a database.
                               showDialog<String>(
                                 barrierDismissible: false,

                                 context: context,
                                 builder: (BuildContext context) => AlertDialog(
                                   content: const Text('تم التسجيل بنجاح',
                                     style: TextStyle(
                                       color: Colors.black,
                                       fontSize: 20.0,
                                       fontWeight: FontWeight.bold
                                     ),
                                     textDirection: TextDirection.rtl,),
                                   actions: <Widget>[

                                     Center(
                                       child: TextButton(
                                         onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                                           return const LoginPage();

                                         })),
                                         child: const Text('OK'),
                                       ),
                                     ),
                                   ],
                                 ),
                               );
                             }

                            },
                            style:  ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  roundBtnBorder
                              ),

                              padding: const MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(vertical: 10.0,horizontal: 50.0)
                              ),

                              backgroundColor:MaterialStatePropertyAll(greenColor),


                            ),

                            child:  Text("حفظ", style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 23.0,
                                color: blackColor
                            ),),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(flex: 1,child:
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(

                  ),
                  Positioned(
                      bottom:0,
                      child: Container(
                        height:138,
                        width: 650,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/Vector-down-2.png"),
                                fit: BoxFit.fill
                            )
                        ),
                      ))
                  ,
                  Positioned(
                      bottom:-10,
                      child: Container(
                        height:130,
                        width: 650,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/Vector-down-3.png"),
                                fit: BoxFit.fill
                            )
                        ),
                      ))


                ],
              ),
              ),
            ],
          ),

        ),
      ),
    );

  }
}
