import 'package:flutter/material.dart';
import 'package:skakone/presentation/welcome_screen/widgets/welcome_widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 250,
                  color: Color(0xFFEC3B37),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),

                ),

                Positioned(
                  bottom: -100,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 82, // Outer circle
                          backgroundColor: Colors.white, // Border color
                          child: CircleAvatar(
                            radius: 78, // Inner image circle
                            backgroundImage: AssetImage('assets/person.png'),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "John Doe",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  WelcomeWidgets.details('EMPLOYEE ID', '12345'),
              WelcomeWidgets.details('WORK MOBILE NO.', '+1 234 567'),
              WelcomeWidgets.details('EMAIL', 'johndoe@gmail.com'),
              WelcomeWidgets.details('DEPARTMENT', 'Human Resources'),
              WelcomeWidgets.details('DESIGNATION', 'Manager'),
              WelcomeWidgets.details('TEAM', 'Recruitment'),
              ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}