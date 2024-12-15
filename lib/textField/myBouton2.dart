import 'package:flutter/material.dart';

class myBouton2 extends StatelessWidget {
  final void Function()? onTap2;
  final Color color2;
  final String text2;
  const myBouton2({super.key, required this.text2, required this.color2, this.onTap2});

  @override
  Widget build(BuildContext context) {
    return 
            InkWell(
              onTap:onTap2 ,
              child: Container(
                height: 40,
                width: 350,
              decoration: BoxDecoration(
                color: color2,
                borderRadius: BorderRadius.circular(12)
              ), 
              child: Align(alignment: Alignment.center,
                child: Text(text2, style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20
                ),)),
            ),
            );
          
        
      
    
  }
}