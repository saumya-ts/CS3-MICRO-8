import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_hemobridge/screens/signin_screen.dart';
import 'package:new_hemobridge/screens/signup_screen.dart';
import 'package:new_hemobridge/widgets/custom_scaffold.dart';
import 'package:new_hemobridge/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(             
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40.0,
                ),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(children: [
                      TextSpan(
                          text: 'WELCOME\n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 223, 114, 114),
                            fontSize: 45.0,
                            fontWeight: FontWeight.w600,
                          )),
                      TextSpan(
                          text: ' Ready to donate blood ?',
                          style: TextStyle(
                            color: Color.fromARGB(255, 82, 64, 63),
                            fontSize: 20,
                          ))
                    ]),
                  ),
                ),
              )),
          const Flexible(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  children: [
                    Expanded(
                      child: WelcomeButton(
                        buttonText: 'SIGN IN',
                        onTap: SignInScreen(),
                        color: Color.fromARGB(230, 229, 209, 222),
                        textColor: Color.fromARGB(255, 82, 64, 63),
                      ),
                    ),
                    Expanded(
                      child: WelcomeButton(
                        buttonText: 'SIGN UP',
                        onTap: SignUpScreen(),
                        color: Color.fromARGB(235, 240, 144, 200),
                        textColor:  Color.fromARGB(255, 167, 73, 73),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
