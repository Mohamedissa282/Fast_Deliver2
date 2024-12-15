import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class topic extends StatefulWidget {
  const topic({super.key});

  @override
  State<topic> createState() => _topicState();
}

class _topicState extends State<topic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Topic"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            MaterialButton
            (
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () async{
          await FirebaseMessaging.instance.subscribeToTopic('mohamed');
            }, child: Text("Subscribe"),),
        
              MaterialButton( color: Colors.red,textColor: Colors.white,
                onPressed: () async{
        await FirebaseMessaging.instance.unsubscribeFromTopic('mohamed');
            }, child: Text("DebSubscribe"),)
          ],
        ),
      )),
    );
  }
}