// @dart=2.9


import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import "package:location/location.dart";

class Home extends StatefulWidget {
  LatLng _latLng;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GoogleMapController _controller;
  LatLng _initialPosition = LatLng(24.8974361, 67.0489364);
  @override
  initState() {
    if (widget._latLng == null) _getLocation();
    super.initState();
  }

  void _moveCamera() {
    _controller.animateCamera(
      CameraUpdate.newLatLngZoom(
          widget._latLng == null ? _initialPosition : widget._latLng, 14.47),
    );
  }

  Future<void> _getLocation() async {
    Location location = Location();
    PermissionStatus permissionStatus = await location.hasPermission();
    if (permissionStatus == PermissionStatus.denied) {
      permissionStatus = await location.requestPermission();
      if (permissionStatus == PermissionStatus.denied) {
        return;
      }
    }

    LocationData locationData = await location.getLocation();
    widget._latLng = LatLng(locationData.latitude, locationData.longitude);
    _moveCamera();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Map with Location'),),
      body: GoogleMap(onTap: (position){
        setState((){
          widget._latLng = position;
        
        });

      },
      initialCameraPosition: CameraPosition(target: widget._latLng == null ? _initialPosition: widget._latLng,
      zoom: 14.4746,
      ),
      markers: widget._latLng == null?{}:{ Marker(markerId: MarkerId('user_post_location'),
      position: widget._latLng ==null? _initialPosition: widget._latLng,),
      },
      onMapCreated: (controller){_controller = controller;
      _moveCamera();
      },
      ),);
  }
}