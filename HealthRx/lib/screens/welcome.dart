import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:editing/components/roundbutton.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = "welcomeScreen";
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          )
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              Row(
                children: <Widget>[
                  Hero(
                    tag: 'logo',
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/healthrx.png'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text('Be',style: TextStyle(fontSize: 45.0,fontFamily: 'Pacifico',fontWeight: FontWeight.bold)),

                  RotateAnimatedTextKit(
                      onTap: () {
                        print("Tap Event");
                      },
                      duration: Duration(seconds: 1),
                      totalRepeatCount: 20,
                      text: [" Fit", "Healthy"," You"],
                      textStyle: TextStyle(fontSize: 45.0, fontFamily: 'Pacifico', fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                      alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                  ),

                ],
              ),
              SizedBox(
                height: 48.0,
              ),
              RoundButton(
                color: Colors.lightBlueAccent,
                text: 'Login',
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
              RoundButton(
                color: Colors.blueAccent,
                text: 'Register',
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

