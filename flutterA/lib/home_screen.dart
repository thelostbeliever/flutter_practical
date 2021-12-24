import 'package:flutterA/login_screen.dart';
import 'package:flutterA/signup_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Image.asset(
                  'images/icon.png',
                  width: 35,
                  height: 35,
                ),
                const SizedBox(width: 5),
                const Text(
                  'SLOPE',
                  style: TextStyle(
                      color: Color(0xFF030548),
                      fontSize: 19,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Image.asset('images/pic.png', width: 300),
          ),
          const Center(
              child: Text(
            'Hello !',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 30,
            ),
          )),
          const SizedBox(height: 5),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
                'Best place to write life stories and share your journey experiences',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.grey.shade700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 5),
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
                child: Text('LOGIN',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    )),
              ),
            ),
          ),
          const SizedBox(height: 5),
          TextButton(
            onPressed: () {
              Future.delayed(const Duration(seconds: 0)).then(
                (value) => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpScreen(),
                  ),
                ),
              );
            },
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff3200E4), width: 3),
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
                // gradient: LinearGradient(
                //     colors: [Colors.blue.shade400, Colors.blue.shade700])
              ),
              child: const Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 115.0),
                child: Text('SIGNUP',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff3200E4),
                    )),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
