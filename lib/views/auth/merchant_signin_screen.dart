import 'dart:ui';

import 'package:apni_dukaan_app/animations/fade_animation.dart';
import 'package:apni_dukaan_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MerchantSignInScreen extends StatelessWidget {
  const MerchantSignInScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 350,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/background.png'),
                          fit: BoxFit.fill)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 30,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(
                            1,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/light-1.png'))),
                            )),
                      ),
                      Positioned(
                        left: 140,
                        width: 80,
                        height: 120,
                        child: FadeAnimation(
                            1.3,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/light-2.png'))),
                            )),
                      ),
                      Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(
                            1.5,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/clock.png'))),
                            )),
                      ),
                      Positioned(
                        child: FadeAnimation(
                            1.6,
                            Container(
                              margin: EdgeInsets.only(top: 50),
                              child: Center(
                                child: Text(
                                  "Merchant\nLogin",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: white,
                                      fontSize: 46,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(
                          1.8,
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, .2),
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[100]))),
                                  child: TextField(
                                    keyboardType: TextInputType.phone,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        labelText: 'Phone Number',
                                        labelStyle:
                                            TextStyle(color: Colors.grey[400]),
                                        contentPadding: EdgeInsets.all(2),
                                        alignLabelWithHint: true,
                                        prefixText: '+91 '),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextField(
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        labelText: "Password",
                                        labelStyle:
                                            TextStyle(color: Colors.grey[400]),
                                        contentPadding: EdgeInsets.all(2),
                                        alignLabelWithHint: true),
                                  ),
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      FadeAnimation(
                          2,
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 4.0, primary: Colors.blueAccent),
                            onPressed: () {},
                            child: Container(
                              width: 0.7.sw,
                              child: Center(
                                  child: Text(
                                'Login',
                                style: Theme.of(context)
                                    .textTheme
                                    .button
                                    .copyWith(color: white, fontSize: 16),
                              )),
                            ),
                          )),
                      FadeAnimation(
                        2,
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 4.0, primary: flamingo),
                          onPressed: () {},
                          child: Container(
                            width: 0.7.sw,
                            child: Center(
                              child: Text(
                                'Google+',
                                style: Theme.of(context)
                                    .textTheme
                                    .button
                                    .copyWith(color: white, fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FadeAnimation(
                              1.5,
                              Text(
                                "Forgot Password",
                                style: TextStyle(
                                    color: Color.fromRGBO(143, 148, 251, 1)),
                              ),
                            ),
                            FadeAnimation(
                              1.5,
                              Text(
                                "Signup",
                                style: TextStyle(
                                    color: Color.fromRGBO(143, 148, 251, 1)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
