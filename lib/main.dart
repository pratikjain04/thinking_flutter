import 'package:flutter/material.dart';
import 'package:thinking_flutter/paramter.dart';

void main() => runApp(MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    ));

class MyHomePage extends StatelessWidget {


  double uniHeight;
  double uniWidth;

  @override
  Widget build(BuildContext context) {

    uniHeight = MediaQuery.of(context).size.height;
    uniWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: uniHeight/4.25,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        blurRadius: 5.0,
                        spreadRadius: 5.0)
                  ],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: uniHeight / 15)),
                  Padding(
                    padding: EdgeInsets.only(left: uniWidth / 5),
                    child: Text(
                      '20th Apr 2019',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: uniWidth / 32,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: uniWidth / 11)),
                      Container(
                          height: uniHeight / 20,
                          width: uniWidth / 10,
                          child: Image(
                            image: AssetImage('assets/sun.png'),
                            fit: BoxFit.contain,
                          )),
                      Padding(padding: EdgeInsets.only(left: uniWidth / 100)),
                      Padding(
                        padding: EdgeInsets.only(top: uniHeight / 80),
                        child: Text(
                          'Cloudy',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontSize: uniWidth / 15,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: uniWidth / 3)),
                      Padding(
                        padding: EdgeInsets.only(top: uniHeight / 80),
                        child: Text(
                          '26°C',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontSize: uniWidth / 15,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: uniHeight / 50)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: uniWidth / 10)),
                      Container(
                        height: uniHeight / 15,
                        width: uniWidth / 4,
                        color: Colors.transparent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '19%',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Montserrat',
                                  fontSize: uniWidth / 25,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text('Humidity',
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontFamily: 'Montserrat',
                                    fontSize: uniWidth / 35,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: uniWidth / 30)),
                      Container(
                        height: uniHeight / 15,
                        width: uniWidth / 4,
                        color: Colors.transparent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '1006hPa',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: uniWidth / 25,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400),
                            ),
                            Text('Air Pressure',
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontFamily: 'Montserrat',
                                    fontSize: uniWidth / 35,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: uniWidth / 15)),
                      Container(
                        height: uniHeight / 15,
                        width: uniWidth / 4,
                        color: Colors.transparent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '18.5km/h',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: uniWidth / 25,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400),
                            ),
                            Text('West Wind',
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: uniWidth / 35,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: uniHeight / 5)),
            ParameterCard(
              uniHeight: uniHeight,
              uniWidth: uniWidth,
              parameter: 'Soil Moisture',
              value: 60,
              bottomValue: 30,
              upperValue: 80,
              unit: '%',
              id: 'soilmoisture',
            ),
          ],
        ),
    ));
  }
}
