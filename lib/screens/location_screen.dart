import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color.fromARGB(255, 67, 155, 255),
        title: Container(
          height: 40, // Adjust height as needed
          padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
          margin: EdgeInsets.fromLTRB(0, 4, 0, 4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search...",
              hintStyle: TextStyle(color: Colors.grey),
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
          ),
        ),
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
                padding: EdgeInsets.fromLTRB(1, 4, 16, 10),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Column(
                      children: [
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
