import 'package:climate_update/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:climate_update/services/weather.dart';



const apiKey = '5c47b80ad43d37d6ba1b6a0ebdb90d92';

class

LoadingScreen

    extends

    StatefulWidget

{
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class

_LoadingScreenState

    extends

    State<LoadingScreen> {
  @override


  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    try {
      var weatherData = await WeatherModel().getLocationWeather(); // Await for result
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return LocationScreen(locationWeather: weatherData);
      }));
    } catch (error) {
      // Handle errors here, e.g., display an error message
      print("Error fetching weather data: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}