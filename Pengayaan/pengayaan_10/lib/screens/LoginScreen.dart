import 'package:flutter/material.dart';
import 'package:pengayaan_10/screens/HomeScreen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final usernameController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                        image: AssetImage('assets/logo.png'),
                      ),
                      SizedBox(
                        height: 144,
                      ),
                      SizedBox(
                        width: 240,
                        child: Text(
                          'Welcome Back!',
                          style: TextStyle(
                            fontSize: 48,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w900,
                            color: Color(0xff232323),
                            height: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 64,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        color: Color(0xff232323),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    TextField(
                      controller: usernameController,
                      decoration: const InputDecoration(
                        labelText: 'Username',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black12,
                            style: BorderStyle.solid,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(32),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.account_circle_outlined,
                          color: Color(0xff232323),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black12,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(32),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Color(0xff232323),
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Color(0xff232323),
                        ),
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          color: Color(0xff3B62E1),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Homescreen(
                                username: usernameController.text,
                              ),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff3B62E1),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
