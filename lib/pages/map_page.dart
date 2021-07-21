import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hackathon_cp/shared/Themes/app_collors.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final Map<String, Marker> _markers = {};

  List<String> embaixador = [
    "Ebaixador Matheus",
    "Ebaixador André",
    "Ebaixadora Elaine ",
    "Ebaixador Henrique ",
  ];
  List<String> ocupation = [
    "Artesao",
    "Historiador",
    "Comeciante",
    "Guia turistico",
  ];
  List<LatLng> location = [
    LatLng(-14.186759, -47.789595),
    LatLng(-14.10, -47.5),
    LatLng(-14.0, -47.8),
    LatLng(-14.15, -47.4),
  ];

  Future<void> _onMapCreated(GoogleMapController controller) async {
    final locais = 10;
    setState(() {
      _markers.clear();
      for (int i = 0; i < 4; i++) {
        final marker = Marker(
          markerId: MarkerId("nome$i"),
          position: location[i],
          infoWindow: InfoWindow(
            title: embaixador[i],
            snippet: ocupation[i],
          ),
        );
        _markers["nome$i"] = marker;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: const LatLng(-14.140721, -47.521236),
          zoom: 9,
        ),
        markers: _markers.values.toSet(),
      ),
    );
  }
}
