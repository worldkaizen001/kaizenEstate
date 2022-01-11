import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaizen_estate/constant/colors.dart';
import 'package:kaizen_estate/constant/sizedbox.dart';
import 'package:kaizen_estate/constant/textstyles.dart';

Widget cardStyle(context, String? text, images, icon) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.12,
    width: MediaQuery.of(context).size.width * 0.28,
    child: Card(
      elevation: 1,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 13),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 40,
                child: Icon(icon),
              ),
              kSizedBoxH5,
              Text(
                '$text',
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget cardArrowBack() {
  return SizedBox(
    height: 65,
    width: 65,
    child: Card(
      color: kGrey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: SizedBox(
          height: 50,
          width: 50,
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            color: kWhite,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: const Center(
                child: Icon(
              Icons.arrow_back_ios_outlined,
              color: kMain,
            )),
          ),
        ),
      ),
    ),
  );
}

Widget cardAvatar() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    child: SizedBox(
      height: 60,
      width: 60,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        color: kWhite,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: kMain, width: 1)),
        child:  const Center(
            child: Image(image: AssetImage('images/house4.jpg'),)),
      ),
    ),
  );
}

Widget cardColumn(images) {
  return Container(
    height: 60,
    width: 60,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: kDarkAsh),
    child: Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: kMain,image: const DecorationImage(image: AssetImage('images/house2.jpg'))),

    ),
  );
}

Widget cardIconText(String? amen,IconData icon,) {
  return SizedBox(
    height: 80,
    width: 80,
    child: GestureDetector(
      child: Card(

        color: kWhite,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            ),
        child:   Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Icon(icon,color: kMain,size: 22,),
            kSizedBoxH5,
            Text('$amen',style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: kDarkAsh),)
          ],
        ),
      ),
    ),
  );
}


Widget fineCard(context, String? imageUrl, name, location, rating, price ) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
    height: MediaQuery.of(context).size.height * 0.35,
    width: MediaQuery.of(context).size.width * 0.5,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12), color: kWhite),
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image:  DecorationImage(
                  image: AssetImage('images/$imageUrl.jpg'), fit: BoxFit.cover)),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: SizedBox(
                  height: 45,
                  width: 70,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:   [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                        kSizedBoxW5,
                        Text(
                          '$rating',
                          style: tinyBold,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        kSizedBoxH10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text('$name',
              style: namingStyle,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children:  [
                const Icon(
                  Icons.location_on,
                  size: 15,
                  color: kGrey,
                ),
                Text(
                  '$location',
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w500, color: kGrey),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),


            RichText(
              text:  TextSpan(
                  text: '${price}',
                  style: amountStyle ,

                  children: const <TextSpan>[
                    TextSpan(
                        text: ' /Month',
                        style: TextStyle(fontWeight: FontWeight.w400,color: kAsh)),
                  ]),
            ),
          ],
        )
      ],
    ),
  );
}




