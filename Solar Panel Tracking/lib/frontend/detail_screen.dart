import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final MediaQueryData padding = MediaQuery.of(context);
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 30,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Color.fromARGB(255, 56, 160, 192),
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SafeArea(
                child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/solarinfo.jpg"),
                        fit: BoxFit.fill),
                    color: const Color.fromRGBO(0, 20, 58, 100),
                  ),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: const SafeArea(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.3),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 33, 109, 133),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 10, 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // height: 400,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                            ),
                          ),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text("What is Solar Panel Tracking App?",
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                              const SizedBox(height: 10),
                              const Padding(
                                padding: EdgeInsets.only(left: 20, right: 25),
                                child: Text(
                                    "Solar Panel Tracking App is a mobile application designed to be user-friendly for anyone to access useful information about the weather conditions related to solar panel effeciency. There’s solar irradiance, wind speed, temperature, humidity and so much more just on a single page. ",
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 25, bottom: 20, top: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text('How does it works?',
                                        style: TextStyle(
                                          fontSize: 32,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 20, right: 25),
                                child: Text(
                                    "Once you clicked into the app, you could see a opening screen and some introduction. After you click “Done”, it will bring you to our main page and automatically detect your location. Application based on user's latitude and longitude to retrieve data from NASA POWER | Prediction Of Worldwide Energy Resources - a large and authoritative data source from NASA that displays information about the most important data: Solar Irradiance. And moving on, you can access info like wind speed, temperature, humidity and cloud around in this clean interface.",
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                    )),
                              ),
                              const SizedBox(height: 20),
                              const Padding(
                                padding: EdgeInsets.only(left: 20, right: 25),
                                child: Text(
                                    "We know our users care about result and the efficiency too, that’s why we added this estimated savings at the end of our main page. We perform some calculations by calculating the amount generated with your efficiency of solar panels and solar irradiance and also thanks to the tracking system using Equatorial mount. It’s so much easier to access now!",
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                    )),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ))));
  }
}
