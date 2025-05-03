
import 'package:flutter/material.dart';

class MenuListItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final bool showArrow;

  const MenuListItem({
    super.key,
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
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          if (showArrow) Icon(Icons.arrow_forward, color: Colors.grey),
          Icon(Icons.more_vert, color: Colors.grey),
        ],
      ),
    );
  }
}