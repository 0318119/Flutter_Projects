import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/login.png'))),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 50, top: 130),
                child: const Text(
                  "Welcome\nBack",
                  style: TextStyle(
                      fontSize: 33,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: AutofillHints.addressCityAndState,
                      letterSpacing: 5),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.5,
                      right: 35,
                      left: 35),
                  child: const Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.horizontal(),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2.0),
                            )),
                      ),
                      SizedBox(height: 30),
                      TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2.0),
                            ),
                            label: Row(
                              // mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.email,
                                  size: 30,
                                  color: Colors.black,
                                ),
                                Text(
                                  "Enter Your Email Address",
                                  style: TextStyle(
                                      letterSpacing: 2,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2.0)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2.0)),
                            label: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.password,
                                  size: 30,
                                  color: Colors.black,
                                ),
                                Text(
                                  "Enter Your Password",
                                  style: TextStyle(
                                      letterSpacing: 2,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            )),
                      ),
                      Row(
                        children: [
                          Text("Sign in", style: TextStyle()),
                          ButtonBar()
                          // Container(),
                          // CircleAvatar(
                          //   radius: 10,
                          //   child: Icon(Icons.arrow_forward,color: Colors.white,),
                          // ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
