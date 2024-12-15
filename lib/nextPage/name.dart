
import 'package:flutter/material.dart';
import 'package:flutterapp/Homme.dart';


class page3 extends StatelessWidget {
  String nmbr;
page3(this.nmbr);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formstate = GlobalKey();
TextEditingController number = TextEditingController();
TextEditingController number2 = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        
          child: SingleChildScrollView(
            child: Form(
              key: formstate,
              child: Column(
                
                children: [
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(right: 244),
                    child: IconButton(onPressed: (){
                    Navigator.of(context).pushReplacementNamed('log');
                    }, icon: Icon(Icons.arrow_back)),
                  ),
                  SizedBox(height: 20,),
                  Image.asset('images/icone-livraison-rapide-camion-icone-service-livraison_186930-1270.avif'),
                  Row(
                    
                    children: [
                      
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Bienvenu(e) dans l'application", style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16
                                          ),),
                      ),
                    SizedBox(width: 8,),
                    Row(children: [
                      Text("FAST", style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16
                    ),),
                     SizedBox(width: 5,),
                      Text("DELIVERY", style: TextStyle(
                      color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 16
                    ),)
                    ],)
                    ],
                  ),
                   SizedBox(height: 18,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text("Veuillez saisir les informations suivantes", style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 14
                    ),),
                  ),
                  SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(9)
                          ), child: Align(alignment: Alignment.center,
                            child: Text('1', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                        ),
                        SizedBox(width: 12,),
                        Text("Votre nom personnel",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                     child: TextFormField(
                      validator: (val){
                        if(val!.isEmpty){
                           return 'champ vide!';
                        }
                      },
                      controller: number,
                      keyboardType:TextInputType.text,
                      
                      showCursor: false,
                      decoration: InputDecoration(
                       
                        contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                        
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black38, width: 2)
                        )
                      
                      ),
                     
                     
                                   ),
                   ),
                  SizedBox(height: 15,),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 11),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(color: Colors.orangeAccent, width: 2),
                          ), child: Align(alignment: Alignment.center,
                            child: Text('2', style: TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold),)),
                        ),
                        SizedBox(width: 12,),
                        Text("nom de famille",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),),
                      ],
                                   ),
                   ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical:5 ),
                    child: TextFormField(
                      validator: (val){
                         if(val!.isEmpty){
                             return 'champ vide!';
                         }
                      },
                      keyboardType:TextInputType.text,
                      controller: number2,
                      showCursor: false,
                      decoration: InputDecoration(
                        
                        contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 22),
                        
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black38, width: 2)
                        )
                      
                      ),
                     
                     
                    ),
                  ),
                 SizedBox(height: 30,),
                 InkWell(
                  onTap: (){
                   if(formstate.currentState!.validate()){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Homme(0, 0,'')));
                   }
                  },
                   child: Container(
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
                    ), child: Icon(Icons.arrow_back, color: const Color.fromRGBO(255, 255, 255, 1),),
                   ),
                 )
                ],
              ),
            ),
          ),
        
      ),
    );
  }
}