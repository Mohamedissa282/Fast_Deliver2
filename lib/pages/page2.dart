import 'package:flutter/material.dart';
import 'package:flutterapp/pages/mybouton.dart';

class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
          child: Column(
            children: [
             Container(
              height: 70, width: 70,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                 borderRadius: BorderRadius.circular(50),
                 boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 212, 156, 72),
                    offset: Offset(5, 3),
                    blurRadius: 4.0,
                    blurStyle: BlurStyle.normal
                  )
                 ]
              ), child: Icon(Icons.arrow_back_outlined, color: Colors.white,),
             )
            ],
          ),
        ),
      ),
    );
  }
}