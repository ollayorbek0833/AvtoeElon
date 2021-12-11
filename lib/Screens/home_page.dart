import 'package:cars/Screens/detail_screens.dart';
import 'package:cars/models/car_model.dart';
import 'package:cars/models/car_proporties.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarsList extends StatefulWidget {
  const CarsList({Key? key}) : super(key: key);

  @override
  _CarsListState createState() => _CarsListState();
}

class _CarsListState extends State<CarsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Row(
          children: [
            Text(
              "Avtoelon",
              textScaleFactor: 1.3,
              style: GoogleFonts.lato(),
            ),
            const Spacer(),
            const Spacer(),
            const Icon(CupertinoIcons.add_circled),
            const Spacer(),
            const Icon(CupertinoIcons.money_dollar_circle),
            const Spacer(),
            const Icon(Icons.search),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: models.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => page(index)));
            },
            child: Card(
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.56,
                    child: Image.network(cars(index).imageUrl),
                  ),
                  Column(
                    children: [
                      Text(
                        cars(index).model,
                        textScaleFactor: 1.5,
                        style: GoogleFonts.montserrat(),
                      ),
                      Text(cars(index).location),
                      Text("Narxi: ${cars(index).cost + " mln"}"),
                      Text(cars(index).details),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
