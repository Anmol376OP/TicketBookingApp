import 'package:flutter/material.dart';
import 'package:ticket_booking_app/app_styles.dart';
import 'package:ticket_booking_app/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket,required this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.85,
      height: 158,
      child: Container(
        margin: EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: isColor ==null? Color(0xFF526799) : Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21),topRight: Radius.circular(21),),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('${ticket['c1']}',style: Styles.headlineStyle4.copyWith(color: isColor==null? Colors.white:Colors.black),),
                      Expanded(child: Container(),),
                      ThickContainer(isColor: isColor,),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context,BoxConstraints constraints){
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: List.generate((constraints.constrainWidth()/6).floor(), (index) => Text('-',style: TextStyle(color: isColor==null? Colors.white:Colors.lightBlueAccent),)),

                                );
                              },
                            ),
                          ),
                          Center(child: Padding(
                            padding: const EdgeInsets.only(top: 1),
                            child: Transform.rotate(angle: 1.58,child: Icon(Icons.local_airport_rounded,color: isColor==null? Colors.white:Colors.lightBlueAccent,),),
                          ),),
                        ]
                      ),

                      ),
                      ThickContainer(isColor: isColor),
                      Expanded(child: Container(),),
                      Text('${ticket['c2']}',style: Styles.headlineStyle4.copyWith(color: isColor==null? Colors.white:Colors.black),),
                    ],
                  ),
                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text('${ticket['l1']}',style: Styles.headlineStyle5.copyWith(color: isColor==null? Colors.white:Colors.black),),
                      ),
                      Text('${ticket['tf']}',style: Styles.headlineStyle5.copyWith(color: isColor==null? Colors.white:Colors.black),),
                      SizedBox(
                        width: 100,
                        child: Text('${ticket['l2']}',textAlign: TextAlign.end,style: Styles.headlineStyle5.copyWith(color: isColor==null? Colors.white:Colors.black),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: isColor==null? Styles.orangeColor:Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor==null?Color(0xFFEEEDF2):Colors.white,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LayoutBuilder(
                      builder: (BuildContext context,BoxConstraints constraints){
                        return Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          direction: Axis.horizontal,
                          children: List.generate((constraints.constrainWidth()/15).floor(), (index) => const SizedBox(width: 5,height: 1,child: DecoratedBox(decoration: BoxDecoration(color: Colors.white)),)),
                        );
                      },
                    ),
                  ),),

                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor==null?Color(0xFFEEEDF2):Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: isColor==null? Styles.orangeColor:Colors.white,
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(21),bottomRight: Radius.circular(21),),
              ),
              padding: const EdgeInsets.only(left: 16,top: 10,right: 16,bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text('${ticket['day']}',style: Styles.headlineStylen.copyWith(color: isColor==null? Colors.white:Colors.black),),
                      ),
                      Text('${ticket['tf']}',style: Styles.headlineStylen.copyWith(color: isColor==null? Colors.white:Colors.black),),
                      SizedBox(
                        width: 100,
                        child: Text('${ticket['num']}',textAlign: TextAlign.end,style: Styles.headlineStylen.copyWith(color: isColor==null? Colors.white:Colors.black),),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text('Date',style: Styles.headlineStyle5.copyWith(color: isColor==null? Colors.white:Colors.black),),
                      ),
                      Text('Departure',style: Styles.headlineStyle5.copyWith(color: isColor==null? Colors.white:Colors.black),),
                      SizedBox(
                        width: 100,
                        child: Text('Number',textAlign: TextAlign.end,style: Styles.headlineStyle5.copyWith(color: isColor==null? Colors.white:Colors.black),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
