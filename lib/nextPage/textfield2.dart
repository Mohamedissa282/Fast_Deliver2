import 'package:flutter/material.dart';
import 'package:flutterapp/generated/l10n.dart';
import 'package:flutterapp/nextPage/login2.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class textfield extends StatelessWidget {
  final TextEditingController mycontroller;
 
  const textfield({super.key, required this.mycontroller});
  
  
  @override
  Widget build(BuildContext context) {
    
    return 
              IntlPhoneField(
                textAlign: isArabic() ? TextAlign.right : TextAlign.left,
                invalidNumberMessage: S.of(context).title9,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black
                ),
                dropdownTextStyle: TextStyle(
                  fontSize: 17,
                  color: Colors.black
                ),
                pickerDialogStyle: PickerDialogStyle(
                countryCodeStyle: TextStyle(fontSize: 14),
                countryNameStyle: TextStyle(fontSize: 16),
               
                searchFieldInputDecoration: InputDecoration(
                  
                )
                ),
                keyboardType:TextInputType.number,
                initialCountryCode: 'MR',
                controller:mycontroller ,
                showCursor: false,
                decoration: InputDecoration(
                  hintText: S.of(context).title10,
                  contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 22),
                  
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 3)
                  )
                
                ),
               
               
              );
            
  }
}