import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  final Color colour;
  final String balance;
  final String cardNumber;
  final String date;
  MyCards({this.balance, this.cardNumber, this.date, this.colour});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.green),
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 30),
            child: Text(
              'CURRENT BALANCE',
              style: TextStyle(color: Colors.white70, letterSpacing: 2),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 5, left: 30),
                color: Colors.orange,
                child: Text(
                  'USD',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                child: Text(
                  balance,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 5, left: 30),
                child: Text(
                  '****',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 5,
                ),
                child: Text(
                  '****',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 5,
                ),
                child: Text(
                  '****',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: 2,
                ),
                child: Text(
                  cardNumber,
                  style: TextStyle(color: Colors.white70, fontSize: 20),
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
              Container(
                margin: EdgeInsets.only(top: 5, left: 30),
                child: Text(
                  date,
                  style: TextStyle(color: Colors.white70, fontSize: 15),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 40),
                child: Text(
                  'VISA',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
