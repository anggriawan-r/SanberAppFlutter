import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Color(0xff074e46),
      ),
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
          Text(
            'CHATS',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text(
            'STATUS',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text(
            'CALLS',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
      backgroundColor: const Color(0xff075e55),
    );
  }
}
