import 'package:classwrk1_flutter/home.dart';
import 'package:classwrk1_flutter/login.dart';
import 'package:classwrk1_flutter/login_signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            //used to make icon button
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        //   leading: Icon(Icons.arrow_back_ios,
        //     color: Colors.black,
        // ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "SIGN UP",
              style:
                  GoogleFonts.lora(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            // SizedBox(
            //   height: 5,
            // ),
            Text(
              "Create An Account its Free",
              style: GoogleFonts.raleway(
                  fontSize: 15, fontWeight: FontWeight.normal),
            ),
            // SizedBox(
            //   height: 5,
            // ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0, left: 15, right: 15),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Name",
                    prefixIcon: Icon(Icons.person_2_outlined),
                    hintText: "Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            // SizedBox(
            //   height: 5,
            // ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0, left: 15, right: 15),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(Icons.person_2_outlined),
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            // SizedBox(
            //   height: 5,
            // ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0, left: 15, right: 15),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.password_outlined),
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            // SizedBox(
            //   height: 5,
            // ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0, left: 15, right: 15),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Confirm Password",
                    prefixIcon: Icon(Icons.password_outlined),
                    hintText: "Confirm Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            // SizedBox(
            //   height: 5,
            // ),
            MaterialButton(
              height: 50,
              minWidth: 170,
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginSignup()));
              },
              color: Colors.redAccent,
              shape: const StadiumBorder(),
              child: const Text("SignUp"),
            ),
            // SizedBox(
            //   height: 5,
            // ),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        children: [
                      TextSpan(text: "Already Have an Account?"),
                      TextSpan(
                          text: "Login",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ])))
          ],
        ),
      ),
    );
  }
}
