import 'package:flutter/material.dart';
import 'package:black_catus/services/input.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/forest-view.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                'https://cdn.pixabay.com/animation/2022/12/05/15/23/15-23-06-837_512.gif',
                width: 100,
                height: 100),
            SizedBox(height: 25),
            Text(
              "Welcome Back!",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            InputField(
                borderRadius: 100,
                color: 0xffFFFBEB,
                opacity: 0.7,
                message: "Enter your email"),
            InputField(
                borderRadius: 100,
                color: 0xffFFFBEB,
                opacity: 0.7,
                message: "Enter your password"),
            SizedBox(height: 25),
            TextButton(
              onPressed: () {},
              child: Text(
                "LOGIN",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Color(0xffE1EEDD),
                fixedSize: Size(280, 60),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pushReplacementNamed(context, "/signup");
                    });
                  },
                  child: Text("SIGN UP"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
