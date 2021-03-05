import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'HomePage.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Hero(
                        tag: "GTB",
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: SpinKitRotatingPlain(
                                  color: Colors.white,
                                  size: 10,
                                ),
                              ),
                              Text(
                                "GTBank",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            border:
                                Border.all(color: Colors.deepOrange, width: 5),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Text(
                          "Guaranty Trust Bank",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                            fontSize: 6,
                          ),
                        ),
                      ),
                    ],
                  ),
                  DropdownMenuItem(
                    onTap: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/nigeria.png",
                          height: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Nigeria"),
                        Icon(Icons.arrow_drop_down_outlined,
                            color: Colors.black38)
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 100),
                child: Text(
                  "Welcome Back!",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.65)),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Customer ID"),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.verified_user_outlined),
                        labelText: "12 digit ID"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Password"),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixText: "Show",
                      suffixStyle:
                          TextStyle(fontSize: 10, color: Colors.black54),
                      prefixIcon: Icon(Icons.lock_outline),
                      labelText: "Your password",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "forgot Password",
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.black54,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  FlatButton(
                    height: 50,
                    color: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sign in",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(Icons.arrow_forward, color: Colors.white)
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FlatButton(
                    height: 50,
                    color: Colors.black.withOpacity(0.04),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Quick Top-Up",
                          style: TextStyle(color: Colors.black54),
                        ),
                        Icon(Icons.arrow_forward, color: Colors.black54)
                      ],
                    ),
                    onPressed: () {},
                  )
                ],
              ),
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/fingerprint.png",
                      height: 50,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Sign in",
                      style: TextStyle(
                        color: Colors.deepOrange,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Switch to mwallet",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        decoration: TextDecoration.underline),
                  ),
                  Text(
                    "Create an account",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        decoration: TextDecoration.underline),
                  ),
                  Text(
                    "Get help",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        decoration: TextDecoration.underline),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
