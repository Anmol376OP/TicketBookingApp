import 'package:flutter/material.dart';
import 'package:ticket_booking_app/app_info_list.dart';
import 'package:ticket_booking_app/app_styles.dart';
import 'package:ticket_booking_app/ticket_view.dart';
import 'package:barcode_widget/barcode_widget.dart';
class TicketTabs extends StatelessWidget {
  const TicketTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.all(16),
            children: [
              const SizedBox(height: 40,),
              Text('Tickets',style: Styles.headlineStyle1.copyWith(fontSize: 35,fontWeight: FontWeight.bold),),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.40,
                    padding: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: Center(child: Text('Upcoming',style: Styles.headlineStyle3,)),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.44,
                    padding: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.shade300,
                    ),
                    child: Center(child: Text('Previous',style: Styles.headlineStyle3.copyWith(color: Colors.grey),)),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(right: 16),
                child: TicketView(ticket: ticketList[0],isColor: true,),
              ),
              const SizedBox(height: 5,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Anmol Srivastava', style: Styles.headlineStyle3,),
                            const SizedBox(height: 5,),
                            Text('Passenger', style: Styles.headlineStyle4,),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('5221 364569', style: Styles.headlineStyle3,),
                            const SizedBox(height: 5,),
                            Text('Passport', style: Styles.headlineStyle4,),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('0055 444 2167', style: Styles.headlineStyle3,),
                            const SizedBox(height: 5,),
                            Text('Ticket Number', style: Styles.headlineStyle4,),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('BS50E1', style: Styles.headlineStyle3,),
                            const SizedBox(height: 5,),
                            Text('Booking Code', style: Styles.headlineStyle4,),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(height: 16,width: 45,child: Image(image: AssetImage('visa.jpg'),fit: BoxFit.fitWidth,),),
                                Text(' *** 2465',style: Styles.headlineStyle3,)
                              ],
                            ),
                            const SizedBox(height: 5,),
                            Text('Payment method', style: Styles.headlineStyle4,),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('\$255.49', style: Styles.headlineStyle3,),
                            const SizedBox(height: 5,),
                            Text('Price', style: Styles.headlineStyle4,),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 25,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        data: 'https://github.com/Anmol376OP',
                        drawText: false,
                        height: 70,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16,),
              Container(
                  padding: EdgeInsets.only(right: 16),
                  child: TicketView(ticket: ticketList[0], isColor: null),
              ),
            ],
          )
        ],
      ),
    );
  }
}
