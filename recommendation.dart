import 'package:flutter/material.dart';

class recommendationPage extends StatefulWidget {
  const recommendationPage({super.key});

  @override
  State<recommendationPage> createState() => _recommendationPageState();
}

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Rose"), value: "Rose"),
    const DropdownMenuItem(child: Text("Sunflower"), value: "Sunflower"),
    const DropdownMenuItem(child: Text("AloeVera"), value: "AloeVera"),
    const DropdownMenuItem(child: Text("MoneyPlant"), value: "MoneyPlant"),
    const DropdownMenuItem(child: Text("Anthurium"), value: "Anthurium"),
    const DropdownMenuItem(child: Text("Jasmine"), value: "Jasmine"),
    const DropdownMenuItem(child: Text("Jade"), value: "Jade"),
    const DropdownMenuItem(
        child: Text("BetelLeafPlant"), value: "BetelLeafPlant"),
    const DropdownMenuItem(child: Text("Tulsi"), value: "Tulsi"),
    const DropdownMenuItem(
        child: Text("Chrysanthemum"), value: "Chrysanthemum"),
    const DropdownMenuItem(
        child: Text("PhilipineViolet"), value: "PhilipineViolet"),
    const DropdownMenuItem(child: Text("RoseMary"), value: "RoseMary"),
    const DropdownMenuItem(child: Text("Champa"), value: "Champa"),
    const DropdownMenuItem(child: Text("Oregano"), value: "Oregano"),
    const DropdownMenuItem(child: Text("Croton"), value: "Croton"),
    const DropdownMenuItem(child: Text("Hibiscus"), value: "Hibiscus"),
    const DropdownMenuItem(child: Text("LemonGrass"), value: "LemonGrass"),
  ];
  return menuItems;
}

final List plantname = [
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

int idx = -1;
String? newValue;
String? temp_advice = '';
String? moisture_advice = '';
String? humidity_advice = '';
String? health_advice = '';
String? plant_emotion = 'assets/images/plant.jpg';
String? t = " ", h = " ", m = " ";
var textColor = Colors.white;
var backgroundcolor = Colors.white;

class _recommendationPageState extends State<recommendationPage> {
  String? selectedValue = 'Rose';
  final _dropdownFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
      return SingleChildScrollView(
        child: Column(
          children: [
            Form(
                key: _dropdownFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            prefixIcon: Icon(
                              Icons.perm_media_outlined,
                              color: Colors.black,
                            ),
                            filled: true,
                            fillColor: Colors.blueAccent,
                          ),
                          dropdownColor: Colors.white,
                          value: selectedValue,
                          onChanged: (newValue) {
                            setState(() {
                              selectedValue = newValue!;
                              idx = plantname.indexOf(selectedValue);
                              changeState(idx);
                            });
                          },
                          items: dropdownItems),
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: ElevatedButton(
                          onPressed: () {
                            idx = plantname.indexOf(selectedValue);
                            changeState(idx);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          )),
                          child: Text("Submit")),
                    ),
                  ],
                )),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 100,
                    width: 200,
                    child: Image.asset(
                      plant_emotion!,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      t!,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Text(temp_advice!),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      h!,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 70,
                    width: double.infinity,
                    child: Text(humidity_advice!),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      m!,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: Text(moisture_advice!),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      health_advice!,
                      style: TextStyle(
                        fontSize: 25,
                        color: textColor,
                        backgroundColor: backgroundcolor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  }

  void changeState(int idx) async {
    var parameters = [
      [18, 25, 50, 65],
      [21, 28, 50, 15],
      [13, 28, 50, 45],
      [16, 24, 50, 62],
      [23, 30, 50, 75],
      [15, 24, 50, 50],
      [13, 24, 50, 40],
      [15, 40, 50, 60],
      [21, 27, 50, 60],
      [17, 23, 50, 80],
      [25, 30, 50, 50],
      [15, 30, 50, 50],
      [18, 27, 50, 60],
      [15, 27, 50, 50],
      [14, 30, 50, 60],
      [15, 29, 50, 90],
      [25, 30, 50, 70],
    ];
    int temp = 1;
    int moisture = 50;
    int humidity = 55;
    int health = 0;
    int low_temp = parameters[idx][0] as int;
    int high_temp = parameters[idx][1] as int;
    int required_moisture = parameters[idx][2] as int;
    int required_humidity = parameters[idx][3] as int;
    if (temp < low_temp || temp > high_temp) {
      if (temp < low_temp) {
        t = "Temperature:";
        temp_advice =
            'Please try to place your pot in a warmer area where the temperature can be within the range of ${low_temp}-${high_temp}°C';
      } else {
        t = "Temperature:";
        temp_advice =
            'Please try to place your pot in a cooler area where the temperature can be within the range of ${low_temp}-${high_temp}°C';
      }
    } else {
      t = "Temperature:";
      health += 1;
      temp_advice = 'This temperature is optimum for the plant!!';
    }
    if (moisture >= required_moisture - 10 &&
        required_moisture + 10 >= moisture) {
      m = "Soil Moisture";
      health += 1;
      moisture_advice = 'The plant is receiving well enough moisture';
    } else if (moisture > required_moisture + 10) {
      m = "Soil Moisture";
      moisture_advice =
          "The moisture level is way too high in the soil!! Please don't water the plant any more until the moisture percentage drops below ${required_moisture}%";
    } else {
      m = "Soil Moisture";
      moisture_advice =
          "The moisture level is way too low in the soil!! Please don't water the plant immediately until the moisture percentage raises above ${required_moisture}%";
    }
    if (humidity >= required_humidity - 10 &&
        required_humidity + 10 >= humidity) {
      h = "Humidity";
      health += 1;
      humidity_advice = 'Humidity around the plant is in ideal state';
    } else if (humidity > required_humidity + 10) {
      h = "Humidity";
      humidity_advice =
          'The humidity around the plant is high!! Please try to put your plant in a less humid place so that the humidity falls below ${required_humidity + 10}%';
    } else {
      h = "Humidity";
      humidity_advice =
          'The humidity around the plant is low!! Please try to put your plant in a more humid place so that the humidity raises above ${required_humidity - 10}%s';
    }
    if (health == 3) {
      health_advice = 'Your Plant is in a perfect condition!! Keep it up!!';
      plant_emotion = 'assets/images/happy_plant.jpg';
      backgroundcolor=Colors.green[200]!;
      textColor=Colors.green[900]!;
    } else if (health == 2) {
      health_advice =
          'Your Plant is in a good condition! To make its state beter please follow the said instructions..';
      plant_emotion = 'assets/images/neutral_plant.png';
      backgroundcolor=Colors.orange[200]!;
      textColor=Colors.orange[900]!;
    } else {
      health_advice =
          "Your Plant's health doesn't look good..Please follow the given instructions for immediate recovery!!";
      plant_emotion = 'assets/images/sad_plant.jpg';
      backgroundcolor=Colors.red[200]!;
      textColor=Colors.red[900]!;
    }
  }
}
