import 'package:appexemplo/reusable_widgets/reusable_widget.dart';
import 'package:appexemplo/signup_screen.dart';
import 'package:appexemplo/utils/color_utils.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors:[
            hexStringToColor("DAA520"),
            hexStringToColor("006400"),
            hexStringToColor("DAA520")
            ])),
           child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height *0.2, 20, 0),
                child: Column(
                  children: <Widget>[
                    LogoWidget("assets/images/logo.png"),
                    SizedBox(
                      height: 30,
                    ),
                    reusableTextField("Enter Username", Icons.person_outline, false,
                     _emailTextController),
                    SizedBox(
                      height: 20,
                    ),
                    reusableTextField("Enter Password", Icons.lock_outline, true,
                     _passwordTextController),
                     SizedBox(
                      height: 20,
                     ),
                     signInSignUpButton(context, true, () {}),
                     signUpOption()
                  ],
                )
                ),
           ),
      )
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Dont have account?",
        style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            
            "Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
        ],
    );
  }
  
}

