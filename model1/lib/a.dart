import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model1/b.dart';

class PageA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(right: 50,left: 50),
        width: widthScreen,
        height: heightScreen,
        decoration: BoxDecoration(
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
                ]
            )
        ),
        child: Column(
          children: [
            SizedBox(height: 120),

            Image(image: AssetImage('assets/icons/girl2.png'), width: 95, height: 95),

            SizedBox(height: 40),

            //Welcome
            Container(
              height: 22,
              width: 202,
              decoration: BoxDecoration(
                //border: Border.all(width: 1)
              ),
              child: Text('Welcome again, Rebecca!',
              style: TextStyle(fontSize: 17, color: Colors.white)),
            ),

            SizedBox(height: 14),

            //Please login...
            Container(
              height: 36,
              width: 250,
              decoration: BoxDecoration(
                  //border: Border.all(width: 1)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Please Log into your existing',
                      style: TextStyle(fontSize: 12, color: Colors.white)),
                  Text('account',
                      style: TextStyle(fontSize: 12, color: Colors.white)),
                ],
              )
            ),

            SizedBox(height: 53),

            //Email
            TextField(
              style:TextStyle(
                color: Colors.white, fontSize: 21
              ),
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  color: Colors.white
                ),
                labelText: 'Email',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                )
                ),

            SizedBox(height: 23),

            //password
            TextField(
                style:TextStyle(
                    color: Colors.white, fontSize: 21
                ),
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                      color: Colors.white
                  ),
                  labelText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                )
            ),

            SizedBox(height: 39),

            //Login
            TextButton(onPressed: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => PageB()));
            },
                style: TextButton.styleFrom(
                  backgroundColor:Color.fromARGB(255, 216, 27, 216),
                  minimumSize: Size(290,54)
                ),
                child:Text('Login',
                  style: TextStyle(
                  color: Colors.white, fontSize: 18))
            ),

            SizedBox(height: 20),

            //Forgot your passwword...
            Container(
                height: 36,
                width: 250,
                decoration: BoxDecoration(
                  //border: Border.all(width: 1)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Forgot your password?',
                        style: TextStyle(fontSize: 12, color: Colors.white)),
                    Text('Click Here',
                        style: TextStyle(fontSize: 12, color: Colors.white,
                        fontWeight: FontWeight.w700)),
                  ],
                )
            ),

          ],
        ),
      ),
    );
  }
}