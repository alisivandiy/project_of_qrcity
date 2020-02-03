import 'package:flutter/material.dart';

class SingUpPage extends StatefulWidget {
  @override
  _SingUpPageState createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Color(0xff36204E),
          Color(0xff36204E),
          Color(0xff36204E),
        ]),
      ),
      child:
          new Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
              Widget>[
        SizedBox(
          height: 1,
        ),
        Padding(
          padding: EdgeInsets.all(1),
          // child: new Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: <Widget>[
          //     new Text(
          //       "صفحه ورود",
          //       style: new TextStyle(color: Colors.white, fontSize: 25),
          //     ),
          //     SizedBox(
          //       height: 1,
          //     ),
          //     new Text(
          //       "خوش امدید",
          //       style: TextStyle(color: Colors.white, fontSize: 14),
          //     ),
          //   ],
          // ),
        ),
        new SizedBox(
          height: 20,
        ),
        Expanded(
          child: new Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                )),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: new Column(
                  children: <Widget>[
                    SizedBox(
                      height: 35,
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xff984673),
                                blurRadius: 25,
                                offset: Offset(0, 10)),
                          ]),
                      child: new Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.grey[200]))),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "نام و نام خوانودگی",
                                hintStyle: new TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.people,
                                  color: Color(0xff984673),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.grey[200]))),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "شماره تلفن",
                                hintStyle: new TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.perm_phone_msg,
                                  color: Color(0xff984673),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.grey[200]))),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "نام کاربری یا ایمیل",
                                hintStyle: new TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.alternate_email,
                                  color: Color(0xff984673),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // padding: EdgeInsets.all(1),
                            // decoration: BoxDecoration(
                            //     border: Border(
                            //         bottom:
                            //             BorderSide(color: Colors.grey[200]))),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "رمز",
                                hintStyle: new TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Color(0xff984673),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // new Text(
                    //   "رمز خود را فراموش کرده اید؟",
                    //   style: TextStyle(color: Colors.grey),
                    // ),
                    const SizedBox(
                      height: 20,
                    ),
                    new RaisedButton(
                      onPressed: () {},
                      child: Text(
                        'ثبت نام',
                        style: new TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      color: Color(0xff984673),
                      elevation: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ]),
    ));
  }
}
