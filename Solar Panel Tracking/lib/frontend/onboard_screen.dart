import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:myapp/frontend/home_page.dart';

class PositionLocation {
  late final LatLng positionNow;
}

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const HomePage()),
    );
  }

  Widget _buildFullscrenImage() {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.4, 0.7, 0.9],
            colors: [
              Color.fromARGB(255, 53, 199, 221),
              Color.fromARGB(255, 43, 167, 186),
              Color.fromARGB(255, 35, 126, 139),
              Color.fromARGB(255, 7, 68, 78),
            ],
          ),
        ),
        child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              height: 30,
              width: 30,
              child: Image.asset(
                'assets/images/logo.png',
                alignment: Alignment.center,
              ),
            )));
  }

  Widget _buildSecondPage() {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.4, 0.7, 0.9],
            colors: [
              Color.fromARGB(255, 53, 199, 221),
              Color.fromARGB(255, 43, 167, 186),
              Color.fromARGB(255, 35, 126, 139),
              Color.fromARGB(255, 7, 68, 78),
            ],
          ),
        ),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 150, 65, 0),
              child: Image.asset(
                'assets/images/image 4.png',
                alignment: Alignment.center,
              ),
            ),
            const Padding(
                padding: EdgeInsets.fromLTRB(40, 20, 20, 10),
                child: Text("Ready To Improve Your Solar Panel Efficiency",
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        color: Colors.white))),
            const Padding(
                padding: EdgeInsets.fromLTRB(50, 20, 50, 10),
                child: Text(
                    "Accept the app's permission to access your location and start managing the performance of your solar panels. \nThis gonna takes few seconds! ",
                    style: TextStyle(fontSize: 24, color: Colors.white)))
          ]),
        ));
  }

  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 40.0, fontWeight: FontWeight.w700, color: Colors.white),
      bodyTextStyle: TextStyle(fontSize: 18, color: Colors.white),
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      imagePadding: EdgeInsets.zero,
    );
    const secondpageDecoration = PageDecoration(
      titlePadding: EdgeInsets.fromLTRB(0, 0, 0, 10),
      titleTextStyle: TextStyle(
          fontSize: 35.0, fontWeight: FontWeight.w700, color: Colors.white),
      bodyTextStyle: TextStyle(fontSize: 18, color: Colors.white),
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 30.0),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "",
          body: "",
          image: _buildFullscrenImage(),
          decoration: pageDecoration.copyWith(
            contentMargin:
                const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            fullScreen: true,
            bodyFlex: 2,
            imageFlex: 3,
          ),
        ),
        PageViewModel(
          title: "",
          body: "",
          image: _buildSecondPage(),
          decoration: secondpageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
            fullScreen: true,
            // bodyFlex: 5,
            // imageFlex: 4,
          ),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      skipFlex: 0,
      nextFlex: 0,
      next: Row(children: const <Widget>[
        Text("Next",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            )),
        Icon(Icons.arrow_forward),
      ]),
      done: const Text('Done',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.white,
          )),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
