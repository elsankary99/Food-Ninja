import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';

@RoutePage()
class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  LatLng? myCurrentLocation;
  Future<void> onMapReady() async {
    final location = await Location().getLocation();
    myCurrentLocation = LatLng(location.latitude!, location.longitude!);
    log('Map Ready OooOpen');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: MapOptions(
          onMapReady: onMapReady,
          initialCenter: const LatLng(31.0413861, 31.3828396),
          initialZoom: 9.2,
        ),
        children: [
          TileLayer(
            urlTemplate:
                'https://cartodb-basemaps-{s}.global.ssl.fastly.net/dark_all/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',
          ),
          if (myCurrentLocation != null)
            MarkerLayer(
              markers: [
                Marker(
                  height: 100.h,
                  width: 100.w,
                  point: myCurrentLocation!,
                  child: SvgPicture.asset(
                    Assets.assetsImagesCurrentLocation,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
