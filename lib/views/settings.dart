import 'package:flutter/material.dart';
import 'package:kaizen_estate/constant/colors.dart';
import 'package:kaizen_estate/widgets/settings_widget.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height:40,),
                Row(
                  children: [

                    const CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('images/man2.jpg',),
                    ),
                    SizedBox(width: 25,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Text('Bayo Olubumi',style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500,color: Colors.black),),
                        const SizedBox(height: 5,),
                        Text('Lagos, Nigeria',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700,color: Colors.grey.shade500))
                      ],
                    ),

                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.035,
                ),








                const SettingsField(text: 'Account',icon: Icons.person,),
                const SizedBox(
                  height: 10,
                  child: Divider(),
                ),
                const SettingsField(text: 'Activities',icon: Icons.arrow_back_ios,),
                const SizedBox(
                  height: 10,
                  child: Divider(),
                ),
                const SettingsField(text: 'Notification',icon: Icons.alarm,),
                const SizedBox(
                  height: 10,
                  child: Divider(),
                ),
                const SettingsField(text: 'Location',icon: Icons.location_on_rounded,),
                const SizedBox(
                  height: 10,
                  child: Divider(),
                ),
                const SettingsField(text: 'About',icon: Icons.article_outlined,),
                const SizedBox(
                  height: 10,
                  child: Divider(),
                ),
                const SettingsField(text: 'Contact Us',icon: Icons.alternate_email,),


                const SizedBox(
                  height: 30,

                ),







                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,

                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,

                       children: [
                         Icon(Icons.logout,color: kMain2,size: 14,),
                         TextButton(
                             onPressed: () {  },
                             child: Text('Logout',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.grey),))

                       ],
                     ),
                   ],
                 )



              ],
            ),
          ),
        ),
      ),
    );
  }


}
