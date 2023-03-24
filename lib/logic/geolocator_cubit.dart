import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'geolocator_state.dart';

class LocationCubit extends Cubit<GeolocatorState> {
  // final Geolocator _geolocator = Geolocator();

  LocationCubit() : super(const GeolocatorState(position: null)) {
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      emit(GeolocatorState(position: position));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
