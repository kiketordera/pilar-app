import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pilar/LoginApi.dart';
import 'package:pilar/widgets/progress.dart';

import '../constants.dart';
import '../pagecontrol.dart';
import '../widgets/ReusableWidgets.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final pageControl = PageControl();

  bool loading = false;
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBgColor,
      body: loading
          ? circularProgress()
          : ListView(
              children: [
                Divider(height: 50),
                Column(
                  children: [
                    Image.asset(
                      'images/logo-troncal.png',
                      height: 175,
                      width: 175,
                    ),
                    Padding(
                      padding: EdgeInsets.all(30),
                      child: Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            TextFormField(
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: kTitleColor, width: 1),
                                  ),
                                  labelText: 'Email',
                                  labelStyle: TextStyle(
                                      fontSize: 14.0, color: kTitleColor),
                                  hintStyle: TextStyle(
                                      color: kTitleColor, fontSize: 10.0)),
                              controller: emailController,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Email cannot be empty';
                                }
                                return null;
                              },
                            ),
                            TextFormField(
                              style: TextStyle(color: Colors.white),
                              obscureText: true,
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: kTitleColor, width: 1),
                                  ),
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                      fontSize: 14.0, color: kTitleColor),
                                  hintStyle: TextStyle(
                                      color: kTitleColor, fontSize: 10.0)),
                              controller: passwordController,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Password cannot be empty';
                                }
                                return null;
                              },
                            ),
                            Divider(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: RaisedButton(
                                    color: Colors.transparent,
                                    textColor: kTitleColor,
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(color: kTitleColor)),
                                    child: Text(
                                      'Iniciar sesión',
                                      style: TextStyle(color: kTitleColor),
                                    ),
                                    onPressed: () async {
                                      if (_formkey.currentState.validate()) {
                                        var email = emailController.text;
                                        var password = passwordController.text;
                                        setState(() {
                                          loading = true;
                                        });
                                        print('empieza login');

                                        var res =
                                            await loginUser(email, password);
                                        print('acabado de login');
                                        if (res == null) {
                                          setState(() {
                                            loading = false;
                                            showSnackBar(context);
                                          });
                                        } else {
                                          print('exec 2');

                                          setState(() {
                                            loading = false;
                                          });
                                        }
                                      }
                                    },
                                  ),
                                ),
                                SizedBox(width: 40),
                                Expanded(
                                  child: RaisedButton(
                                    color: kTitleBgColor,
                                    textColor: kTitleColor,
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(color: kTitleColor)),
                                    child: Text(
                                      'Registrarse',
                                      style: TextStyle(color: kTitleColor),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(height: 25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                      behavior: HitTestBehavior.translucent,
                                      onTap: () => {},
                                      child: invertedCorners(
                                          'Llámanos', 'images/call.png')),
                                ),
                                Expanded(
                                  child: GestureDetector(
                                      behavior: HitTestBehavior.translucent,
                                      onTap: () {},
                                      child: invertedCorners(
                                          'Escríbenos', 'images/mail.png')),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
    );
  }

  /*
  This method shows a message of wrong credentials
   */
  void showSnackBar(BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(
        'Wrong credentials. Please try again',
        style: TextStyle(color: Colors.white),
      ),
    ));
  }
}
