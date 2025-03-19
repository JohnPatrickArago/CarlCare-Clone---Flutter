import 'package:flutter/material.dart';
import 'components/slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Carlcare',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 67, 155, 255),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.qr_code),
            color: Colors.white,
          )
        ],
      ),
      body: Container(
        color: const Color.fromARGB(255, 67, 155, 255),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
              ),
              padding: EdgeInsets.fromLTRB(1, 4, 16, 24),
            ),
            CustomSlider(),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 24),
                  Text(
                    "Recommended",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildServiceCard("Phone Repair", "Online Reservation",
                            "assets/repair.png"),
                        SizedBox(width: 12),
                        _buildServiceCard("My Coupons", "Repair with Discount",
                            "assets/discount.png"),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Column(
                    children: [
                      SizedBox(height: 12),
                      Text(
                        "More Services",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(height: 12),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          children: [
                            Expanded(
                                child:
                                    _buildMoreService("Prices", Icons.money)),
                            SizedBox(width: 12),
                            Expanded(
                                child: _buildMoreService(
                                    "Review Order", Icons.book)),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildServiceCard(String title, String subtitle, String imagePath) {
    return Container(
      height: 230,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          SizedBox(height: 12),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text(subtitle, style: TextStyle(fontSize: 14)),
          Image.asset(imagePath, height: 180),
        ],
      ),
    );
  }

  Widget _buildMoreService(String title, IconData icon) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.blue,
            child: Icon(icon, color: Colors.white),
          ),
          SizedBox(width: 10),
          Text(title, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
