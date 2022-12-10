import 'package:flutter/material.dart';

class AppLayout{
  static getHeight(BuildContext context,double p){
    double x = MediaQuery.of(context).size.height/p;
    return MediaQuery.of(context).size.height/x;
  }
  static getWidth(BuildContext context,double p){
    double x = MediaQuery.of(context).size.width/p;
    return MediaQuery.of(context).size.width/x;
  }
}