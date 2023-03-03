import 'package:flutter/material.dart';

import '../data/plantDataModel.dart';

class PlantDetail extends StatelessWidget {
  final PlantDataModel plantDataModel;
  const PlantDetail({super.key, required this.plantDataModel});
  

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(plantDataModel.name)),
      body: plantDataModel.desc
    );
  }
}
