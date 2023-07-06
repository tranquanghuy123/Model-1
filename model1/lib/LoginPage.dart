import 'package:flutter/material.dart';
import 'package:model1/a.dart';
import 'package:model1/b.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String _validateEmail = '';
  String _validatePassword = '';

  void _login() {
    String email = emailController.text;
    String password = passwordController.text;
    if (email.isEmpty) {
      setState(() {
        _validateEmail = 'Vui long nhap email';
      });
    }

    if (password.isEmpty) {
      setState(() {
        _validatePassword = 'Vui long nhap password';
      });
    }

    if (email.isNotEmpty && password.isNotEmpty) {
      setState(() {
        _validateEmail = '';
        _validatePassword = '';
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PageB(email: email,)));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: widthScreen,
        height: heightScreen,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.4, 1),
                colors: <Color>[
              Color.fromARGB(255, 10, 7, 129),
              Color.fromARGB(255, 10, 7, 129),
              Color.fromARGB(255, 15, 12, 155),
              Color.fromARGB(255, 20, 16, 178),
              Color.fromARGB(255, 20, 16, 178),
              Color.fromARGB(255, 15, 12, 155),
              Color.fromARGB(255, 10, 7, 129),
              Color.fromARGB(255, 10, 7, 129),
            ])),
          child: Padding(
              padding: const EdgeInsets.only(right: 50, left: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 120),

                  const Image(
                      image: AssetImage('assets/icons/girl2.png'),
                      width: 95,
                      height: 95),

                  const SizedBox(height: 40),

                  //Wellcome ...
                  Container(
                    height: 22,
                    width: 202,
                    decoration: const BoxDecoration(
                        //border: Border.all(width: 1)
                        ),
                    child: const Text('Welcome again, Rebecca!',
                        style: TextStyle(fontSize: 17, color: Colors.white)),
                  ),

                  const SizedBox(height: 14),

                  //Please login...
                  Container(
                      height: 36,
                      width: 250,
                      decoration: const BoxDecoration(
                          //border: Border.all(width: 1)
                          ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Please Log into your existing',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.white)),
                          Text('account',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.white)),
                        ],
                      )),

                  const SizedBox(height: 53),

                  //Email
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: const TextStyle(color: Colors.white),
                      contentPadding: const EdgeInsets.fromLTRB(40, 20, 0, 20),
                      border: const OutlineInputBorder(),
                      enabledBorder: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(50)),
                          borderSide:
                              BorderSide(color: Colors.white, width: 2)),
                      errorText: _validateEmail != '' ? _validateEmail : null
                    ),
                  ),

                  const SizedBox(height: 23),

                  //Password
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: const TextStyle(color: Colors.white),
                      contentPadding: const EdgeInsets.fromLTRB(40, 20, 0, 20),
                      border: const OutlineInputBorder(),
                      enabledBorder: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(50)),
                          borderSide:
                              BorderSide(color: Colors.white, width: 2)),
                      errorText: _validatePassword != '' ? _validatePassword : null
                    ),
                  ),

                  const SizedBox(height: 39),

                  //Login
                  TextButton(
                      onPressed: () => _login(),
                      style: TextButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 216, 27, 216),
                          minimumSize: const Size(290, 54)),
                      child: const Text('Login',
                          style:
                              TextStyle(color: Colors.white, fontSize: 18))),

                  const SizedBox(height: 20),
                  //Forgot your password
                  const Text('Forgot your password?',
                      style: TextStyle(fontSize: 12, color: Colors.white)),

                  //Toast
                  TextButton(
                    onPressed: () {
                      Fluttertoast.showToast(
                          msg: 'Click Success!',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.TOP,
                          timeInSecForIosWeb: 2,
                          backgroundColor: Colors.green,
                          textColor: Colors.black,
                          fontSize: 15);
                    },
                    style:
                        TextButton.styleFrom(minimumSize: const Size(5, 5)),
                    child: const Text('Click Here',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w700)),
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
