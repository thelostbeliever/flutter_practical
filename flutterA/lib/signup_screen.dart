import 'package:flutterA/login_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Future.delayed(const Duration(seconds: 0)).then(
                        (value) => Navigator.of(context)
                            .popUntil((route) => route.isFirst),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 40,
                      color: Color(0xff02004E),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 28.0, 0, 0),
                    child: Text(
                      'Hi!',
                      style: TextStyle(color: Color(0xff02004E), fontSize: 42),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                    child: Text(
                      'Create a new account',
                      style: TextStyle(
                          color: Color(0xff9391C7),
                          fontSize: 23,
                          wordSpacing: 3,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 28.0, vertical: 14.0),
                child: Column(
                  children: const [
                    SizedBox(height: 25),
                    TextField(
                      style: TextStyle(color: Color(0xff02004E), fontSize: 22),
                      decoration: InputDecoration(
                          // enabledBorder: UnderlineInputBorder(
                          //   borderSide: BorderSide(
                          //     color: Color(0xff02004E),
                          //     width: 2.0,
                          //   ),
                          // ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff02004E),
                              width: 2.0,
                            ),
                          ),
                          fillColor: Color(0xff02004E),
                          focusColor: Color(0xff02004E),
                          hintText: 'Enter Name'),
                    ),
                    SizedBox(height: 45),
                    TextField(
                      style: TextStyle(color: Color(0xff02004E), fontSize: 22),
                      decoration: InputDecoration(
                          // enabledBorder: UnderlineInputBorder(
                          //   borderSide: BorderSide(
                          //     color: Color(0xff02004E),
                          //     width: 2.0,
                          //   ),
                          // ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff02004E),
                              width: 2.0,
                            ),
                          ),
                          fillColor: Color(0xff02004E),
                          focusColor: Color(0xff02004E),
                          hintText: 'Enter Email'),
                    ),
                    SizedBox(height: 45),
                    TextField(
                      obscureText: true,
                      style: TextStyle(color: Color(0xff02004E), fontSize: 22),
                      decoration: InputDecoration(
                          // enabledBorder: UnderlineInputBorder(
                          //   borderSide: BorderSide(
                          //     color: Color(0xff02004E),
                          //     width: 2.0,
                          //   ),
                          // ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff02004E),
                              width: 2.0,
                            ),
                          ),
                          fillColor: Color(0xff02004E),
                          focusColor: Color(0xff02004E),
                          hintText: 'Enter Password'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              TextButton(
                onPressed: () {},
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      gradient: const LinearGradient(colors: [
                        Color(0xff0500A0),
                        Color(0xff2200CC),
                        Color(0xff3A00EF),
                      ])),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 120.0),
                    child: Text('SIGNUP',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(children: const [
                SizedBox(width: 40),
                Expanded(child: Divider(color: Colors.black)),
                SizedBox(width: 20),
                Text(
                  'or',
                  style: TextStyle(
                      color: Color(0xff02004E),
                      fontSize: 17,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(width: 20),
                Expanded(child: Divider(color: Colors.black)),
                SizedBox(width: 40),
              ]),
              const SizedBox(height: 10),
              const Text(
                'Social Media Signup',
                style: TextStyle(
                    color: Color(0xff9391C7),
                    fontSize: 23,
                    wordSpacing: 3,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: Image.asset('images/google.png', width: 45),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: Image.asset('images/facebook.png', width: 45),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: Image.asset('images/apple.png', width: 45),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(width: 15),
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                        color: Color(0xff9391C7),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () {
                      Future.delayed(const Duration(seconds: 0)).then(
                        (value) => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                          color: Color(0xff3A00EF),
                          fontSize: 18,
                          wordSpacing: 3,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(width: 15),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
