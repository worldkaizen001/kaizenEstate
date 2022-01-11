import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:kaizen_estate/constant/colors.dart';
import 'package:kaizen_estate/views/about.dart';
import 'package:kaizen_estate/views/homepage.dart';
import 'package:kaizen_estate/views/tour_screen.dart';


class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

  final navigationKey = GlobalKey<CurvedNavigationBarState>();

  int index = 0;

  final screens = [

    const Homepage(),
      // const About(),
     const TourScreen(),
    const TourScreen(),
  ];


  @override

  Widget build(BuildContext context) {
    final items = <Widget>[

      const Icon(Icons.home,size: 25,),
      const Icon(Icons.favorite,size: 25,),
      const Icon(Icons.settings,size: 25,),
    ];

    return SafeArea(
      top: false,
      child: Scaffold(
        body: screens[index],
        extendBody: true,
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(

             iconTheme: const IconThemeData(color: kWhite)
          ),
          child: CurvedNavigationBar(
            backgroundColor: Colors.white54,


            key: navigationKey,
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 300),
            color: kDarkAsh ,
            buttonBackgroundColor: kMain,

            height: 60 ,
              index: index,
              onTap: (index) => setState(() => this.index = index),


              items: items),
        ),


      ),
    );
  }
}
