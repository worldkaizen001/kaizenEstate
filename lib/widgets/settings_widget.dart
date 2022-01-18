import 'package:flutter/material.dart';
import 'package:kaizen_estate/constant/colors.dart';

class SettingsField extends StatelessWidget {
 final String? text;
 final Function? callBack;
 final IconData? icon;
  const SettingsField({this.callBack, this.text,this.icon}) : super();

  @override
  Widget build(BuildContext context) {
    return InkWell(
     borderRadius: BorderRadius.circular(12),

        onTap: ()=> callBack,

        child: ListTile(leading: Icon(icon,color: kMain2,size: 20,),title: Text('$text',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black87),),));
  }
}
