import 'package:flutter/material.dart';
import 'package:phone_book/Screens/Auth/registorPage.dart';
import 'package:phone_book/Screens/Home/homePage.dart';
import 'package:phone_book/appConstants.dart';

void main(){
  runApp(LoginPage());
}
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey= GlobalKey<FormState>();
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
            body: Column(
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
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0,),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                           const SizedBox(height: 45.0,),
                            const Text("تسجيل دخول", style: TextStyle(color:Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0),),
                            const SizedBox(height: 15.0,),
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
                                contentPadding: EdgeInsets.symmetric(vertical: 20.0),
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

                              if (_formKey.currentState!.validate()) {
                                // If the form is valid, display a snackbar. In the real world,
                                // you'd often call a server or save the information in a database.

                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (BuildContext context){
                                  return const HomePage();
                                })
                              );



                              }

                            },
                              style:  ButtonStyle(
                                padding: const MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(vertical: 10.0,horizontal: 50.0)
                                ),
                           shape: MaterialStatePropertyAll(
    roundBtnBorder
),

                                backgroundColor:MaterialStatePropertyAll(greenColor),
                              ),
                              child:  Text("دخول", style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                                  color: blackColor
                              ),),
                            ),
                            const SizedBox(height: 20.0,),
                            TextButton(
                              onPressed: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                                  return RegistorPage();

                                }));
                              },

                              style:  const ButtonStyle(

                                  foregroundColor: MaterialStatePropertyAll(Colors.black54),

                                  textStyle: MaterialStatePropertyAll(
                                      TextStyle(

                                      )
                                  )

                              ),
                              child:const Text("أضغط هنا لانشاء حساب جديد"),

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
class SnackbarGlobal {
  static GlobalKey<ScaffoldMessengerState> key =
  GlobalKey<ScaffoldMessengerState>();

  static void show(String message) {
    key.currentState!
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }
}