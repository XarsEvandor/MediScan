import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/geolocator_cubit.dart';

class GeolocatorScreen extends StatelessWidget {
  const GeolocatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Current Location'),
      ),
      body: BlocBuilder<LocationCubit, GeolocatorState>(
        builder: (context, GeolocatorState state) {
          if (state.position == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Center(
              child: Text(
                  'Latitude: ${state.position?.latitude}, Longitude: ${state.position?.longitude}'),
            );
          }
        },
      ),
    );
  }
}

class GeolocatorScreenProvider extends StatelessWidget {
  const GeolocatorScreenProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocationCubit>(
      create: (context) => LocationCubit(),
      child: const GeolocatorScreen(),
    );
  }
}
