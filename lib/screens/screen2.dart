import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Transaction',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.event_note,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.black54,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.orange[500]),
                      color: Colors.orange[200],
                      borderRadius: BorderRadius.circular(10)),
                  width: 300,
                  margin: EdgeInsets.only(left: 25),
                  padding: EdgeInsets.all(18),
                  child: Center(
                      child: Text(
                    'Filtered by: Past 90 days',
                    style: TextStyle(color: Colors.orange[800]),
                  )),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Clear',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'All',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.greenAccent,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Received',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Sent',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 250),
                  width: 140,
                  child: Divider(thickness: 4, color: Colors.greenAccent),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                '10 Nov 2018',
                style: TextStyle(color: Colors.black38, letterSpacing: 3),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              color: Colors.black26,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 25),
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
                  color: Colors.black12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Text(
                        'Apple Store',
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
              height: 15,
            ),
            Divider(
              color: Colors.black12,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                '06 Nov 2018',
                style: TextStyle(color: Colors.black38, letterSpacing: 3),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.black12,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 25),
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
                  color: Colors.black12,
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
              height: 15,
            ),
            Divider(
              color: Colors.black12,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 25),
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
              height: 15,
            ),
            Divider(
              color: Colors.black12,
            )
          ],
        ),
      ),
    );
  }
}
