import 'package:flutter/material.dart';
import 'package:kaizen_estate/constant/colors.dart';
import 'package:kaizen_estate/views/tour_screen.dart';

class VideoCall extends StatelessWidget {
  const VideoCall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: kHorizontalPadding20,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/man2.jpg"), fit: BoxFit.cover)),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 1,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 150,
              width: 120,
              decoration:   BoxDecoration(
                borderRadius: BorderRadius.circular(12),

                  image: const DecorationImage(
                      image: AssetImage("images/girl1.jpg"), fit: BoxFit.cover)),

            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onSurface: kMain,
                  onPrimary: kMain,
                  primary: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 53,vertical: 10),

                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23),
                    side:  const BorderSide(color: kMain, width: 1),
                  ),

                ),
                autofocus: false,

                onPressed: (){
                  Navigator.pop(context);
                },
                child:  Column(
                  children: const [
                    Icon(Icons.call_end),
                    Text(' End Call', style:  TextStyle(color: kMain,fontSize: 15,fontWeight: FontWeight.w700),)
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onSurface: kMain,
                  onPrimary: kMain,
                  primary: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 53,vertical: 10),

                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23),
                    side:  const BorderSide(color: kMain, width: 1),
                  ),

                ),
                autofocus: false,

                onPressed: (){
                  // Navigator.push(context, PageRouteBuilder(
                  //     transitionDuration: const Duration(seconds: 2),
                  //     transitionsBuilder: (context, animation, secondaryAnimation, child){
                  //       final slide = Tween(begin: const Offset(1,0),end: const Offset(0,0)).animate(animation);
                  //       return FadeTransition(opacity: animation,child: child,);
                  //     },
                  //
                  //     pageBuilder: (context, animation, secondaryAnimation,){
                  //       return const TourScreen();}));
                },
                child: Column(
                  children: const [
                    Icon(Icons.message),
                    Text(' Message', style:  TextStyle(color: kMain,fontSize: 15,fontWeight: FontWeight.w700),)
                  ],
                ),
              ),
            ],
          )
        ],
      )
    ));
  }
}
