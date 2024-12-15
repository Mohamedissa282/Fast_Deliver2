import 'package:flutter/material.dart';

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              Text("Mohamed Essa"),
              Image.asset('images/6522516.png', fit: BoxFit.fill, width: 70, height: 70,),
                Image.asset('images/icone-livraison-rapide-camion-icone-service-livraison_186930-1270.avif')
            ],
          ),
        ),
      ),
    );
  }
}