import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model1/a.dart';

class PageB extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
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
            children:[
            //o 1
            Container(
              padding: EdgeInsets.fromLTRB(26, 71, 32, 19),
              height: 493,
              width: widthScreen,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Bar
                  Container(
                    height: 50,
                    //color: Colors.green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        GestureDetector(
                          child: Image(image: AssetImage('assets/icons/arrow.png'),
                          width: 40, height: 40),
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) =>
                                PageA()));
                          },
                        ),
                        
                        Image(image: AssetImage('assets/icons/girl.png'))
                      ],
                    ),
                  ),

                  //Link với tên mail lúc đăng nhập
                  Container(
                    height: 22,
                    width: 97,
                    color: Colors.green,
                    child: Text('Dien Email vao day',
                    style: TextStyle(color: Colors.white, fontSize: 14))
                  ),

                  //Card
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 25),
                      padding: EdgeInsets.fromLTRB(31, 25, 21, 26),
                      height: 223,
                      width: widthScreen,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment(0.4, 1),
                              colors: <Color>[
                                Color.fromARGB(255, 212, 27, 216),
                                Color.fromARGB(255, 212, 27, 216),
                                Color.fromARGB(255, 212, 27, 216),
                                Color.fromARGB(255, 193, 22, 217),
                                Color.fromARGB(255, 173, 17, 217),
                                Color.fromARGB(255, 173, 17, 217)
                              ]
                          ),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                    child: Column(
                      children: [

                        //SuperBank
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 81,
                              height: 17,
                              //color: Colors.green,
                              child: Text('SuperBank',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 14,fontWeight: FontWeight.w500
                              ),),
                            ),
                          ],
                        ),

                        //Raidio
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(image: AssetImage('assets/icons/wifi.png'),
                            width: 34.99, height: 25.78,)
                          ],
                        ),

                        //Số thẻ
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 58.01, bottom:16),
                              width: 218,
                              height: 24,
                              //color: Colors.green,
                              child: Text('0987 6543 2100 0000',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,fontWeight: FontWeight.w500
                                ),),
                            ),
                          ],
                        ),

                        //mastercard
                        Container(
                          height: 31,
                          width: 265,
                          //color: Colors.lightGreen,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 17,
                                width: 40,
                                child: Text('11/16',
                                style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600,
                                  color: Colors.white70
                                )),
                              ),


                              Container(
                                height: 31,
                                width: 50,
                                //color: Colors.red,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image(image: AssetImage('assets/icons/mastercard.png'),
                                    width: 21, height: 21),
                                    Text('Mastercard',
                                        style: TextStyle(
                                            fontSize: 7,
                                            color: Colors.white
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  //bar 2
                  Container(
                    height: 63,
                    width: widthScreen,
                    //decoration: BoxDecoration(border: Border.all(width: 1)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        //balance
                        Container(
                          height: 63,
                          width: 103,
                          //color: Colors.lightGreen,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Balance',
                              style: TextStyle(
                                fontSize: 18, color: Colors.white
                              ),),

                              Text('5,644.00',
                                style: TextStyle(
                                    fontSize: 21, color: Colors.white
                                ),),
                            ],
                          ),
                        ),

                        Container(
                          height: 63,
                          width: 94,
                          //color: Colors.lightGreen,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              //History
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 42,
                                    width: 42,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 4, 2, 104),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10)),
                                    ),
                                    child: Image(image:
                                    AssetImage('assets/icons/history.png',),
                                      width: 20.5, height: 20.5,),
                                  ),
                                  Text('History', style: TextStyle(
                                    fontSize: 12, color: Colors.white
                                  ))
                                ],
                              ),

                              //Send
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Container(
                                    height: 42,
                                    width: 42,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 4, 2, 104),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)),
                                    ),
                                    child: Image(image:
                                    AssetImage('assets/icons/transfer12.png'),
                                      width: 20.5, height: 20.5,),
                                  ),
                                  Text('Send', style: TextStyle(
                                      fontSize: 12, color: Colors.white
                                  ))
                                ],
                              ),

                            ],
                          )
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),


            // o 2
            Container(
              padding: EdgeInsets.fromLTRB(24, 23.95, 30, 46),
              height: 288,
              width: widthScreen,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 4, 2, 104),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                topRight:Radius.circular(30))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // thanh bar
                  Container(
                    height: 3,
                    width: 85.93,
                    decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30))
                    ),
                  ),
                  SizedBox(height: 18.05),

                  Container(
                    width: widthScreen,
                    height: 195,
                    //color: Colors.lightGreen,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          //Today
                          Container(
                            height: 20,
                            width: 49,
                            child: Text('Today',
                            style: TextStyle(
                              fontSize: 17, color: Colors.white
                            )),
                          ),

                          SizedBox(height: 34),

                          //transfer
                          Container(
                            height: 44,
                            width: widthScreen,
                            decoration: BoxDecoration(
                              //border: Border.all(width: 1, color: Colors.white)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                //transfer icons
                                Container(
                                  width: 200,
                                  height: 44,
                                  //color: Colors.green,
                                  child: Row(
                                    children: [
                                      Image(image:
                                      AssetImage('assets/icons/transfer.png'),
                                        width: 44,height: 44,),
                                      SizedBox(width: 21),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Direct Transfer', style: TextStyle(
                                              color: Colors.white, fontSize: 15.5, fontWeight: FontWeight.w500
                                          )),
                                          Text('Julian', style: TextStyle(
                                              color: Colors.white, fontSize: 13
                                          )),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Text('-125.00', style: TextStyle(
                                    fontSize: 15.5, color: Colors.white
                                ))
                              ],
                            ),
                          ),

                          SizedBox(height: 21),

                          //Netflix
                          Container(
                            height: 44,
                            width: widthScreen,
                            decoration: BoxDecoration(
                                //border: Border.all(width: 1, color: Colors.white)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                //clapperboard
                                Container(
                                  width: 200,
                                  height: 44,
                                  //color: Colors.green,
                                  child: Row(
                                    children: [
                                      Image(image:
                                      AssetImage('assets/icons/clapperboard.png'),
                                        width: 44,height: 44,),
                                      SizedBox(width: 21),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Netflix', style: TextStyle(
                                              color: Colors.white, fontSize: 15.5, fontWeight: FontWeight.w500
                                          )),
                                          Text('Onlina', style: TextStyle(
                                              color: Colors.white, fontSize: 13
                                          )),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Text('-55.00', style: TextStyle(
                                    fontSize: 15.5, color: Colors.white
                                ))
                              ],
                            ),
                          ),

                          SizedBox(height: 21),

                          //Shopping
                          Container(
                            height: 44,
                            width: widthScreen,
                            decoration: BoxDecoration(
                              //border: Border.all(width: 1, color: Colors.white)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                //shopping
                                Container(
                                  width: 200,
                                  height: 44,
                                  //color: Colors.green,
                                  child: Row(
                                    children: [
                                      Image(image:
                                      AssetImage('assets/icons/shopping.png'),
                                        width: 44,height: 44,),
                                      SizedBox(width: 21),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Zara Shopping', style: TextStyle(
                                              color: Colors.white, fontSize: 15.5, fontWeight: FontWeight.w500
                                          )),
                                          Text('Online', style: TextStyle(
                                              color: Colors.white, fontSize: 13
                                          )),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Text('-37.00', style: TextStyle(
                                    fontSize: 15.5, color: Colors.white
                                ))
                              ],
                            ),
                          ),

                          SizedBox(height: 21),

                        ],
                      ),
                    ),
                  )
                ],
              ),
              )
          ]
      ),
    )
    );
  }
}