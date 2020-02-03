import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Color(0xff36204E),
            Color(0xff36204E),
            Color(0xff36204E),
          ]),
        ),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 1,
            ),
            Padding(
              padding: EdgeInsets.all(1),
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
                          height: 40,
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xff984673),
                                    blurRadius: 15,
                                    offset: Offset(0, 3)),
                              ]),
                          child: new Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.grey[200]))),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "ایمیل یا تلفن خود را وارد کنید",
                                    hintStyle: new TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                    prefixIcon: Icon(
                                      Icons.phone,
                                      color: Color(0xff984673),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: "رمز را وارد کنید ",
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
                        SizedBox(
                          height: 20,
                        ),
                        new Text(
                          "رمز خود را فراموش کرده اید؟",
                          style: TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        new RaisedButton(
                          onPressed: () {},
                          child: Text(
                            'ورود',
                            style:
                                new TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          color: Color(0xff984673),
                          elevation: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
