import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final categories = [
    {'icon': "🍔", 'label': 'Burger', 'color': 0xFFFFE4C7},
    {'icon': "🍕", 'label': 'Pizza', 'color': 0xFFFFD6E8},
    {'icon': "🥤", 'label': 'Drinks', 'color': 0xFFCDEBFF},
    {'icon': "🍩", 'label': 'Dessert', 'color': 0xFFFBD6FF},
    {'icon': "🍖", 'label': 'BBQ', 'color': 0xFFFFE4C4},
    {'icon': "☕", 'label': 'Hot', 'color': 0xFFEFE0FF},
  ];

  final deals = [
    {
      'title': 'Lunch Deal',
      'image': 'assets/photo-1546069901-ba9599a7e63c.jpg',
    },
    {
      'title': 'Family Pack',
      'image': 'assets/photo-1555939594-58d7cb561ad1.jpg',
    },
    {
      'title': '50% OFF',
      'image': 'assets/photo-1484723091739-30a097e8f929.jpg',
    },
    {
      'title': 'Morning Breakfast',
      'image': 'assets/photo-1493770348161-369560ae357d.jpg',
    },
  ];
  final orders = [
    {'name': 'Margherita Pizza'},
    {'name': 'Chicken Shawarma'},
  ];

  final restaurants = [
    {
      'name': 'Happy Restaurant 1',
      'type': 'BBQ · Burger · Fast Food',
      'rate': '4.5',
    },
    {
      'name': 'Happy Restaurant 2',
      'type': 'BBQ · Burger · Fast Food',
      'rate': '4.5',
    },
    {
      'name': 'Happy Restaurant 3',
      'type': 'BBQ · Burger · Fast Food',
      'rate': '4.5',
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF4F7),

      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello!, Ahmed👋",style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.location_on_sharp, color: Colors.orange,),
                          Text("Cairo, Egypt",style: TextStyle(color: Colors.grey,fontSize: 10),),
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar( radius: 30,backgroundImage: AssetImage("assets/download (1).jpeg"),)
                ],


              ),
            ),


             Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                itemBuilder: (BuildContext context, int index) {
                  final item = categories[index];
                  return Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                            color: Color(item['color'] as int),
                            shape: BoxShape.circle
                        ),
                        child: Center(
                            child: Text(
                              item['icon'] as String,
                              style: const TextStyle(fontSize: 25),
                            )),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        item['label'] as String,
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  );
                },
                separatorBuilder: (_, __) => const SizedBox(width: 15),
              ),
            ),

             SizedBox(height: 10),


             Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Popular Deals 🔥",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: deals.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  final deal = deals[index];

                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(deal['image'] as String),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.transparent,
                                  Colors.black.withOpacity(0.7),
                                ],
                              ),
                            ),
                          ),

                          Positioned(
                            bottom: 12,
                            left: 12,
                            right: 12,
                            child: Text(
                              deal['title'] as String,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Nearby Resturants",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: restaurants.length,
              separatorBuilder: (_, __) => Divider(),
              itemBuilder: (context, index) {
                final item = restaurants[index];
                return ListTile(
                  leading: Container(
                    width: 50,height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                      image: AssetImage("assets/photo-1504674900247-0877df9cc836.jpg"),
                      fit: BoxFit.cover,
                ),

                    ),

                  ),
                  title: Text(
                    item['name']!,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item['type']!),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange, size: 16),
                          SizedBox(width: 4),
                          Text(item['rate']!),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Recent Orders",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 150,width: 600,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16),
                itemCount: orders.length,
                separatorBuilder: (_, __) => SizedBox(width: 12),
                itemBuilder: (context, index) {
                  final item = orders[index];
                  return Container(
                    width: 300,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item['name']!,
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Delivered yesterday",
                              style: TextStyle(color: Colors.grey, fontSize: 8),
                            ),

                          ],
                        ),
                        Text(
                          "Re-order",
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20,)


          ],
        ),
      ),
    );
  }
}