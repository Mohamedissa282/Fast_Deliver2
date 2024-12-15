import 'package:flutter/material.dart';
import 'package:flutterapp/nextPage/monBouton.dart';

class informations extends StatefulWidget {
  const informations({super.key});

  @override
  State<informations> createState() => _informationsState();
}

class _informationsState extends State<informations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 11),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 274),
                child: IconButton(onPressed: (){
                          
                }, icon: Icon(Icons.arrow_back)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Veuillez saisir les informations suivantes ", style: TextStyle(
                  color: Colors.black, fontSize: 16
                ),),
              ),
        SizedBox(height: 20,),
              Stepper(steps: [
                Step(
                  stepStyle: StepStyle(
                    color: Colors.orangeAccent
                  ),
                  title: Text("nom personnel", style: TextStyle(
                    color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold
                  ),), content: Form(child: TextFormField(
                    keyboardType: TextInputType.name,
                    showCursor: false,
                    style: TextStyle(
                      fontSize: 14
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orangeAccent, width: 3)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)
                      )
                    ),
                  ))
                  ),
                   Step(
                     stepStyle: StepStyle(
                    color: Colors.orangeAccent
                  ),
                  title: Text("nom de famille", style: TextStyle(
                    color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold
                  ),), content:Form(child: TextFormField(
                    keyboardType: TextInputType.name,
                     showCursor: false,
                    style: TextStyle(
                      fontSize: 14
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orangeAccent, width: 3)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)
                      )
                    ),
                  ))
                  ),

                    Step(
                       stepStyle: StepStyle(
                    color: Colors.orangeAccent
                  ),
                  title: Text("NNI", style: TextStyle(
                    color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold
                  ),), content: Form(
                    
                    child: TextFormField(
                      maxLength: 10,
                       showCursor: false,
                       style: TextStyle(
                      fontSize: 14
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orangeAccent, width: 3)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)
                      )
                    ),
                  ))
                  )
              ],
              currentStep: 0,
              ),
              SizedBox(height: 172,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: mybouton(color: Colors.orangeAccent, txtname:'Suivant'),
              )
            ],
          ),
        ),
      ),
    );
  }
}