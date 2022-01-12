import 'package:flutter/material.dart';
import 'package:kaizen_estate/constant/colors.dart';
import 'package:kaizen_estate/views/tour_screen.dart';

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
Widget scrollableRowMat (context,colour, text, border){
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
      onPressed: (){
        Navigator.push(context, PageRouteBuilder(
            transitionDuration: const Duration(seconds: 2),
            transitionsBuilder: (context, animation, secondaryAnimation, child){
              final slide = Tween(begin: const Offset(1,0),end: const Offset(0,0)).animate(animation);
              return FadeTransition(opacity: animation,child: child,);
            },

            pageBuilder: (context, animation, secondaryAnimation,){
              return const TourScreen();}));
      },
      child:  Text(' $text', style: const TextStyle(color: kGrey),),
    ),
  );
}

