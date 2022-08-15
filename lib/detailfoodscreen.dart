import 'package:flutter/material.dart';
import 'package:makanan_daerah/model/food_detail.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailFoodScreen extends StatelessWidget {
 final FoodDetail foodDtl;
  const DetailFoodScreen({Key? key,required this.foodDtl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return WebApp(foodDtl: foodDtl);
        } else {
          return MobileApp(foodDtl: foodDtl, );
        }
      },
    );
  }
}

class MobileApp extends StatelessWidget {
   final FoodDetail foodDtl;
  const MobileApp({Key? key, required this.foodDtl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(children: [
              Image.asset(
                foodDtl.imageAsset,
                fit: BoxFit.cover,
                width: Width,
                // height: Height,
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            size: 35,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
              ),
            ]),
            Container(
              child: Column(
                //  crossAxisAlignment: CrossAxisAlignment.start,
                //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              foodDtl.name,
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                fontSize: 30.0,
                                fontFamily: 'Staatliches',
                              ),
                            ),
                            Text(
                              foodDtl.shortDesc,
                              //  textAlign: TextAlign.start,
                              style: const TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'Oxygen',
                              ),
                            ),
                          ],
                        ),
                      ),
                      LikeButton()
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Divider(thickness: 1),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Icon(
                        Icons.home,
                        size: 36,
                        color: Color.fromARGB(255, 14, 104, 2),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        foodDtl.khasDaerah,
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.star, size: 36, color: Colors.amber),
                      const SizedBox(height: 8.0),
                      Text(
                        foodDtl.starFood,
                        style: informationTextStyle,
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.food_bank,
                          size: 36, color: Color.fromARGB(255, 14, 104, 2)),
                      const SizedBox(height: 8.0),
                      Text(
                        foodDtl.jenisFood,
                        style: informationTextStyle,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                foodDtl.description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 150,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: foodDtl.imageUrls.map((link) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(link, width: 150, fit: BoxFit.fill),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WebApp extends StatefulWidget {
  final FoodDetail foodDtl;
  const WebApp({Key? key, required this.foodDtl}) : super(key: key);

  @override
  State<WebApp> createState() => _WebAppState();
}

class _WebAppState extends State<WebApp> {
   final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
   return WillPopScope(
    onWillPop: () {
  Navigator.pop(context);
  return new Future(() => true);
} ,
     child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: SizedBox(
            width: screenWidth <= 1200 ? 800 : 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Wisata Bandung',
                  style: TextStyle(
                    fontFamily: 'Staatliches',
                    fontSize: 32,
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.asset(widget.foodDtl.imageAsset),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          const SizedBox(height: 16),
                          Scrollbar(
                             controller: _scrollController,
                            child: Container(
                              height: 150,
                              padding: const EdgeInsets.only(bottom: 16),
                              child: ListView(
                                controller: _scrollController,
                                scrollDirection: Axis.horizontal,
                                children: widget.foodDtl.imageUrls.map((url) {
                                  return Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(url),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  widget.foodDtl.name,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 30.0,
                                    fontFamily: 'Staatliches',
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: <Widget>[
                                      const Icon(Icons.home,color: Color.fromARGB(255, 14, 104, 2)),
                                      const SizedBox(width: 8.0),
                                      Text(
                                        widget.foodDtl.khasDaerah,
                                        style: informationTextStyle,
                                      ),
                                    ],
                                  ),
                                  const LikeButton(),
                                ],
                              ),
                              
                              const SizedBox(height: 8.0),
                              Row(
                                children: <Widget>[
                                  const Icon(Icons.food_bank,color: Color.fromARGB(255, 14, 104, 2)),
                                  const SizedBox(width: 8.0),
                                  Text(
                                    widget.foodDtl.jenisFood,
                                    style: informationTextStyle,
                                  ),
                                ],
                              ),
                                    const SizedBox(height: 8.0),
                              Row(
                                children: <Widget>[
                                  const Icon(Icons.star,color: Colors.amber),
                                  const SizedBox(width: 8.0),
                                  Text(
                                    widget.foodDtl.starFood,
                                    style: informationTextStyle,
                                  ),
                                ],
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.foodDtl.description,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      )),
   );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton({Key? key}) : super(key: key);

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isLike = !isLike;
          });
        },
        icon: Icon(
          isLike ? Icons.favorite_rounded : Icons.favorite_border_outlined,
          color: Colors.red,
        ));
  }
}
