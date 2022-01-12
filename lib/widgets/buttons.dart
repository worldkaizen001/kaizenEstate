import 'package:flutter/material.dart';
import 'package:kaizen_estate/constant/colors.dart';
import 'package:kaizen_estate/views/about.dart';
import 'package:kaizen_estate/views/tour_screen.dart';

Widget button (context,colour, text, border, textColour){
  return SizedBox(
    height: 60,
    width: 165,
    child: ElevatedButton(



      style: ElevatedButton.styleFrom(
        onSurface: kMain,
        onPrimary: kMain,
        primary: colour,

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23),
          side:  BorderSide(color: border, width: 1),
        ),

      ),
      onPressed: (){
        Navigator.push(context, PageRouteBuilder(
            transitionDuration: const Duration(seconds: 2),
            transitionsBuilder: (context, animation, secondaryAnimation, child){
              final slide = Tween(begin: Offset(1,0),end: const Offset(0,0)).animate(animation);
              return FadeTransition(opacity: animation,child: child,);
            },

            pageBuilder: (context, animation, secondaryAnimation,){
              return const TourScreen();}));
      },
      child:  Text(' $text', style:  TextStyle(color: textColour,fontSize: 15,fontWeight: FontWeight.w700),),
    ),
  );
}



