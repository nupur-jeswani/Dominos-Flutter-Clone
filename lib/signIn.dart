// ignore_for_file: deprecated_member_use
import 'package:dominos_clone_app/homepage.dart';
import "package:flutter/material.dart";
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// import 'package:carousel_slider/carousel_slider.dart';


class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  var userName;
  var mno;
  var location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: Form(
            autovalidateMode: AutovalidateMode.always,
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset(
                            "assets/logo.png",
                            height: 80,
                            width: 80,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Sign up into Domino's",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.blueGrey[800],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              icon: Icon(MdiIcons.accountCheck),
                              border: OutlineInputBorder(),
                              labelText: "Enter Name"),
                          onChanged: (value) {
                            userName = value;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return ("Please enter your name");
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              icon: Icon(MdiIcons.phoneDial),
                              border: OutlineInputBorder(),
                              labelText: "Enter Mobile Number"),
                          onChanged: (value) {
                            mno = value;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return ("Please enter your mobilenumber");
                            } else if (value.length != 10) {
                              return ("Please enter correct mobile number");
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              icon: Icon(MdiIcons.mapMarkerRadius),
                              border: OutlineInputBorder(),
                              labelText: "Enter Delivery location"),
                          onChanged: (value) {
                            location = value;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return ("Please enter your address");
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        FloatingActionButton.extended(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState?.save();

                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Homepage(
                                      uname: userName,
                                      mobileNumber: mno,
                                      address: location),
                                ));
                              }
                            },
                            label: Text(
                              "Submit",
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
