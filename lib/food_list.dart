import 'package:flutter/material.dart';

class FoodList extends StatefulWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        _buildFoodCard(
          'assets/steak.png',
          'Strawberry Cream Waffles',
          7.0,
          273,
          false,
        ),
        _buildFoodCard(
          'assets/steak.png',
          'Croissant blue berry fruit',
          7.0,
          273,
          true,
        ),
        _buildFoodCard(
          'assets/steak.png',
          'Strawberry Cream salad',
          7.0,
          273,
          true,
        ),
      ],
    );
  }

  _buildFoodCard(
      String imgPath, String name, double price, int calories, bool hasMilk) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
        left: 10.0,
        bottom: 10.0,
      ),
      child: Container(
        height: 100.0,
        // width: 100.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 3.0,
              spreadRadius: 3.0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 10.0,
                  ),
                  child: Image.asset(
                    imgPath,
                    width: 100.0,
                    height: 100.0,
                  ),
                ),
                Positioned(
                  top: 92.0,
                  left: 60.0,
                  child: hasMilk
                      ? Container(
                          width: 55.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: const Color(0xFFF75A4C),
                              style: BorderStyle.solid,
                              width: 0.25,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Center(
                            child: Text(
                              'With Milk',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 10.0,
                                color: Color(0xFFF75A4C),
                              ),
                            ),
                          ))
                      : Container(),
                ),
              ],
            ),
            Container(
              width: 125.0,
              padding: const EdgeInsets.only(left: 4.0),
              child: Text(
                name,
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  color: Color(0xFF440206),
                  fontSize: 15.0,
                ),
              ),
            ),
            const SizedBox(height: 5.0),
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Text(
                '\$$price',
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  color: Color(0xFFF75A4C),
                ),
              ),
            ),
            const SizedBox(height: 5.0),
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.account_box,
                    color: Color(0xFFF75A4C),
                    size: 15.0,
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    '${calories}cal',
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 12.0,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
