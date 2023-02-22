import 'package:flutter/material.dart';
import 'package:flutter_cakes_and_bastries/food_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Food',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 250.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(75.0),
                  ),
                  color: Color(0xFFFD7465),
                ),
              ),
              Container(
                height: 185.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(75.0),
                  ),
                  color: Color(0xFFFE8A7E),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 35.0, left: 15.0),
                child: Text(
                  'Good Morning',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 75.0, left: 15.0),
                child: Text(
                  'Choose your favorite!',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 160.0, left: 15.0, right: 15.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(75.0),
                      topLeft: Radius.circular(5.0),
                      bottomLeft: Radius.circular(5.0),
                    ),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for your favorite',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14.0),
                      hintStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14.0,
                      ),
                      prefixIcon: Icon(Icons.search, color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          TabBar(
            controller: _tabController,
            indicatorColor: const Color(0xFFFE8A7E),
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 4.0,
            isScrollable: true,
            labelColor: const Color(0xFF440206),
            unselectedLabelColor: const Color(0xFF440206),
            tabs: const [
              Tab(
                child: Text(
                  'DESSERT',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'PIZZA',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'BARBECUE',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'DRINKS',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15.0,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          SizedBox(
            height: 220,
            child: TabBarView(
              controller: _tabController,
              children: const [
                FoodList(),
                FoodList(),
                FoodList(),
                FoodList(),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'RECOMMENDED',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 15.0,
                color: Color(0xFF440206),
              ),
            ),
          ),
          _listItem(
            'assets/steak.png',
            'Chocolate lemon cup cake',
            'The sour and sweetness of the lemon neutralizes the sweetness of the cream',
            '\$18.0',
            134,
            2412,
            '2-3per',
          ),
          const SizedBox(
            height: 10.0,
          ),
          _listItem(
            'assets/steak.png',
            'Strawberry cupcake',
            'Rich in taste, dense in taste, with a bit of bitterness in chocolate, it is a great...',
            '\$18.0',
            134,
            2412,
            '2-3per',
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }

  _listItem(String imgPath, String name, String description, String price,
      int likes, int calories, String serving) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, top: 15.0),
      child: Stack(
        children: [
          Container(
            height: 170.0,
          ),
          Positioned(
            left: 15.0,
            child: Container(
              height: 150.0,
              width: MediaQuery.of(context).size.width - 15.0,
              decoration: BoxDecoration(
                color: const Color(0xFFF9EFEB),
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 3.0,
                    blurRadius: 3.0,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 95.0,
            top: 60.0,
            child: Container(
              height: 105.0,
              width: MediaQuery.of(context).size.width - 15.0,
              decoration: BoxDecoration(
                color: const Color(0xFFF9EFEB),
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 3.0,
                    blurRadius: 3.0,
                  ),
                ],
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0, left: 10.0),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.favorite,
                            color: Color(0xFFF75A4C),
                            size: 15.0,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            '$likes',
                            style: const TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 30.0,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.square_outlined,
                            color: Color(0xFFF75A4C),
                            size: 15.0,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            '$calories',
                            style: const TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 30.0,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.person,
                            color: Color(0xFFF75A4C),
                            size: 15.0,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            '$serving',
                            style: const TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 125.0,
            width: MediaQuery.of(context).size.width - 15.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3.0,
                  blurRadius: 3.0,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(imgPath, fit: BoxFit.cover),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          color: Color(0xFF563734),
                          fontFamily: 'Montserrat',
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(
                        width: 175,
                        child: Text(
                          description,
                          overflow: TextOverflow.fade,
                          style: const TextStyle(
                              color: Color(0xFFB2A9A9),
                              fontFamily: 'Montserrat',
                              fontSize: 11.0),
                        ),
                      ),
                      Text(
                        price,
                        style: const TextStyle(
                          color: Color(0xFFF76053),
                          fontFamily: 'Montserrat',
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
