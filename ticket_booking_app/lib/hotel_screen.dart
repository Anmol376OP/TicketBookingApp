import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
import 'package:ticket_booking_app/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String,dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Container(
      width: size*0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 17),
      margin: const EdgeInsets.only(right: 17,top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(fit: BoxFit.cover ,image: AssetImage('${hotel['image']}')),
            ),
          ),
          const SizedBox(height: 10,),
          Text('${hotel['place']}',style: Styles.headlineStyle2.copyWith(color: Colors.white),),
          const SizedBox(height: 5,),
          Text('${hotel['destination']}',style: Styles.headlineStyle3.copyWith(color: Colors.white),),
          const SizedBox(height: 16,),
          Text('\$${hotel['price']}/night',style: Styles.headlineStyle2.copyWith(color: Colors.grey),),
        ],
      ),
    );
  }
}
