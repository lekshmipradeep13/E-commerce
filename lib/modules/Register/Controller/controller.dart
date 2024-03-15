import 'package:flutter/material.dart';

class PasswordCntrl extends ChangeNotifier{
 bool Isconfirmbutton=false;
String? errorText;
String? errorText2;

bool isvisibility=false;
     passwordFormat(String value) {
    String passwordDataUpparcase =
        r'^(?=.*[A-Z])'; // should contain at least one upper case
    // String passwordDataLowerCase =
    //     r'^(?=.*?[a-z])'; // should contain at least one lower case
    // String passwordDataNumber =
    //     r'^(?=.*?[0-9])'; // should contain at least one digit
    // String passwordDataSpecialChar =
    //     r'^(?=.*?[!@#\$&*~])'; // should contain at least one Special character
    String passwordDataLength =
        r'^.{8,}$'; // Must be at least 8 characters in length

 //(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}
    RegExp regExpUppercase = RegExp(passwordDataUpparcase);
    // RegExp regExpLowercase = RegExp(passwordDataLowerCase);
    // RegExp regExpNumber = RegExp(passwordDataNumber);
    // RegExp regExpSpecialChar = RegExp(passwordDataSpecialChar);
    RegExp regExpLength = RegExp(passwordDataLength);
    // log(regExpUppercase.hasMatch(value).toString());
 //log(valid.toString());
    // return regExp.hasMatch(password);

    //-------------- uppercase condetion ------------------

    if (!regExpUppercase.hasMatch(value)) {
  Isconfirmbutton =true;
     errorText='enter uppercase';
    }
    //-------------- Lowecase condetion ------------------

    // else if (!regExpLowercase.hasMatch(value)) {
     
    // }

    //-------------- Number condetion ------------------

    // else if (!regExpNumber.hasMatch(value)) {
      
    // }

    // //-------------- Special Char condetion ------------------

    // else if (!regExpSpecialChar.hasMatch(value)) {
   
    // }

    //-------------- Length condetion ------------------

    else if (!regExpLength.hasMatch(value)) {
      Isconfirmbutton =true;
     errorText='Atleat 8 character';
    } else {
     Isconfirmbutton=false;
     errorText=null;
    }

    notifyListeners();
  }

  isConformedPassword(String confirmpswd, String value){
    if(confirmpswd==value){
      Isconfirmbutton=true;
      errorText2=null;
    }else{
    Isconfirmbutton=false; 
    errorText2="not matching"; 
    }
    notifyListeners();
  }
passwordVisibility( ){
   
isvisibility=!isvisibility;
notifyListeners();

}

}