import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_5_weather_app/utilities/constants.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String cityNameInput;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: FlatButton(
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 50,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 10,
                ),
                child: TextField(
                  onChanged: (textInput) => cityNameInput = textInput,
                  style: TextStyle(color: Colors.black),
                  decoration: kCityInputDecoration,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: FlatButton(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Get Weather',
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context, cityNameInput);
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
