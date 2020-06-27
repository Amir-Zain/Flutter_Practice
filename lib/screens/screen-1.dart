import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sampleapp/components/my_cards.dart';

const primColor = Color(0xff1dd3b0);
const secColor = Color(0xff9cf1e1);
const textStyle = TextStyle(
  color: Colors.black38,
);

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  List<Widget> cards = [
    MyCards(
      balance: '13,100.00',
      cardNumber: '1287',
      date: '08/20',
      colour: primColor,
    ),
    MyCards(
      balance: '15,280.00',
      cardNumber: '8987',
      date: '12/20',
      colour: Colors.redAccent,
    ),
    MyCards(
      balance: '10,980.00',
      cardNumber: '2587',
      date: '06/21',
      colour: Colors.lightBlue,
    ),
  ];

  int _current = 0;
//  int _currentIndex = 0;
  var _bottomNavIndex = 0;
  final iconList = <IconData>[
    Icons.brightness_5,
    Icons.brightness_4,
    Icons.brightness_6,
    Icons.brightness_7,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          height: 80,
          width: 80,
          child: FloatingActionButton(
            hoverColor: Colors.black,
            hoverElevation: 20,
            backgroundColor: primColor,
            onPressed: () {},
            tooltip: 'Increment',
            child: Icon(
              Icons.add,
              size: 50,
            ),
            elevation: 2.0,
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 5,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffFBFBFB),
            ),
            height: 60,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  padding: EdgeInsets.only(left: 30),
                  onPressed: () {},
                  icon: Icon(Icons.home, color: primColor),
                  iconSize: 30,
                ),
                IconButton(
                  padding: EdgeInsets.only(right: 40),
                  icon: Icon(Icons.dehaze, color: Colors.black12),
                  onPressed: () {
                    setState(() {
                      Navigator.pushNamed(context, '/second');
                    });
                  },
                ),
                IconButton(
                  padding: EdgeInsets.only(left: 30),
                  onPressed: () {},
                  icon: Icon(Icons.notifications_active, color: Colors.black12),
                  iconSize: 30,
                ),
                IconButton(
                  padding: EdgeInsets.only(right: 30),
                  onPressed: () {},
                  icon: Icon(Icons.person, color: Colors.black12),
                  iconSize: 30,
                ),
              ],
            ),
          ),
          shape: CircularNotchedRectangle(),
          color: Colors.blueGrey,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 38),
                  child: Text(
                    'My Cards',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 38),
                  child: FlatButton(
                    onPressed: () {},
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Add More',
                          style: TextStyle(color: primColor),
                        ),
                        Icon(Icons.add, color: primColor),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: CarouselSlider(
                items: cards,
                options: CarouselOptions(
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true,
                    initialPage: 0,
                    height: 210,
                    aspectRatio: 16 / 9,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 280),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: cards.map((url) {
                  int index = cards.indexOf(url);
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index ? Color(0xff18b193) : secColor,
                    ),
                  );
                }).toList(),
              ),
            ),
            Divider(
              color: Colors.black12,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: secColor,
                    border: Border.all(width: 2, color: primColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.only(left: 38),
                  width: 175,
                  height: 60,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 13, left: 13),
                        child: CircleAvatar(
                          child: Icon(
                            Icons.arrow_downward,
                            color: Colors.white,
                          ),
                          backgroundColor: primColor,
                          radius: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Income',
                              style: TextStyle(
                                fontSize: 15,
                                color: primColor,
                              ),
                            ),
                            Text(
                              '\$13,100.00',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: primColor,
                                  fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 175,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xffffcccc),
                    border: Border.all(width: 2, color: Color(0xffffb2b2)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 13, left: 13),
                        child: CircleAvatar(
                          child: Icon(
                            Icons.arrow_upward,
                            color: Colors.white,
                          ),
                          backgroundColor: Colors.redAccent,
                          radius: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Expense',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.redAccent,
                              ),
                            ),
                            Text(
                              '\$9,100.00',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 38),
                  child: Text(
                    'Latest Activity',
                    style: TextStyle(letterSpacing: 5, color: Colors.black38),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.arrow_forward,
                    size: 25,
                    color: primColor,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.black12,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 38),
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow[200],
                    child: Icon(
                      Icons.store,
                      color: Colors.yellow[700],
                    ),
                  ),
                ),
                Container(
                  width: 1,
                  height: 35,
                  color: Colors.black26,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Text(
                        'Apple',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Text(
                      'purchase',
                      style: TextStyle(fontSize: 15, color: Colors.black38),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18),
                  child: Text(
                    '-\$799.00',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.w900),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.black12,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 38),
                  child: CircleAvatar(
                    backgroundColor: Colors.white70,
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  width: 1,
                  height: 35,
                  color: Colors.black26,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Text(
                        'Ashiq',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Text(
                      'recieved',
                      style: TextStyle(fontSize: 15, color: Colors.black38),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18),
                  child: Text(
                    '+\$159.00',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.black12,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 38),
                  child: CircleAvatar(
                    backgroundColor: Colors.green[200],
                    child: Icon(
                      Icons.flight,
                      color: Colors.green[700],
                    ),
                  ),
                ),
                Container(
                  width: 1,
                  height: 35,
                  color: Colors.black12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Text(
                        'Booking',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Text(
                      'purchase',
                      style: TextStyle(fontSize: 15, color: Colors.black38),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18),
                  child: Text(
                    '-\$89.00',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.w900),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.black12,
            ),
          ],
        ),
      ),
    );
  }
}
//BottomNavigationBar(
//onTap: (index) {
//setState(() {
//_currentIndex = index;
//});
//},
//currentIndex: _currentIndex,
//items: [
//BottomNavigationBarItem(
//title: Text(
//'Home',
//style: textStyle,
//),
//icon: Icon(
//Icons.home,
//color: Colors.blueGrey,
//),
//),
//BottomNavigationBarItem(
//title: Text(
//'Details',
//style: textStyle,
//),
//icon: Icon(
//Icons.graphic_eq,
//color: Colors.blueGrey,
//),
//),
//BottomNavigationBarItem(
//title: Text(
//'Notifications',
//style: textStyle,
//),
//icon: Icon(
//Icons.notifications_active,
//color: Colors.blueGrey,
//),
//),
//BottomNavigationBarItem(
//title: Text(
//'Profile',
//style: textStyle,
//),
//icon: Icon(
//Icons.person,
//color: Colors.blueGrey,
//),
//),
//],
//),
