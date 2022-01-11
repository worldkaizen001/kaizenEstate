import 'package:flutter/material.dart';
import 'package:kaizen_estate/constant/colors.dart';
import 'package:kaizen_estate/widgets/card.dart';

class TourScreen extends StatelessWidget {
  const TourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: Container(
          padding: kHorizontalPadding20,
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("images/house2.jpg"),fit: BoxFit.cover)),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 1,
            child: Column(
            children: [
              Row(

                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        color: kWhite,
                        child: Center(child: IconButton(onPressed: (){
                          Navigator.pop(context);
                        }, icon: const Icon(Icons.arrow_back_ios,color: kMain,size: 18,)))),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.10 ,
                  ),
                  const Text('Live Tour',style: TextStyle(fontSize: 18,color: kWhite,fontWeight: FontWeight.w600),),
                ],
              ),

               const SizedBox(height: 160,),
               Padding(
                padding: EdgeInsets.only(right: 60),
                child: Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    height: 40,
                    width: 60,
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      color: Colors.transparent,
                        child: const Center(child: Text('Light',style: TextStyle(color: Colors.white),))),

                  ),),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    height: 40,
                    width: 60,
                    child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        color: Colors.transparent,
                        child: const Center(child: Text('Cabinet',style: TextStyle(color: Colors.white),))),

                  ),),
              ),
              const SizedBox(height: 90,),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 40,
                    width: 60,
                    child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        color: Colors.transparent,
                        child: const Center(child: Text('Heater',style: TextStyle(color: Colors.white),))),

                  ),),
              )

          ],
        ),

        ),
      ),
    );
  }
}
