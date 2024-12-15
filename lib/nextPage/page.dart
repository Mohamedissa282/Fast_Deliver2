
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/Homme.dart';
import 'package:flutterapp/generated/l10n.dart';
import 'package:flutterapp/nextPage/LanguageProvider.dart';
import 'package:flutterapp/nextPage/login2.dart';
import 'package:flutterapp/nextPage/monBouton.dart';
import 'package:provider/provider.dart';

class page extends StatefulWidget {
  const page({super.key});

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  void initState(){
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message){
         print("########################################Mohamed Essa################################");
         
         double lat = double.parse(message.data['id']);
         double lng = double.parse(message.data['id2']);
        print(lat);
        print(lng);
                                                               
         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  Homme(lat,lng,'')));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: PopupMenuButton( 
                    iconColor: Colors.red,
                    icon: Icon(Icons.language, color: Colors.black, size: 32,),
                    itemBuilder: (context)=> [
                    PopupMenuItem(
            onTap: () {
                  Provider.of<LanguageProvider>(context,listen: false).changeLanguage('fr');
            },
            child: Text(S.of(context).title1,style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),)),
                    PopupMenuItem(
            onTap: () {
              Provider.of<LanguageProvider>(context, listen: false).changeLanguage('ar');
            },
            child: Text(S.of(context).title2,style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
                    
                  ]),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListView(
             
            children: [
            isArabic() ?  SizedBox(height: 80,) :   SizedBox(height: 65,),
           
             Image.asset('images/icone-livraison-rapide-camion-icone-service-livraison_186930-1270.avif'),
                  SizedBox(height: 48,),
               Text(S.of(context).hello, style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold
               ),),
               SizedBox(height: 11,),
               Container(
                margin: EdgeInsets.symmetric(horizontal: 11),
                 child: Text(S.of(context).name, style: TextStyle(
                 fontWeight: FontWeight.bold, fontSize: isArabic() ? 17 : 15, color: Colors.grey[700]
                 ),),
               ),
          
               SizedBox(height: 155,),
               mybouton(color: Colors.orange, txtname: S.of(context).title, onTap: (){
              Navigator.of(context).pushNamed('log');
              
               },)
            ],
          ),
        ),
      ),
    );
  }
}

   
  
  
