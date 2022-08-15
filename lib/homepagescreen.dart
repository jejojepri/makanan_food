import 'package:flutter/material.dart';
import 'package:makanan_daerah/detailFoodScreen.dart';
import 'package:makanan_daerah/model/food_detail.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 131, 7),
        centerTitle: true,
        title: Text('Makanan Daerah',
            style: TextStyle(fontFamily: 'Staatliches', fontSize: 30)),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return FoodPlaceList();
          } else if (constraints.maxWidth <= 700) {
            return FoodPlaceGrid(gridCount: 2);
          } else if (constraints.maxWidth <= 900) {
            return FoodPlaceGrid(gridCount: 3);
          } else if (constraints.maxWidth <= 1200) {
            return FoodPlaceGrid(gridCount: 4);
          } else {
            return FoodPlaceGrid(gridCount: 6);
          }
        },
      ),
    );
  }
}

class FoodPlaceList extends StatelessWidget {
  const FoodPlaceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final FoodDetail fooddtl = FoodDetailList[index];
        //bool match = true;
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailFoodScreen(foodDtl: fooddtl);
            }));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                      height: 200.0,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          alignment: Alignment.topLeft,
                          image: ExactAssetImage(fooddtl.imageAsset),
                          fit: BoxFit.cover,
                        ),
                      )),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(fooddtl.name,
                          style: TextStyle(
                              fontFamily: 'Oxygen',
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Row(
                        children: List.generate(int.parse(fooddtl.starFood),
                            (index) => Icon(Icons.star, color: Colors.amber)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(fooddtl.khasDaerah,
                      style: TextStyle(fontFamily: 'Oxygen', fontSize: 15)),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
        );
      },
      itemCount: FoodDetailList.length,
    );
  }
}

class FoodPlaceGrid extends StatelessWidget {
  final int gridCount;
  const FoodPlaceGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: gridCount,
      crossAxisSpacing: 1,
      mainAxisSpacing: 1,
      children: FoodDetailList.map((fooddtl) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailFoodScreen(foodDtl: fooddtl);
            }),
            );
          },
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Image.asset(
                    fooddtl.imageAsset,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(fooddtl.name,
                              style: TextStyle(
                                  fontFamily: 'Oxygen',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                          Text(fooddtl.khasDaerah,
                              style: TextStyle(
                                  fontFamily: 'Oxygen', fontSize: 12)),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(
                            int.parse(fooddtl.starFood),
                            (index) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                )),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
