import 'package:flutter/material.dart';

class ParameterCard extends StatefulWidget {
  ParameterCard(
      {Key key,
        @required this.uniHeight,
        @required this.uniWidth,
        this.parameter,
        this.value,
        this.bottomValue,
        this.upperValue,
        this.unit,
        this.id
      })
      : super(key: key);

  final double uniHeight;
  final double uniWidth;
  final String id;
  final dynamic value;
  double upperValue;
  double bottomValue;
  String unit;
  String parameter;

  @override
  ParameterCardState createState() {
    return new ParameterCardState();
  }
}

class ParameterCardState extends State<ParameterCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.uniHeight / 4.8,
        width: widget.uniWidth / 1.25,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                  offset: Offset(3.0, 4.0),
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5.0,
                  blurRadius: 5.0)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: widget.uniHeight / 100)),
            Padding(
              padding: EdgeInsets.only(left: widget.uniWidth/20),
                child: Text(
                  widget.parameter,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.grey.withOpacity(0.6),
                      fontSize: widget.uniWidth / 18.5),
                )),
            Padding(padding: EdgeInsets.only(top: widget.uniHeight / 22.5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.transparent,
                  height: widget.uniHeight / 8.5,
                  width: widget.uniWidth / 3.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: widget.uniWidth / 20),
                        child: Text(
                          widget.value.toInt().toString(),
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              fontSize: widget.uniWidth / 10,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      FractionalTranslation(
                        translation: Offset(4.5, -0.5),
                        child: Text(
                          widget.unit,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              fontSize: widget.uniWidth / 22,
                              fontWeight: FontWeight.w300),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: widget.uniWidth / 2.5)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: widget.uniHeight / 200)),
                    Padding(
                      padding: EdgeInsets.only(left: widget.uniWidth / 200),
                      child: Text(
                        widget.upperValue.toInt().toString(),
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.black,
                            fontSize: widget.uniWidth / 27,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    Container(
                        height: widget.uniHeight / 25,
                        width: widget.uniWidth / 16,
                        child: Image(
                          image: AssetImage('assets/transfer.png'),
                          fit: BoxFit.contain,
                        )),
                    Padding(
                      padding: EdgeInsets.only(left: widget.uniWidth / 200),
                      child: Text(
                        widget.bottomValue.toInt().toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: widget.uniWidth / 27,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
    );
  }
}
