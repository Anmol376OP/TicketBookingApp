import 'package:flutter/material.dart';
import 'package:ticket_booking_app/app_layout.dart';
import 'package:ticket_booking_app/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        children: [
          const SizedBox(height: 40,),
          Text('What are you looking for ?',style: Styles.headlineStyle1.copyWith(fontSize: AppLayout.getWidth(context, 35)),),
          const SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(AppLayout.getHeight(context, 3)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              // color: Color(0xFFF4F6FD)
              color: Styles.bgColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.40,
                  padding: EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  child: Center(child: Text('Airline Tickets')),
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.44,
                  padding: EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  child: Center(child: Text('Hotels')),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25,),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              children: [
                const Icon(Icons.flight_takeoff_rounded,color: Colors.grey,),
                const SizedBox(width: 10,),
                Text('Departures',style: Styles.textStyle,),
              ],
            ),
          ),
          const SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              children: [
                const Icon(Icons.flight_land_rounded,color: Colors.grey,),
                const SizedBox(width: 10,),
                Text('Arrivals',style: Styles.textStyle,),
              ],
            ),
          ),
          const SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.blueAccent,
            ),
            child: Center(child: Text('Find Tickets',style: Styles.textStyle.copyWith(color: Colors.white),)),
          ),
          const SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Upcoming Flights', style: Styles.headlineStyle2,),
              InkWell(
                onTap: (){
                  // print('tap++');
                },
                child: Text('View All',style: Styles.headlineStyle4,),
              ),
            ],
          ),
          const SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                height: AppLayout.getHeight(context, 380),
                width: MediaQuery.of(context).size.width*0.42,
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(context, 190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                            image: AssetImage('flight.jpg')),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Text('20% discount on this flight,don\'t miss the chance.',style: Styles.headlineStyle2,),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.42,
                    height: AppLayout.getHeight(context, 160),
                    decoration: BoxDecoration(
                      color: Color(0xFF3AB8B8),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Discount\nfor survey',style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                        const SizedBox(height: 10,),
                        Text('Take the survey about our services',style: Styles.headlineStyle3.copyWith(color: Colors.white),)
                      ],
                    ),
                  ),
                  const SizedBox(height: 25,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.42,
                    height: AppLayout.getHeight(context, 190),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        Text('Hurry !!!',style: Styles.headlineStyle2.copyWith(color: Colors.white),textAlign: TextAlign.center,),
                        const SizedBox(height: 5,),
                        Text('Seats are getting booked fast, reserve yours now. Basic tickets starting @500',style: Styles.headlineStyle3.copyWith(color: Colors.white),)
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
