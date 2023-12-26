import 'package:geolocator/geolocator.dart';

class Location{
  double latitude = 10;
  double longtitude = 5;

  Future<dynamic> getCurrentLocation()async {
    try {
      await Geolocator.checkPermission();
      await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longtitude = position.longitude;
    }
    catch (e) {
      print(e);
    }
  }
}
// void getlocation() async {
//   try {
//     await Geolocator.checkPermission();
//     await Geolocator.requestPermission();
//     Position position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.low);
//     print(position);
//   }
//   catch (e) {
//     print(e);
//   }
// }

//
// double temperature = decodedData['main']['temp'];
// print(temperature);