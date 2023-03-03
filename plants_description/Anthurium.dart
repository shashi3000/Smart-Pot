import 'package:flutter/material.dart';

class Anthurium extends StatelessWidget {
  const Anthurium({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset('assets/images/Anthurium.jpg'),
        ),
        scroll()
      ],
    ));
  }

  scroll() {
    return DraggableScrollableSheet(
        initialChildSize: 0.6,
        maxChildSize: 1.0,
        minChildSize: 0.6,
        builder: (context, ScrollController) {
          return Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: SingleChildScrollView(
              controller: ScrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 5,
                          width: 35,
                          color: Colors.black12,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      'Anthurium',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      'Season-Spring, Summer, Winter, Fall',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      'Description',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      'Anthurium is a genus of herbs often growing as epiphytes on other plants. Some are terrestrial. The leaves are often clustered and are variable in shape. The inflorescence bears small flowers which are perfect, containing male and female structures. The flowers are contained in close together spirals on the spadix. The spadix is often elongated into a spike shape, but it can be globe-shaped or club-shaped. Beneath the spadix is the spathe, a type of bract. This is variable in shape, as well, but it is lance-shaped in many species. It may extend out flat or in a curve. Sometimes it covers the spadix like a hood. The fruits develop from the flowers on the spadix. They are juicy berries varying in color, usually containing two seeds.The spadix and spathe are a main focus of Anthurium breeders, who develop cultivars in bright colors and unique shapes. Anthurium scherzerianum and A. andraeanum, two of the most common taxa in cultivation, are the only species that grow bright red spathes. They have also been bred to produce spathes in many other colors and patterns.Anthurium plants are poisonous due to calcium oxalate crystals. The sap is irritating to the skin and eyes.',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
