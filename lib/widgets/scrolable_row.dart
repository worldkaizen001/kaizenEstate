import 'package:flutter/material.dart';
import 'package:kaizen_estate/constant/colors.dart';

Widget scrollableRow (){
  return SizedBox(
    height: 60,
    width: 100,
    child: Center(child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        onSurface: kMain,
        onPrimary: Colors.white70,
        primary: kMain,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
      ),
      onPressed: (){},
      child: const Text('Registraton scren', style: TextStyle(color: kWhite),),
    )),

  );
}
Widget scrollableRowMat (colour, text, border){
  return SizedBox(
    height: 55,
    child: ElevatedButton(



      style: ElevatedButton.styleFrom(
          onSurface: kMain,
          onPrimary: kMain,
          primary: colour,

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),
            side:  BorderSide(color: border, width: 1),
          ),

      ),
      onPressed: (){},
      child:  Text(' $text', style: const TextStyle(color: kGrey),),
    ),
  );
}

