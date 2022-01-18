import 'package:flutter/material.dart';
import 'package:kaizen_estate/constant/colors.dart';

Widget searchField (){
  return SizedBox(

    width: double.infinity,
    child: TextField(
      decoration:  InputDecoration(
        fillColor: kWhite,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: kWhite),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: kMain),
        ),

        labelText: 'Search',

        hintStyle: const TextStyle(color: kBlack, fontSize: 20, fontWeight: FontWeight.w600),
        prefixIcon:  const Icon(Icons.search,color: kBlack,),
        suffixIcon: SizedBox(
          height: 30,
          width: 30,
          child: Card(
            color: kMain,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
            child: IconButton(onPressed: (){}, icon: const Icon(Icons.menu,color: kWhite,)),

          ),
        ),

      ),
    ),
  );
}