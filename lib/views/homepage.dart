import 'package:flutter/material.dart';
import 'package:kaizen_estate/constant/colors.dart';
import 'package:kaizen_estate/constant/sizedbox.dart';
import 'package:kaizen_estate/constant/textstyles.dart';
import 'package:kaizen_estate/views/about.dart';
import 'package:kaizen_estate/widgets/card.dart';
import 'package:kaizen_estate/widgets/scrolable_row.dart';
import 'package:kaizen_estate/widgets/searchfield.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Padding(
            padding: kHorizontalPadding20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Row(
                      children: const [
                        Text('Lagos, Nigeria',style: country,),
                        Icon(Icons.keyboard_arrow_down_outlined, color: kMain
                          ,),
                      ],
                    ),
                    Row(
                      children: [
                        cardAvatar ()
                      ],
                    ),
                  ],
                ),
                const Text('Find Best', style: findBest,),
                kSizedBoxH10,
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, PageRouteBuilder(
                        transitionDuration: const Duration(seconds: 2),
                        transitionsBuilder: (context, animation, secondaryAnimation, child){
                          final slide = Tween(begin: Offset(1,0),end: const Offset(0,0)).animate(animation);
                          return FadeTransition(opacity: animation,child: child,);
                        },

                        pageBuilder: (context, animation, secondaryAnimation,){
                          return const About();}));

                  },
                    child: const Text('Home Near You', style:boldText,)),

                SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          scrollableRowMat(kMain, 'All', kMain
                          ),
                          kSizedBoxW10,
                          scrollableRowMat(Colors.white, 'Apartment', kGrey),
                          kSizedBoxW10,
                          scrollableRowMat(Colors.white, 'Apartment', kGrey),
                          kSizedBoxW10,
                          scrollableRowMat(Colors.white, 'Apartment', kGrey),
                          kSizedBoxW10,
                        ],
                      ),
                    ],
                  ),
                ),
                kSizedBoxH15,
                searchField (),
                kSizedBoxH15,

                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Best For You', style: categories,),

                    IconButton(onPressed: (){
                      Navigator.push(context, PageRouteBuilder(
                          transitionDuration: const Duration(seconds: 1),
                          transitionsBuilder: (context, animation, secondaryAnimation, child){
                            final slide = Tween(begin: const Offset(0,1),end: const Offset(0,0)).animate(animation);
                            return SlideTransition(position: slide,child: child,);
                          },

                          pageBuilder: (context, animation, secondaryAnimation,){
                            return const About();}));
                    }, icon: const Icon(Icons.menu,color: kGrey,))
                  ],
                ),
                kSizedBoxH15,
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        onTap:(){

                          Navigator.push(context, PageRouteBuilder(
                              transitionDuration: const Duration(seconds: 2),
                              transitionsBuilder: (context, animation, secondaryAnimation, child){
                                final curved = CurvedAnimation(parent: animation, curve: Curves.bounceInOut);
                                return ScaleTransition(scale: curved,child: child,);
                              },

                              pageBuilder: (context, animation, secondaryAnimation,){
                                return const About();}));
                        },
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            fineCard(context, "house1", 'Joe alfred', 'Lagos'),
                            kSizedBoxW15,
                            fineCard(context, "house2", 'Remi Oleyankun', 'Abuja'),
                            kSizedBoxW15,
                            fineCard(context, "house3", 'Tim Allwell', 'Calabar'),
                            kSizedBoxW15,
                            fineCard(context, "house4", 'Tommy egan', 'Warri'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
