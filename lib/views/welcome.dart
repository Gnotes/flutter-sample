import 'package:flutter/material.dart';
import './app.dart';

class WelcomeView extends StatefulWidget {
  @override
  _WelcomeViewState createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  PageController _pageController;
  int _initialPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _initialPage,
    );
  }

  void _onPageChanged(int page) {
    setState(() {
      _initialPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        BackgroundView(_initialPage),
        PageView(
          controller: _pageController,
          onPageChanged: _onPageChanged,
          children: <Widget>[
            FirstPage(),
            SecondPage(),
            ThirdPage(),
          ],
        )
      ],
    );
  }
}

class BackgroundView extends StatelessWidget {
  final int initialPage;

  BackgroundView(this.initialPage);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: FractionalOffset.topCenter,
        end: FractionalOffset.bottomCenter,
        colors: [
          const Color.fromARGB(255, 253, 72, 72),
          const Color.fromARGB(255, 87, 97, 249),
        ],
      )),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Indicator(initialPage),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Hello, i am flutter",
          style: TextStyle(color: Colors.white, decoration: TextDecoration.none, fontSize: 26.0),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "written in dart",
          style: TextStyle(color: Colors.white, decoration: TextDecoration.none, fontSize: 26.0),
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Center(
            child: Text(
              "beautiful and fast.",
              style: TextStyle(color: Colors.white, decoration: TextDecoration.none, fontSize: 26.0),
            ),
          ),
          Positioned(
            bottom: 180,
            left: 0,
            right: 0,
            child: Container(
              child: Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (cxt) => AppView()));
                      },
                      child: Text("Now, let's begin"),
                      textColor: Colors.white,
                    ),
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8.0)), border: Border.all(color: Colors.white)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  final int initialPage;

  Indicator(this.initialPage);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Opacity(
              opacity: 0.8,
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: initialPage == 0 ? Colors.white : Colors.grey[500],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Opacity(
              opacity: 0.8,
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: initialPage == 1 ? Colors.white : Colors.grey[500],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Opacity(
              opacity: 0.8,
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: initialPage == 2 ? Colors.white : Colors.grey[500],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
