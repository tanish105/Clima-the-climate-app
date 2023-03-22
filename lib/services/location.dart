import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';

class location {
  double latitude;
  double longitude;

  void getcurrentlocation() async {
    LocationPermission permission = await Geolocator.requestPermission();
    permission = LocationPermission.whileInUse;
    print("Hello");
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.bestForNavigation);
      print(position.latitude);
      print(position.longitude);
      // latitude=location().latitude;
      // longitude=location().longitude;
    } catch (e) {
      print(e);
    }
  }
}
