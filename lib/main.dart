import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Time and Status Bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '3:42',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.signal_cellular_alt, size: 16),
                      SizedBox(width: 4),
                      Icon(Icons.wifi, size: 16),
                      SizedBox(width: 4),
                      Text('35%'),
                    ],
                  ),
                ],
              ),
              
              SizedBox(height: 40),
              
              // Profile Picture
              Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.grey[900],
                      child: Icon(
                        Icons.edit,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              
              SizedBox(height: 16),
              
              // Name
              Text(
                'Najmul',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              SizedBox(height: 24),
              
              // Power Moves Card
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'power moves',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'see how everything works on ten ten',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/tiktok.png', width: 20),
                    ),
                  ],
                ),
              ),
              
              SizedBox(height: 24),
              
              // Menu Items
              MenuListItem(
                icon: Icons.edit,
                text: 'edit profile',
                color: Colors.blue,
              ),
              MenuListItem(
                icon: Icons.star,
                text: 'power moves',
                color: Colors.yellow,
                showArrow: true,
              ),
              MenuListItem(
                icon: Icons.lock,
                text: 'legal stuff',
                color: Colors.green,
              ),
              MenuListItem(
                icon: Icons.favorite,
                text: 'send feedback',
                color: Colors.red,
              ),
              MenuListItem(
                icon: Icons.language,
                text: 'language',
                color: Colors.grey,
                showArrow: true,
              ),
              MenuListItem(
                icon: Icons.close,
                text: 'danger zone',
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuListItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final bool showArrow;

  const MenuListItem({
    required this.icon,
    required this.text,
    required this.color,
    this.showArrow = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: color,
            child: Icon(icon, color: Colors.white, size: 20),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          if (showArrow) Icon(Icons.arrow_forward, color: Colors.grey),
          Icon(Icons.more_vert, color: Colors.grey),
        ],
      ),
    );
  }
}