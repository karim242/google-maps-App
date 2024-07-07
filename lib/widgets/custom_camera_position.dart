import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomCameraPosition extends StatefulWidget {
  const CustomCameraPosition({super.key});

  @override
  State<CustomCameraPosition> createState() => _CustomCameraPositionState();
}

class _CustomCameraPositionState extends State<CustomCameraPosition> {
 late CameraPosition  initialCameraPosition;
 late GoogleMapController mapController;
  @override
  void initState() {
    super.initState();
    initialCameraPosition = const CameraPosition(
      target: LatLng(31.038975882452807, 31.376106881118446),
      zoom: 12,
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children:[
         GoogleMap(
        onMapCreated: (controller) {
          mapController = controller;
        },
        
        initialCameraPosition: initialCameraPosition,),

        Positioned(
          bottom: 30,
          right: 60,
          left: 20,
          child: ElevatedButton(
            onPressed: () {
              mapController.animateCamera(
                CameraUpdate.newCameraPosition(
                  const CameraPosition(
                    target: LatLng(31.038975882452807, 41.376106881118446),
                    zoom: 10,
                  ),
                ),
              );
            },
            child: const Text('Move to'),
          ),
        ),
      ]
    );
  }
}