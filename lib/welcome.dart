import 'package:dominos_clone_app/carousel.dart';
import 'package:dominos_clone_app/signIn.dart';
import "package:flutter/material.dart";

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue[800],
      //   title: Row(
      //     children: [
      //       Text("Offers"),
      //     ],
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/Welcome.jpg",
              height: 600,
              width: 800,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpForm()),
                    );
                  },
                  label: Text(
                    "Sign-In to Domino's",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
