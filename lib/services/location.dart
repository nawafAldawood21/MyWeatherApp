import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';

class Location{
  late double latitude;
  late double longitude;

  Future<void> getCurrentLocation() async{
    try {
      Position? position = await Geolocator.getLastKnownPosition();
      latitude=position!.latitude;
      longitude=position.longitude;
    }
    catch(e){
      print(e);
    }
  }
}