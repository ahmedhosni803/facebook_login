import 'package:facebook/home.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Spacer(
              //   flex: 2,
              // ),
              Container(
                  padding: const EdgeInsetsDirectional.all(25),
                  margin:
                      const EdgeInsetsDirectional.only(top: 150, bottom: 50),
                  // padding: EdgeInsetsDirectional.all(25),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.facebook_rounded,
                        size: 100,
                        color: Colors.white,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            hintText: 'Email Or Phone',
                            hintStyle: TextStyle(fontSize: 25),
                            labelText: 'Email Or Phone',
                            labelStyle:
                                TextStyle(fontSize: 25, color: Colors.white),
                            border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(style: BorderStyle.solid))),
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(fontSize: 25),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(fontSize: 25),
                            labelText: 'Password',
                            labelStyle:
                                TextStyle(fontSize: 25, color: Colors.white),
                            border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(style: BorderStyle.solid))),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        style: TextStyle(fontSize: 25),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        margin: const EdgeInsetsDirectional.only(bottom: 60),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, HomeScreen.routeName);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsetsDirectional.only(
                                    top: 8, bottom: 8, end: 15, start: 15),
                                child: const Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromRGBO(0, 147, 255, 57)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
              // const Spacer(
              //   flex: 1,
              // ),

              Container(
                margin: const EdgeInsetsDirectional.only(top: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Sign Up for Facebook',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Forget Password',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 50,
              // ),
            ],
          ),
        ));
  }
}
