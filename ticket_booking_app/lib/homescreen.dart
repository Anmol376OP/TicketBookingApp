import 'package:flutter/material.dart';
import 'package:ticket_booking_app/app_info_list.dart';
import 'package:ticket_booking_app/app_styles.dart';
import 'package:ticket_booking_app/hotel_screen.dart';
import 'package:ticket_booking_app/ticket_view.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Chaand pe hai apun',style: Styles.headlineStyle4,),
                        const SizedBox(height: 5,),
                        Text('Book Tickets',style: Styles.headlineStyle2,),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("logo.png"),)
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  child: Row(
                    children: const [
                      Icon(Icons.search,color: Colors.blueAccent,),
                      SizedBox(width: 5,),
                      Text('Search',style: TextStyle(color: Colors.grey),),
                    ],
                  ),
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
                )
              ],
            ),
          ),
          const SizedBox(height: 15,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: ticketList.map((ticket) => TicketView(ticket: ticket,isColor: null,)).toList(),
            ),
          ),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hotels', style: Styles.headlineStyle2,),
                InkWell(
                  onTap: (){
                    // print('tap++');
                  },
                  child: Text('View All',style: Styles.headlineStyle4,),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: hotelList.map((hotel) => HotelScreen(hotel: hotel)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
