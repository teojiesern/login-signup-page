import 'package:flutter/material.dart';
import 'package:black_catus/services/input.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/forest-view.png"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Image.network(
                'https://cdn.pixabay.com/animation/2022/12/05/15/23/15-23-06-837_512.gif',
                width: 100,
                height: 100),
            SizedBox(height: 25),
            Text(
              "Welcome On Board!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Let's reduce our carbon footprint!!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            InputField(
                borderRadius: 100,
                color: 0xffFFFBEB,
                opacity: 0.7,
                message: "Enter your full name"),
            InputField(
                borderRadius: 100,
                color: 0xffFFFBEB,
                opacity: 0.7,
                message: "Enter your email"),
            InputField(
                borderRadius: 100,
                color: 0xffFFFBEB,
                opacity: 0.7,
                message: "Enter password"),
            InputField(
                borderRadius: 100,
                color: 0xffFFFBEB,
                opacity: 0.7,
                message: "Confirm password"),
            SizedBox(height: 25),
            TextButton(
              onPressed: () {},
              child: Text(
                "SIGN UP",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Color(0xffE1EEDD), fixedSize: Size(280, 60)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pushReplacementNamed(context, "/login");
                      });
                    },
                    child: Text("LOGIN"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
