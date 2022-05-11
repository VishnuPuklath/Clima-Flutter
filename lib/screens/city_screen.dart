import 'package:clima/utilities/constants.dart';
import 'package:flutter/material.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String cityName = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/city_background.jpg'),
                fit: BoxFit.cover)),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(19.0),
                child: TextField(
                  onChanged: (value) {
                    cityName = value;
                  },
                  decoration: kTextFieldDecoration,
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context, cityName);
                },
                child: const Text(
                  'Get Weather',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ))
          ],
        )),
      ),
    );
  }
}
