
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/generated/l10n.dart';
import 'package:flutterapp/nextPage/monBouton.dart';
import 'package:flutterapp/nextPage/page.dart';
import 'package:flutterapp/nextPage/textfield2.dart';
import 'package:flutterapp/verification/verification2.dart';
import 'package:intl/intl.dart';
class login extends StatelessWidget {
   String? erreur;
   login({super.key});
   
GlobalKey<FormState> formstate = GlobalKey();
TextEditingController number = TextEditingController();

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
     backgroundColor: Colors.white,
     body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: formstate,
            child: ListView(
              children: [
                Column(
                   
                  children: [
                   
                  
                    Container(
                      alignment: isArabic() ? Alignment.topRight : Alignment.topLeft,
                      child: IconButton(onPressed: (){
                           Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=> page()), (route) => false);
                      }, icon: Icon(Icons.arrow_back)),
                    ),
                   
                   SizedBox(height: 110,),
                    Image.asset('images/icone-livraison-rapide-camion-icone-service-livraison_186930-1270.avif'),
   
                    SizedBox(height: 35,),
                    textfield(mycontroller: number,),
                     SizedBox(height: 29,),
                      
                    mybouton(color: Colors.orange, txtname: S.of(context).title, onTap: (){
                     /*if(formstate.currentState!.validate()) {
                      
                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=> verification(number.text)));
                     }*/
                    if(number.text.isNotEmpty && number.text.length ==8){

                             AwesomeDialog(
                        descTextStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17
                        ),
                        titleTextStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17
                        ) ,
                        
                        btnOkText: S.of(context).title6,
                        btnCancelText: S.of(context).title7,
                        btnOkColor: Colors.orangeAccent,
                        btnCancelColor: Colors.grey,
                     context: context,
                     dialogType: DialogType.noHeader,
                     animType: AnimType.rightSlide,
                      title:S.of(context).title5,
                      desc: isArabic() ? ' ${number.text} 222+' : '+222 ${number.text}',
                
                     
                    btnOkOnPress: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> verification(number.text)));
                    },
                    
                     ).show();

                         
                    }
                    else if(number.text.isEmpty){
                      AwesomeDialog(
                        descTextStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17
                        ),
                        btnOkColor: Colors.orange,
                        btnOkText: S.of(context).title8,
                     context: context,
                     dialogType: DialogType.error,
                     animType: AnimType.rightSlide,
                      title: '',
                      desc: S.of(context).title4,
                
                     
                    btnOkOnPress: () {},
                     ).show();
                    }
                    
                    },),
                     SizedBox(height: 32,),
                    Text(S.of(context).title3, style: TextStyle(
                      color: Colors.black, fontSize: 14.5
                    ),),
                   
                   
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


bool isArabic(){
      return Intl.getCurrentLocale()=='ar';
    } 