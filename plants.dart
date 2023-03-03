import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/plantDataModel.dart';
import 'package:flutter_application_1/pages/plant_detail.dart';
import 'package:flutter_application_1/pages/plants_description/AloeVera.dart';
import 'package:flutter_application_1/pages/plants_description/Anthurium.dart';
import 'package:flutter_application_1/pages/plants_description/BetelLeafPlant.dart';
import 'package:flutter_application_1/pages/plants_description/Champa.dart';
import 'package:flutter_application_1/pages/plants_description/Chrysanthemum.dart';
import 'package:flutter_application_1/pages/plants_description/Croton.dart';
import 'package:flutter_application_1/pages/plants_description/Hibiscus.dart';
import 'package:flutter_application_1/pages/plants_description/Jade.dart';
import 'package:flutter_application_1/pages/plants_description/Jasmine.dart';
import 'package:flutter_application_1/pages/plants_description/LemonGrass.dart';
import 'package:flutter_application_1/pages/plants_description/MoneyPlant.dart';
import 'package:flutter_application_1/pages/plants_description/Oregano.dart';
import 'package:flutter_application_1/pages/plants_description/PhilipineViolet.dart';
import 'package:flutter_application_1/pages/plants_description/Rose.dart';
import 'package:flutter_application_1/pages/plants_description/RoseMary.dart';
import 'package:flutter_application_1/pages/plants_description/Sunflower.dart';
import 'package:flutter_application_1/pages/plants_description/Tulsi.dart';

class Plants extends StatelessWidget {
  static List<String> plantname = [
    "Rose",
    "Sunflower",
    "AloeVera",
    "Money Plant",
    "Anthurium",
    "Jasmine",
    "Jade",
    "Betel Plant",
    "Tulsi",
    "Chrysanthemum",
    "Philipine Violet",
    "RoseMary",
    'Champa'
    "Oregano",
    "Croton",
    "Hibiscus",
    "LemonGrass",
    
  ];

  static List images = [
    'assets/images/Rose.jpg',
    'assets/images/Sunflower.jpg',
    'assets/images/AloeVera.jpg',
    'assets/images/MoneyPlant.jpg',
    'assets/images/Anthurium.jpg',
    'assets/images/Jasmine.jpg',
    'assets/images/Jade.jpg',
    'assets/images/BetelLeafPlant.jpg',
    'assets/images/Tulsi.jpg',
    'assets/images/Chrysanthemum.jpg',
    'assets/images/PhilipineViolet.jpg',
    'assets/images/RoseMary.jpg',
    'assets/images/Champa.jpg',
    'assets/images/Oregano.jpg',
    'assets/images/Croton.jpg',
    'assets/images/Hibiscus.jpg',
    'assets/images/LemonGrass.jpg',
    
  ];

  static List desc = [
    const Rose(),
    const Sunflower(),
    const AloeVera(),
    const MoneyPlant(),
    const Anthurium(),
    const Jasmine(),
    const Jade(),
    const BetelLeafPlant(),
    const Tulsi(),
    const Chrysanthemum(),
    const PhilipineViolet(),
    const RoseMary(),
    const Champa(),
    const Oregano(),
    const Croton(),
    const Hibiscus(),
    const LemonGrass(),
    
  ];
  final List<PlantDataModel> plantData = List.generate(
      plantname.length,
      (index) => PlantDataModel(
          name: '${plantname[index]}',
          image: '${images[index]}',
          desc: desc[index]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: plantData.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(plantData[index].name),
                leading: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image(image: AssetImage(plantData[index].image),fit: BoxFit.cover,),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          PlantDetail(plantDataModel: plantData[index])));
                },
              ),
            );
          }),
    );
  }
}
