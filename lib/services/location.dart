import 'package:geolocator/geolocator.dart';

class Location {
  late double lattitude;
  late double longitude;

  // Location({this.lattitude, this.longitude});

  Future<void> getCurrentLocation() async {
    try {
      LocationPermission permission;
      permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      lattitude = position.latitude;
      longitude = position.longitude;
      // print(position);
    } catch (e) {
      print('errororor');
    }
  }
}
