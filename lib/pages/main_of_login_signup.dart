import 'package:flutter/material.dart';
import 'package:qrcity_splash_screen/pages/login.dart';
import 'package:qrcity_splash_screen/pages/singup.dart';

class mainappforls extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
            
        primaryColor: Color(0xff36204E), 
      ),
      home: new Directionality(textDirection: TextDirection.rtl, child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = new TabController(initialIndex: 1, length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(

        centerTitle:true,
        title: Text("🌹FlutterSource🌹"),
        
        elevation: 0,
      
        bottom: TabBar(
        
          controller: _tabController,
          indicatorColor: Colors.white,
          
          tabs: <Widget>[
            new Tab(
              text: "ورود",
            ),
            new Tab(
              text: "ثبت نام",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          new LoginPage(),
          new SingUpPage(),
          
        ],
      ),
    );
  }
}
