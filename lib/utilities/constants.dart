import 'package:flutter/material.dart';

const kTempTextStyle =
    TextStyle(fontFamily: 'Spartan MB', fontSize: 100.0, color: Colors.white);

const kMessageTextStyle =
    TextStyle(fontFamily: 'Spartan MB', fontSize: 60.0, color: Colors.white);

const kButtonTextStyle =
    TextStyle(fontSize: 30.0, fontFamily: 'Spartan MB', color: Colors.white);

const kConditionTextStyle = TextStyle(fontSize: 100.0, color: Colors.white);

const kTextFieldDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  hintText: 'Enter the city Name',
  border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      borderSide: BorderSide.none),
);
