import 'package:flutter/material.dart';
import 'package:zyphertask/services/services.dart';
import 'package:zyphertask/widgets/IconGradient.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool is6Selected = false;
  bool is12Selected = false;
  String value = '29';
  Color buttonColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(14.0, 32, 14, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Let\'s get you Hooked Up!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16,
                )),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text('Benefits include:',
                  style: TextStyle(color: Colors.blue)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Colors.green,
                    size: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'All Location',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black)),
                      TextSpan(
                          text: '\nConnect through any of our 97 locations',
                          style: TextStyle(color: Colors.black54))
                    ])),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.show_chart,
                    color: Colors.purpleAccent,
                    size: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Top Speed',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black)),
                      TextSpan(
                          text:
                              '\nDon\'t let safety in the way of enjoying media',
                          style: TextStyle(color: Colors.black54))
                    ])),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.volume_up,
                    color: Colors.deepPurpleAccent,
                    size: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'No Ads',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black)),
                      TextSpan(
                          text: '\nGet rid of all those banners and videos',
                          style: TextStyle(color: Colors.black54))
                    ])),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 20),
              child: Center(
                  child: Text(
                'Choose a Plan',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 4),
              )),
            ),
            is6Selected ? selected6MonthsWidget() : unSelected6MonthsWidget(),
            Padding(padding: EdgeInsets.only(top: 20)),
            is12Selected
                ? selected12MonthsWidget()
                : unSelected12MonthsWidget(),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {
                    if (is6Selected || is12Selected) dialogWidget();
                  },
                  color: buttonColor,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0, bottom: 12),
                    child: Text(
                      'Activate @ \$$value',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget selected6MonthsWidget() {
    return GestureDetector(
      onTap: () {
        setState(() {
          is6Selected = false;
          buttonColor = Colors.grey;
        });
      },
      child: Container(
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          color: Colors.pinkAccent[100],
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconGradient(
                    child: Icon(
                  Icons.check,
                  size: 32,
                )),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '6 Months Member Ship',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(
                              'Valid for a 6 months from the date of purchase',
                              maxLines: 2,
                              softWrap: true,
                            ),
                          )
                        ]),
                  ),
                ),
                Text('\$29'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget unSelected6MonthsWidget() {
    return GestureDetector(
      onTap: () {
        setState(() {
          is6Selected = true;
          is12Selected = false;
          value = '29';
          buttonColor = Colors.green;
        });
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              '6 Months Member Ship',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                'Valid for a 6 months from the date of purchase',
                maxLines: 2,
                softWrap: true,
              ),
            )
          ]),
        ),
      ),
    );
  }

  Widget selected12MonthsWidget() {
    return GestureDetector(
      onTap: () {
        setState(() {
          is12Selected = false;
          buttonColor = Colors.grey;
        });
      },
      child: Container(
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          color: Colors.pinkAccent[100],
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconGradient(
                    child: Icon(
                  Icons.check,
                  size: 32,
                )),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '12 Months Member Ship',
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(
                              'Valid for a 12 months from the date of purchase',
                              maxLines: 2,
                              softWrap: true,
                            ),
                          )
                        ]),
                  ),
                ),
                Text('\$58'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget unSelected12MonthsWidget() {
    return GestureDetector(
      onTap: () {
        setState(() {
          is12Selected = true;
          is6Selected = false;
          value = '58';
          buttonColor = Colors.green;
        });
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              '12 Months Member Ship',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                'Valid for a 12 months from the date of purchase',
                maxLines: 2,
                softWrap: true,
              ),
            )
          ]),
        ),
      ),
    );
  }

  dialogWidget() {
    showDialog(
        context: (context),
        child: FutureBuilder(
            future: Services().makeApiCall(),
            builder: (context, snapshot) {
              if (snapshot.data == null)
                return AlertDialog();
              else
                return AlertDialog(
                  title: Text(snapshot.data),
                );
            }));
  }
}
