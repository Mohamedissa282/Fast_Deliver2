import 'package:flutter/material.dart';

class google extends StatelessWidget {
  final void Function()? onTap;
  final Color color3;
  const google({super.key, required this.color3, this.onTap});

  @override
  Widget build(BuildContext context) {
    return 
              InkWell(
                onTap:onTap,
                child: Container(
                  height: 40,
                  width: 400,
                decoration: BoxDecoration(
                  color: color3,
                  borderRadius: BorderRadius.circular(12)
                ), 
                
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Login with google', style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20
                      ),),
                      SizedBox(width: 10,),
                      Image.network('https://www.freepnglogos.com/uploads/google-logo-png/google-logo-icon-png-transparent-background-osteopathy-16.png',
            fit: BoxFit.fill,          height: 32 ,width: 32,)
                    ],
                  )
              ),
              );
          
        
      
    
  }
}