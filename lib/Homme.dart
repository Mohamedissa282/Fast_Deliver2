import 'dart:async';
import 'dart:math';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterapp/generated/l10n.dart';
import 'package:flutterapp/nextPage/login2.dart';
import 'package:geocoding/geocoding.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/textField/listTile.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class Homme extends StatefulWidget {
  double number2;
  double number;
  String nmbr3;
   
  Homme(this.number, this.number2, this.nmbr3);
  
  @override
  State<Homme> createState() => _HommeState();
}

class _HommeState extends State<Homme> {
   CameraPosition cameraPosition = CameraPosition(target: LatLng(17.242465, -15.663790), zoom: 18);
   GoogleMapController? controller;
   LatLng? currentPosition;
   Position? current;
  late LatLng current2;
   
   double l1 = 0.0;
   double l2 = 0.0;
   LatLng? user;
    LatLng? user8;
   String? rormat;
   String? rormat2;
   double? prix;
   double? distance;
    int hours = 0;
    int minutes = 0;
    int seconds= 0;
      StreamSubscription<Position>? positionStream ;
 static const _position = LatLng(16.619602, -7.2721018);
 
List <Marker> markers= [
   // Marker(markerId: MarkerId('4'), position: _position, icon: BitmapDescriptor.defaultMarker),
    ];
 
 
 
  
 Future<void> getCurrentPosition() async{
    bool serviceEnabled;
     LocationPermission permission;
     
     serviceEnabled = await Geolocator.isLocationServiceEnabled();
     if(! serviceEnabled){
        print("Not enable");
        return ;
     }
     permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
          permission = await Geolocator.requestPermission();
          if (permission == LocationPermission.denied) {
             return Future.error('Erreur!');
    }
  
  }
    if(permission == LocationPermission.whileInUse){
   positionStream = Geolocator.getPositionStream().listen(
    (Position? position) {
      markers.add(Marker(markerId: MarkerId('${widget.nmbr3}'), position: LatLng(position!.latitude, position.longitude)));
      controller!.animateCamera(CameraUpdate.newLatLng(LatLng(position.latitude, position.longitude)));
      


        setState(() {
          current = position;
           l1 = double.parse('${current!.latitude}');
     l2 = double.parse('${current!.longitude}');
          print("#########################################");
          print(current!.latitude);
          print(current!.longitude);
           
        
  if(widget.number!=0 && widget.number2!=0){
        double distanceInMeters = Geolocator.distanceBetween(current!.latitude, current!.longitude,widget.number, widget.number2);
     distance = distanceInMeters / 1000;
     prix = distanceInMeters / 1000 * 200  ;
     rormat = prix!.toStringAsFixed(2);
     double averageSpeedKmh = 60.0;
     double travelTimeInHours =  distance! / averageSpeedKmh;
      hours = travelTimeInHours.floor();
   minutes = ((travelTimeInHours - hours) * 60.0).floor();
  int seconds = (((travelTimeInHours - hours) * 60.0 - minutes) * 60.0).floor();
  
  print('#############################');
  print("Heure : ${hours}");
  print("Minutes : ${minutes}");
  print("Secondes : ${seconds}");

  }
  else{
    distance = 0.0;
    rormat = '0.0';
  
  }
         

        });
        
    });
    
    }
  }
 
  Map<PolylineId, Polyline> polylines = {

  };
 // Map<PolylineId, Polyline> polylines = {};
  List<LatLng> polylineCoordinates = [];
  PolylinePoints polylinePoints = PolylinePoints();
  String googleAPiKey = "AIzaSyAkz1DacsVmmBnfQwMPk7BGubYxJm5hLM8";
  @override
  void initState(){
    //getCurrentPosition().then((_)=> {
       // getpolyLinePoints().then((coordinates)=> {
       //  generatePolyLine(coordinates),
        //})
      //}) ;
   FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  
  if (message.notification != null) {
    double lat = double.parse(message.data['id']);
    double lng = double.parse(message.data['id2']);
    setState(() {
      
     user = LatLng(lat, lng);
      print("################  Test      #############");
     print(user!.latitude);
     print(user!.longitude);
    });
  }
});



print("########################## Test 2 #############################");
print(widget.number);
print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
print(widget.number2);
  
      setState(() {
        current2 = LatLng(widget.number, widget.number2);
      });
     
      
      //getCurrentPosition();
      
     
    super.initState();
    getCurrentPosition();
    _getPolyline();
      addMarkers();
 // _getPolyline();
  }
  void addMarkers(){
     final marker = Marker(markerId: MarkerId('current'), position: LatLng(widget.number, widget.number2));
     setState(() {
       markers.add(marker);
     });
  }

  @override
  void dispose() {
    positionStream!.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(S.of(context).title24,style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),),
          SizedBox(width: 7,),
          Text(S.of(context).title25,style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        ],
        
      ),
      backgroundColor: Colors.orange[400],
      centerTitle: true,
     actions: [
      PopupMenuButton( 
        iconColor: Colors.white,
        itemBuilder: (context)=> [
        PopupMenuItem(
          onTap: () async{
           await FirebaseMessaging.instance.subscribeToTopic('mohamed');
          },
          child: Text(S.of(context).title18,style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),)),
        PopupMenuItem(
          onTap: () async{
            await FirebaseMessaging.instance.unsubscribeFromTopic('mohamed');
          },
          child: Text(S.of(context).title19,style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
        
      ])
     ],
     ),
     drawer: Drawer(
      backgroundColor: Colors.orange[300],
      shadowColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(child: Column(
                children: [
                  
                      Image.asset('images/6522516.png', color: Colors.white, width: 100, height: 100,),
                   
                    
                  
                ],
              )),
              SizedBox(height: 20,),
              
              Column(
                children: [
                  listTile(icon: Icons.home, name: S.of(context).title15),
                  listTile(icon: Icons.info, name: S.of(context).title16, onTap: (){

             },)
              
                ],
              ),
              
            ],
          ),
          listTile(icon: Icons.logout, name: S.of(context).title17, margin: EdgeInsets.only(bottom: 40), onTap: () async{
            await FirebaseAuth.instance.signOut();
Navigator.pushNamedAndRemoveUntil(context, 'log', (route)=> false);
 
          },)
        ],
      ),
     ),
     body:  Stack(
       children: [
         GoogleMap(
          onTap: (LatLng latLng) async{
                            List<Placemark> placemarks = await placemarkFromCoordinates(latLng.latitude, latLng.longitude);
                           // print("##############################");
                            //print(placemarks[0].country);
                             //print(placemarks[0].street);
                             // print(placemarks[0].locality);
                              // print(placemarks[0].postalCode);
                              /*AwesomeDialog(
                            descTextStyle: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17
                            ),
                            btnOkColor: Colors.lightBlue,
                            titleTextStyle: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17
                            ),
                         context: context,
                         dialogType: DialogType.info,
                         animType: AnimType.bottomSlide,
                          title: '${placemarks[0].country}',
                          desc: '${placemarks[0].street}'  '|' '${placemarks[0].locality}',
                          
                         
                        btnOkOnPress: () {},
                         ).show();*/
                         final snackBar = SnackBar(
                      /// need to set following properties for best effect of awesome_snackbar_content
                      elevation: 0,
                      duration: Duration(seconds: 4),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.transparent,
                      
                      content: AwesomeSnackbarContent(
                        title:'${S.of(context).title20} : $distance ${S.of(context).title22}',
                        titleTextStyle: TextStyle(
                          fontSize: 14
                        ),
                        message:
                            '${S.of(context).title21}: $rormat ${S.of(context).title23}',
                            messageTextStyle: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15
                            ),
                        /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                        contentType: ContentType.warning,
                      ),
                    );
         
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(snackBar);
                              
                      },
                     
           
           
            
            
          markers: markers.toSet(),
            mapType: MapType.normal,
            initialCameraPosition: cameraPosition, 
             onMapCreated: (mycontroller){
              controller=mycontroller;
            },
            polylines: Set<Polyline>.of(polylines.values),
            
             ),
             Positioned(
              left: 114,
              bottom: 685,
              
               child: Row(
                children: [
                  Text(isArabic() ? "${hours} س" : "${hours}h", style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 6,),
                  Text(isArabic() ? "${minutes} د" : "${minutes}m", style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 6,),
                  Text(isArabic() ? "${seconds} ث" : "${seconds}s", style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold
                  ),)
                ],
               ),
             )
       ],
     ));
  }
_addPolyLine() {
    PolylineId id = PolylineId("poly");
    Polyline polyline = Polyline(
        polylineId: id, color: Colors.orange, points: polylineCoordinates);
   
    setState(() {
       polylines[id] = polyline;
    });
  }

   _getPolyline() async {
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      googleApiKey: googleAPiKey,
      request: PolylineRequest(
       
        origin: PointLatLng(   18.1086453, -15.9790752),
        destination: PointLatLng(widget.number, widget.number2),
        mode: TravelMode.driving,
        
      ),
    );
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }
    _addPolyLine();
  }
}

  /*Future<List <LatLng>> getpolyLinePoints() async{
   List<LatLng> polyLineCordinates = [];
   PolylinePoints polylinePoints = PolylinePoints();
   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
    googleApiKey:"AIzaSyAkz1DacsVmmBnfQwMPk7BGubYxJm5hLM8" ,request: PolylineRequest(
      origin: PointLatLng(16.6196722, -7.2621658 ), destination: PointLatLng( 16.6196722, -7.2921658), mode:  TravelMode.driving,
      )
   );  
   
   if(result.points.isNotEmpty){
     result.points.forEach((PointLatLng point){
          polyLineCordinates.add(LatLng(point.latitude, point.longitude));
     });
     
   }
   else{
    print("Errreur : ${result.errorMessage}");
   }
   return polyLineCordinates;
   
  }
   void generatePolyLine(List<LatLng> polyLineCordinates) async{
    PolylineId id =  PolylineId('poly');
    Polyline polyline = Polyline(
      polylineId: id, color: Colors.orange, 
      points: polyLineCordinates, width: 8);
      setState(() {
        polylines[id] = polyline;
      });
  }*/
  

  
