import 'package:flutter/material.dart';
import 'package:flutterapp/nextPage/login2.dart';

class myTextField extends StatelessWidget {
  
  final String hinttext;
  final TextEditingController mycontroller;
  final Icon icon;
  const myTextField({super.key, required this.hinttext, required this.mycontroller, required this.icon, });

  @override
  Widget build(BuildContext context) {
    return 
                TextFormField(
                  
 
                  style: TextStyle(
                    fontSize: 16,
                
                  ),
            
                
                  controller: mycontroller,
                  showCursor: false,
                  
                  decoration: InputDecoration(
                  
                    prefixIcon: icon,
                    
                    hintText: hinttext,
                    hintStyle: TextStyle(color: Colors.black , fontSize: 13),
                    contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 24),
                    filled: true,
                    fillColor: Colors.white,
                    
                    border: OutlineInputBorder(
                      
                      borderRadius: BorderRadius.circular(12)
                    ),
                  
                  ),
                );
              
            
          
        
    
  }
}