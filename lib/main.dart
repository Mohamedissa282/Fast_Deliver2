import 'dart:io';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutterapp/Homme.dart';
import 'package:flutterapp/generated/l10n.dart';
import 'package:flutterapp/nextPage/LanguageProvider.dart';
import 'package:flutterapp/nextPage/login2.dart';
import 'package:flutterapp/nextPage/name.dart';
import 'package:flutterapp/nextPage/notificqtion.dart';
import 'package:flutterapp/nextPage/page.dart';
import 'package:flutterapp/pages/informations.dart';
import 'package:flutterapp/pages/loginpage.dart';
import 'package:flutterapp/pages/mybouton.dart';
import 'package:flutterapp/pages/page2.dart';
import 'package:provider/provider.dart';
import 'package:flutterapp/pages/test.dart';
import 'package:flutterapp/textField/google.dart';
import 'package:flutterapp/textField/local.dart';
import 'package:flutterapp/textField/myBouton2.dart';
import 'package:flutterapp/textField/mytextfield.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutterapp/verification/verification2.dart';
import 'package:googleapis/admin/directory_v1.dart';
import 'package:intl/intl.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
   
  print("########################################");
  print(message.notification!.title);
  print(message.notification!.body);
  print(message.data);
  
}


void main() async {
 WidgetsFlutterBinding.ensureInitialized();
 Platform.isAndroid ?  await Firebase.initializeApp(
    options: const FirebaseOptions(apiKey: 'AIzaSyDtYAxeayEfLAz-6R28Qzl2YxRl1eBBnVc', appId: '1:1047966744820:android:f7d182248c9567f4751ea1', 
    messagingSenderId: '1047966744820',
     projectId: 'flutterapp-7962d')
  ) :

  await Firebase.initializeApp(
    
  );
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
 await LocalNotification.init();
  runApp(
    ChangeNotifierProvider(create: (context)=> LanguageProvider(),
    child:  MyApp(),
    )
    );
}

class MyApp extends StatefulWidget {
  
  
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  
  void initState(){
    
    
   super.initState();
  }
  @override
  ///
  Widget build(BuildContext context) { 
    
  
    return MaterialApp(
      locale: Provider.of<LanguageProvider>(context).local,
       localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black, fontSize: 29, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(color: Colors.green, fontSize: 24, fontWeight: FontWeight.bold),
          bodySmall: TextStyle(color: Colors.grey, fontSize: 17, fontWeight: FontWeight.bold),
        )
      ),
      home:page(),
      routes: {
        'login' : (context)=> loginpage(),
        'page2' : (context)=> page2(),
        
        'homme' : (context)=> Homme(0.0,0.0,''),
        'log' : (context)=> login(),
        'pagetwo' : (context)=> page(),
         'verifie' : (context)=> verification('')
      },
    );
  }
}