import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IntroSlider extends StatefulWidget {
  @override
  _IntroSliderState createState() => new _IntroSliderState();
}

class _IntroSliderState extends State<IntroSlider> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? indicator(true) : indicator(false));
    }
    return list;
  }

  navigationPageSignup() {
    Navigator.of(context).pushNamed('/main_of_login_signup');
  }

  navigationPageHome() {
    Navigator.of(context).pushNamed('/');
  }

  Widget indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xff141B29) : Color(0xFF7851D3),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.4, 0.7, 0.9],
            colors: [
              Color(0xffF8F7F4),
              Color(0xffF8F7F4),
              Color(0xffF8F7F4),
              Color(0xffF8F7F4),
            ],
          )),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () => navigationPageSignup(),
                    child: Text(
                      'ردشدن',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff36204E),
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 600.0,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                      'assets/images/home_icon2.png'),
                                  height: 300.0,
                                  width: 300.0,
                                ),
                              ),
                              SizedBox(height: 30.0),
                              Text(
                                'FindFastHouse\nbaQrCoDE',
                                style: Theme.of(context).textTheme.title,
                              ),
                              SizedBox(height: 15.0),
                              Text(
                                'barnamei karbordi vaherfei,baraye tamame amlak daran shahr',
                                style: Theme.of(context).textTheme.subtitle,
                              ),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Image(
                                  image:
                                      AssetImage('assets/images/camera360.png'),
                                  height: 300.0,
                                  width: 300.0,
                                ),
                              ),
                              SizedBox(height: 30.0),
                              Text(
                                'find2\nbaQrCoDE',
                                style: Theme.of(context).textTheme.title,
                              ),
                              SizedBox(height: 15.0),
                              Text(
                                'barnamei karbordi vaherfei,baraye tamame amlak daran shahr',
                                style: Theme.of(context).textTheme.subtitle,
                              ),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                      'assets/images/mobile_scanner.png'),
                                  height: 300.0,
                                  width: 300.0,
                                ),
                              ),
                              SizedBox(height: 30.0),
                              Text(
                                'Find3FastHouse\nbaQrCoDE',
                                style: Theme.of(context).textTheme.title,
                              ),
                              SizedBox(height: 15.0),
                              Text(
                                'barnamei karbordi vaherfei,baraye tamame amlak daran shahr',
                                style: Theme.of(context).textTheme.subtitle,
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: buildPageIndicator(),
                ),
                _currentPage != _numPages - 1
                    ? Expanded(
                        child: Align(
                        alignment: FractionalOffset.bottomRight,
                        child: FlatButton(
                          onPressed: () => {
                            _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease)
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'بعدی ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff36204E),
                                    fontSize: 22.0),
                              ),
                              SizedBox(width: 10.0),
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0xff36204E),
                                size: 30.0,
                              ),
                            ],
                          ),
                        ),
                      ))
                    : Text(''),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 60.0,
              width: double.infinity,
              color: Color(0xff36204E),
              child: GestureDetector(
                onTap: () => _onButtonPressed(),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      'شروع',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }

  void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
          height: 180,

          child: Container(

            child: _buildBottomNavigationMenu(),
            decoration: BoxDecoration(
                boxShadow: [
                BoxShadow(
                color: Color(0xff984673),
              blurRadius: 30,
              offset: Offset(0, 3)),],
              color: Theme.of(context).canvasColor,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(10),
                topRight: const Radius.circular(10),
              )
            ),
          ),
          );
        });
  }

  Column _buildBottomNavigationMenu() {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.account_box),
          title: Text('ثبت نام و ورود به حساب کاربری'),
          onTap: navigationPageSignup,
        ),
        ListTile(
          leading: Icon(Icons.add_to_home_screen),
          title: Text('ورود به برنامه'),
          onTap: navigationPageHome,
        ),
        ListTile(
          leading: Icon(Icons.call),
          title: Text('ارتباط با ما'),
          onTap: navigationPageSignup,
        )
      ],
    );
  }
}
