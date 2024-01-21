import 'package:classwrk1_flutter/login.dart';
import 'package:classwrk1_flutter/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: LoginSignup(),
  ));
}

class LoginSignup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Hello There!",
              style:
                  GoogleFonts.ubuntu(fontSize: 45, fontWeight: FontWeight.bold),
            ),
            Text(
              "Automatic identity verification which enables you to verify your identity ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Colors.black38),
            ),
            Image(image: AssetImage("asset/image/image.png")),
            MaterialButton(
              height: 50,
              minWidth: 170,
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              shape: const StadiumBorder(),
              color: Colors.blue,
              child: const Text("Login"),
            ),
            MaterialButton(
                height: 50,
                minWidth: 170,
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Signup()));
                },
                shape: const StadiumBorder(),
                color: Colors.red,
                child: const Text("Signup"))
          ],
        ),
      ),
    );
  }
}
