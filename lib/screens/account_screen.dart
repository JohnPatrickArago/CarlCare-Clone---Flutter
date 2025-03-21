import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 120,
          backgroundColor: const Color.fromARGB(255, 67, 155, 255),
          title: Container(
            padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40, // Adjust size if needed
                  backgroundImage: AssetImage("assets/me.png"), // Profile Image
                  backgroundColor: Colors.white, // Default background
                ),
                SizedBox(width: 12), // Adds space between avatar and text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "John Patrick Arago", // Title
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "johnpatrick@gmail.com", // Subtitle
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
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
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                  margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[200],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildFirstContainer(Icons.folder, 'Process'),
                      _buildFirstContainer(Icons.folder, 'Protection'),
                      _buildFirstContainer(Icons.folder, "Policy"),
                      _buildFirstContainer(Icons.folder, "FAQ"),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                height: 16,
              ),
              Container(
                color: Colors.white,
                child: Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[200],
                    ),
                    child: Column(
                      children: [
                        Container(
                            padding: EdgeInsets.fromLTRB(24, 0, 24, 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'My Order',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        'All',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        size: 16,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildFirstContainer(
                                Icons.flip_camera_android_rounded, 'Process'),
                            _buildFirstContainer(
                                Icons.access_time_sharp, "Repairing"),
                            _buildFirstContainer(
                                Icons.check_circle_outline_outlined,
                                "Repaired"),
                            _buildFirstContainer(Icons.chat_outlined, "Review"),
                          ],
                        ),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFirstContainer(IconData icon, String label) {
    return Container(
      width: 70,
      child: Column(
        children: [
          Icon(icon, color: Color.fromARGB(255, 67, 155, 255)),
          Text(label, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  Widget _buildSecondContainer(IconData icon, String label) {
    return Container(
      child: Column(
        children: [
          Icon(icon, color: Colors.black),
          Text(label, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
