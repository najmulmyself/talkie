
import 'package:flutter/material.dart';
import 'package:talkie/widgets/menu_list_item.dart' show MenuListItem;

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
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
                      child: Icon(Icons.edit, size: 15, color: Colors.white),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 16),

              // Name
              Text(
                'Najmul',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                          style: TextStyle(color: Colors.grey, fontSize: 14),
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