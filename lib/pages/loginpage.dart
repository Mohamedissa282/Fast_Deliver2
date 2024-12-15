import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/textField/google.dart';
import 'package:flutterapp/textField/myBouton2.dart';
import 'package:flutterapp/textField/myTextField.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height:120,),
              Image.asset('images/icone-livraison-rapide-camion-icone-service-livraison_186930-1270.avif'),
              Text('SIGN IN', style: Theme.of(context).textTheme.bodyLarge,),
              Text("Welcom back! Nice to see you signin", style: Theme.of(context).textTheme.bodySmall,),
              SizedBox(height: 14,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: myTextField(hinttext: 'Email', mycontroller: email, icon: Icon(Icons.email)),
              ),
              SizedBox(height: 19,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: myTextField(hinttext: 'Password', mycontroller: password, icon:Icon(Icons.password)),
              ), SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 7),
                child: Align( alignment: Alignment.topRight,
                  child: Text("Forget Password ?", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17))),
              ),
              SizedBox(height: 30,),
              myBouton2(text2: 'Login', color2: Colors.orange, onTap2: () async{
                   try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email.text,
    password: password.text
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}
              },),
              SizedBox(height: 15,),
              google(color3: Colors.black54, onTap: (){
                    
              },),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont't Have Account ?", style: TextStyle(
                    color: Colors.black, fontSize:15, fontWeight: FontWeight.bold 
                  ),),
                  MaterialButton(onPressed: (){
              Navigator.of(context).pushNamed('signup');
                  }, child: Text("Sign Up",style: TextStyle(
                    color: Colors.orange[800], fontSize:19, fontWeight: FontWeight.bold 
                  ),),)
                ],
              )
              
            ],
          ),
        ),
      ),
    );
  }
}