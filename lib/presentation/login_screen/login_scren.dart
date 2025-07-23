import 'package:flutter/material.dart';
import 'package:skakone/presentation/login_screen/widgets/custom_fields.dart';

class LoginScren extends StatelessWidget {
  const LoginScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/redwhite.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Foreground content
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height:80),

                  Center(
                    child: Image.asset(
                      'assets/logo (2).png',
                      height:50,
                    ),
                  ),

                  const SizedBox(height: 40),
                  const Text(
                    'Welcome Back,',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    Text(' Make it work,Make it right,Make it fast',
                    style: TextStyle(fontSize:15 ),
                  ),
                  const SizedBox(height: 50),
                  const CustomField(
                    labelText: 'Username',
                  ),
                  const SizedBox(height: 20),
                  const CustomField(
                    labelText: 'Password',
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(color: Color(0xFFEE3B37)),
                    ),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: Add your login logic here
                        print("Continue tapped");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFEE3B37),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Continue',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
