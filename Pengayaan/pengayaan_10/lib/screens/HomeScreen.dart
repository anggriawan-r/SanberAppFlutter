import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key, required this.username});

  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Welcome,',
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff3B62E1),
                        height: 1.2,
                      ),
                    ),
                    Text(
                      username,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff232323),
                        height: 1.2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                    ),
                    labelText: 'Search',
                    prefixIcon: IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
