import 'package:classwrk1_flutter/home.dart';
import 'package:classwrk1_flutter/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Login(),
  ));
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios, color: Colors.black))),
        body: Center(
          child: Column(
            children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text("Welcome back!Login with your credentials",
                  style: TextStyle(
                    fontSize: 10,
                  )),
              Padding(
                padding: const EdgeInsets.all(30),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text("Email"),
                    hintText: "abc@gmail.com",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text("Password"),
                    hintText: "********",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              MaterialButton(
                color: Colors.indigoAccent,
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                shape: StadiumBorder(),
                child: Text("Login"),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Signup()));
                  },
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(text: "Dont have an account?"),
                    TextSpan(text: "Signup")
                  ])))
            ],
          ),
        ));
  }
}

