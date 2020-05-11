import 'package:editing/components/roundbutton.dart';
import 'package:editing/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String _animationName= 'buscando';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background.png'),
                        fit: BoxFit.cover
                    )
                ),
              ),
             Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Hero(
                    tag: 'logo',
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/healthrx.png'),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 35,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextField(
                        decoration: kInputDecoration,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextField(
                      decoration: kInputDecoration.copyWith(
                        labelText: 'Password'
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 20,),
                  RoundButton(
                      color: Colors.lightBlue, text: 'Log In', onPressed: () {},
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    child: FlareActor(
                        'assets/flare/bot.flr',
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                        animation: _animationName,
                      ),
                  ),
                ]
          ),

    ]),
    )
    );
  }
}