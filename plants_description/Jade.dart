import 'package:flutter/material.dart';

class Jade extends StatelessWidget {
  const Jade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset('assets/images/Jade.jpg'),
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
                      'Jade',
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
                      'Season-Hot and dry',
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
                      "The jade plant is an evergreen with thick branches. It has thick, shiny, smooth leaves that grow in opposing pairs along the branches. Leaves are a rich jade green, although some may appear to be more of a yellow-green. Some varieties may develop a red tinge on the edges of leaves when exposed to high levels of sunlight. New stem growth is the same colour and texture as the leaves, becoming woody and brown with age.It grows as an upright, rounded, thick-stemmed, strongly branched shrub and reaches stature heights of up to 2.5 metres. The base is usually sparsely branched. Sometimes a single main trunk of up to 9 centimetres in diameter is formed. The succulent shoots are gray-green. The bark of older branches peels off in horizontal, brownish stripes. Although becoming brown and appearing woody with age, stems never become true lignified tissue, remaining succulent and fleshy throughout the plant's life.",
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
