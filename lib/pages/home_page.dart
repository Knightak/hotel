import 'package:flutter/material.dart';
import 'package:flutter_test1/pages/about.dart';
import 'package:flutter_test1/pages/contact.dart';
import 'package:flutter_test1/temp_db.dart';

List<String> hotelName = [
  "Hostel World Capsule",
  "Jumeirah Creekside Hotel",
  "Dubai Marina Hostel"
];
List<String> hotelImag = [
  "https://images.pexels.com/photos/338504/pexels-photo-338504.jpeg",
  "https://images.pexels.com/photos/258154/pexels-photo-258154.jpeg",
  "https://images.pexels.com/photos/189296/pexels-photo-189296.jpeg"
];
List<int> perNight = [100, 200, 300];

List<String> description = [
  'Located in Dubai and within 1.3 km of Grand Mosque, Hostel World Capsule Dubai 5 min Walkable from Sharaf DG Metro features a terrace, non-smoking rooms, and free WiFi throughout the property.',
  'Set in Dubai, 700 metres from Hidden Beach, Travelers - Dubai Marina Hostel offers accommodation with an outdoor swimming pool, private parking, a shared lounge and a terrace.',
  'Overlooking Dubai Creek, Jumeirah Creekside Hotel accommodations with 2 outdoor pools, 5 restaurants, gym and spa. Guests receive complimentary WiFi in all areas of the property.',
];

class home_page extends StatefulWidget {
  static const String routeName = '/';
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  late Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: () {},
        // ),
        title: const Text(
          'Hotel in Dubai',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),

        backgroundColor: Color.fromARGB(255, 210, 245, 11),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("AI Model"),
              accountEmail: Text("Khalidvd@gmail.com"),
              currentAccountPicture: CircleAvatar(
                foregroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2024/02/14/11/45/model-8573237_1280.jpg'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Cart'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorite'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Search'),
              onTap: () {},
            ),
            const Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Pages'),
            ),
            ListTile(
              leading: Icon(Icons.contact_page),
              title: Text('Contact'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => contactPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        // decoration: BoxDecoration(
        //   boxShadow: <BoxShadow>[
        //     BoxShadow(
        //         color: Color.fromARGB(255, 238, 10, 10).withOpacity(0.2),
        //         offset: const Offset(0, -2),
        //         blurRadius: 8.0),
        //   ],
        // ),
        child: ListView.builder(
            itemCount: hotelName.length,
            itemBuilder: (context, int index) {
              final int count = hotels.length > 10 ? 10 : hotels.length;
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, aboutPage.routeName,
                      arguments: description[index]);
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Column(children: [
                      Image.network(
                        hotelImag[index],
                        width: double.maxFinite,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [Text(hotelName[index])],
                          ),
                          Column(
                            children: [
                              Text(perNight[index].toString()),
                            ],
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => aboutPage(),
                            ),
                          );
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (_) => aboutPage(),
                          //   ),
                          // );
                        },
                        child: Text('View More'),
                      )
                    ]),
                  ),
                ),
              );
            }),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: Colors.amber,
      //   child: Icon(Icons.add),
      //   foregroundColor: Colors.black,
      // ),
      bottomNavigationBar: const BottomAppBar(
        notchMargin: 5,
        shape: CircularNotchedRectangle(),
        color: Color.fromARGB(255, 238, 255, 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.home),
                Text('Home'),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.shopping_bag),
                Text('Cart'),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.favorite),
                Text('Wishlist'),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.dashboard),
                Text('Dashboard'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
