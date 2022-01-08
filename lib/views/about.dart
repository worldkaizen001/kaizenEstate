import 'package:flutter/material.dart';
import 'package:kaizen_estate/constant/colors.dart';
import 'package:kaizen_estate/constant/sizedbox.dart';
import 'package:kaizen_estate/constant/textstyles.dart';
import 'package:kaizen_estate/views/homepage.dart';
import 'package:kaizen_estate/views/tour_screen.dart';
import 'package:kaizen_estate/views/video_call.dart';
import 'package:kaizen_estate/widgets/buttons.dart';
import 'package:kaizen_estate/widgets/card.dart';
import 'package:kaizen_estate/widgets/scrolable_row.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height *0.4,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [

                      Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height *0.4,
                            width: 300,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),image: const DecorationImage(image: AssetImage('images/house1.jpg',),fit: BoxFit.cover),),

                          ),
                          kSizedBoxW10,
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),

                            height: MediaQuery.of(context).size.height *0.4,
                            width: 300,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),image: const DecorationImage(image: AssetImage('images/house2.jpg',),fit: BoxFit.cover),),

                          ),
                          kSizedBoxW10,
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),

                            height: MediaQuery.of(context).size.height *0.4,
                            width: 300,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),image: const DecorationImage(image: AssetImage('images/house3.jpg',),fit: BoxFit.cover),),

                          ),
                          kSizedBoxW10,
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),

                            height: MediaQuery.of(context).size.height *0.4,
                            width: 300,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),image: const DecorationImage(image: AssetImage('images/house4.jpg',),fit: BoxFit.cover),),

                          ),

                        ],
                      )
                    ],
                  ),
                ),
                kSizedBoxH20,
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Amenities', style: categories,),
                      kSizedBoxH15,
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap:(){
                              Navigator.push(context, PageRouteBuilder(
                                  transitionDuration: const Duration(seconds: 2),
                                  transitionsBuilder: (context, animation, secondaryAnimation, child){
                                    final slide = Tween(begin: Offset(1,0),end: const Offset(0,0)).animate(animation);
                                    return FadeTransition(opacity: animation,child: child,);
                                  },

                                  pageBuilder: (context, animation, secondaryAnimation,){
                                    return const About();}));

                            },

                              child: cardIconText('Rooms', Icons.hotel)),
                          cardIconText('Wifi', Icons.wifi),
                          cardIconText('Pool', Icons.pool),
                          cardIconText('Cafe', Icons.emoji_food_beverage),
                        ],
                      ),
                      kSizedBoxH20,
                       GestureDetector(onTap:(){

                       },child: Text('Description', style: categories,)),
                      kSizedBoxH10,
                      const Text('Simple house with modern architecture and cool interior located at prime location. Take a virtual tour and discover it from inside.', ),
                      const SizedBox(
                        height: 35,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage('images/man2.jpg',),
                              ),
                              kSizedBoxW15,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Joe Allwell',style: categories,),
                                  kSizedBoxH5,
                                  Text('Owner',),

                                ],
                              ),
                            ],
                          ),
                          kSizedBoxW10,
                           CircleAvatar(
                            backgroundColor: kWhite,
                            radius: 25,
                            child: IconButton(onPressed: (){}, icon: const Icon(Icons.chat, color: kMain,) ),

                          ),
                           CircleAvatar(
                            backgroundColor: kWhite,
                            radius: 25,
                            child: IconButton(onPressed: (){
                              Navigator.push(context, PageRouteBuilder(
                                  transitionDuration: const Duration(seconds: 2),
                                  transitionsBuilder: (context, animation, secondaryAnimation, child){
                                    final curved = CurvedAnimation(parent: animation, curve: Curves.bounceInOut);
                                    return ScaleTransition(scale: curved,child: child,);
                                  },

                                  pageBuilder: (context, animation, secondaryAnimation,){
                                    return const VideoCall();}));
                            }, icon: const Icon(Icons.call, color: kMain,) ),

                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                       Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                onSurface: kMain,
                                onPrimary: kMain,
                                primary: Colors.white,
                                padding: const EdgeInsets.symmetric(horizontal: 53,vertical: 20),

                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23),
                                  side:  const BorderSide(color: kMain, width: 1),
                                ),

                              ),
                              autofocus: false,

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
                              child:  const Text(' Live Tour', style:  TextStyle(color: kMain,fontSize: 15,fontWeight: FontWeight.w700),),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                onSurface: kWhite,
                                onPrimary: kDarkAsh,
                                primary: kMain,
                                padding: EdgeInsets.symmetric(horizontal: 53,vertical: 20),

                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23),
                                  side:  BorderSide(color: kMain, width: 1),
                                ),

                              ),
                              autofocus: false,

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
                              child:  const Text(' Rent Now', style:  TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w700),),
                            ),
                          ],
                        ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
