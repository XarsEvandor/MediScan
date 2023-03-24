part of 'geolocator_cubit.dart';

class GeolocatorState extends Equatable {
  final Position? position;

  const GeolocatorState({this.position});

  @override
  List<Object?> get props => [position];
}
