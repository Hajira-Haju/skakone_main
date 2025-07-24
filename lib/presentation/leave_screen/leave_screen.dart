import 'package:flutter/material.dart';
import 'package:skakone/presentation/leave_screen/widgets/leave_screen_widgets.dart';



class LeaveRequest extends StatelessWidget {
  const LeaveRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(20)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'LEAVES',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              // Padding(padding: EdgeInsets.all(12)),
              LeaveScreenWidgets.leaveList(),
            ],
          ),
        ),
      ),
    );
  }
}

