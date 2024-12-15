import 'package:flutter/material.dart';

class mybouton extends StatelessWidget {
  Color color;
  String textname;
  void Function()? onTap;
   mybouton({super.key, required this.color, required this.textname, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
                height: 56, width: 160,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(textname, style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold, fontSize: 19
                  ), textAlign:TextAlign.center,),
                ),
              ),
    );
        
      
    
  }
}