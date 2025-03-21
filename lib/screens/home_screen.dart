import 'package:flutter/material.dart';
import 'package:carlcare/components/slider.dart';

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
        backgroundColor: const Color.fromARGB(255, 67, 155, 255),
        title: Row(
          children: [
            Expanded(
              child: Text(
                'SILPON RIPEYR',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.messenger_rounded),
            color: Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
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
                        fontSize: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildServiceCard("Phone Repair",
                              "Online Reservation", "assets/repair.png"),
                          SizedBox(width: 12),
                          _buildServiceCard("My Coupons",
                              "Repair with Discount", "assets/discount.png"),
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
                              fontWeight: FontWeight.bold, fontSize: 20),
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
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "Nearby Stores",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(24, 12, 24, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildMoreNearbyStores(
                                  "assets/service.png",
                                  "SAN PABLO BRANCH",
                                  "3rd floor Unindentified Plaza",
                                  true),
                              SizedBox(width: 12),
                              SizedBox(
                                height: 12,
                              ),
                              _buildMoreNearbyStores(
                                  "assets/service.png",
                                  "SAN PEDRO BRANCH",
                                  "3rd floor Unindentified Plaza",
                                  false),
                              SizedBox(width: 12),
                              SizedBox(
                                height: 12,
                              ),
                              _buildMoreNearbyStores(
                                  "assets/service.png",
                                  "CALAMBA BRANCH",
                                  "3rd floor Unindentified Plaza",
                                  false),
                              SizedBox(width: 12),
                              SizedBox(
                                height: 12,
                              ),
                              _buildMoreNearbyStores(
                                  "assets/service.png",
                                  "STA CRUZ BRANCH",
                                  "3rd floor Unindentified Plaza",
                                  true),
                              SizedBox(width: 12),
                              SizedBox(
                                height: 12,
                              ),
                              _buildMoreNearbyStores(
                                  "assets/service.png",
                                  "CABUYAO BRANCH",
                                  "3rd floor Unindentified Plaza",
                                  true),
                              SizedBox(width: 12),
                              SizedBox(
                                height: 12,
                              ),
                              _buildMoreNearbyStores(
                                  "assets/service.png",
                                  "PAKIL BRANCH",
                                  "3rd floor Unindentified Plaza",
                                  false),
                              SizedBox(width: 12),
                              SizedBox(
                                height: 12,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
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

  Widget _buildMoreNearbyStores(
      String image, String title, String subTitle, bool isOpen) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10), // Adjust radius as needed
            child: Image.asset(
              image,
              height: 75,
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              Text(subTitle, style: TextStyle(fontSize: 12)),
              SizedBox(height: 4),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: isOpen ? Colors.green : Colors.red,
                ),
                width: 60,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                    child: Text(
                      isOpen ? "OPEN" : "CLOSED",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Spacer(), // Adjusts spacing dynamically
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.blue,
            child:
                Icon(Icons.keyboard_arrow_right_outlined, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
