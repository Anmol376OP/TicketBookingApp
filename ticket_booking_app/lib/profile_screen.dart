import 'package:flutter/material.dart';
import 'package:ticket_booking_app/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(height: 50,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(image: AssetImage('logo.png'),fit: BoxFit.fitHeight),
                ),
              ),
              const SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Book Tickets',style: Styles.headlineStyle1,),
                  // const SizedBox(height: 2,),
                  Text('New-York',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey.shade500),),
                  const SizedBox(height: 4,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xFFFEF4F3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFF526799),
                          ),
                          child: Icon(Icons.shield,color: Colors.white,size: 15,),
                        ),
                        const SizedBox(width: 5,),
                        Text('Premium status',style: TextStyle(color: Color(0XFF526799),fontWeight: FontWeight.w500),),
                        const SizedBox(width: 5,),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(height: 5,),
                  InkWell(
                      onTap: (){
                      },
                      child: Text('Edit',style: Styles.textStyle.copyWith(color: Styles.primaryColor,fontWeight: FontWeight.w300),)
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8,),
          Divider(color: Colors.grey.shade300,),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(16)
                ),
              ),
              Positioned(
                right: -45,
                top: -45,
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(width: 18,color: Color(0xFF264CD2))
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18,vertical: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon (Icons.lightbulb_rounded),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    const SizedBox(width: 5,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('You\'ve got a new reward',style: Styles.headlineStyle2.copyWith(color: Colors.white,fontWeight: FontWeight.w500),),
                        Text('You\'ve 95 flights this year',style: Styles.headlineStyle3.copyWith(color: Colors.white.withOpacity(0.8),fontWeight: FontWeight.w500),),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Text('Accumulated Miles', style: Styles.headlineStyle2,),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text('196551',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 45,color: Styles.textColor),)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.grey.shade100)]
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Miles accrued',style: Styles.headlineStyle4,),
                    Text('12 June,2022',style: Styles.headlineStyle4,),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('23042',style: Styles.headlineStyle4.copyWith(color: Colors.black,fontWeight: FontWeight.w500),),
                    Text('Airline CO',style: Styles.headlineStyle4.copyWith(color: Colors.black,fontWeight: FontWeight.w500),),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Miles',style: Styles.headlineStyle4,),
                    Text('Received From',style: Styles.headlineStyle4,),
                  ],
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('556',style: Styles.headlineStyle4.copyWith(color: Colors.black,fontWeight: FontWeight.w500),),
                    Text('Air India',style: Styles.headlineStyle4.copyWith(color: Colors.black,fontWeight: FontWeight.w500),),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Miles',style: Styles.headlineStyle4,),
                    Text('Received From',style: Styles.headlineStyle4,),
                  ],
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('78104',style: Styles.headlineStyle4.copyWith(color: Colors.black,fontWeight: FontWeight.w500),),
                    Text('Exuma',style: Styles.headlineStyle4.copyWith(color: Colors.black,fontWeight: FontWeight.w500),),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Miles',style: Styles.headlineStyle4,),
                    Text('Received From',style: Styles.headlineStyle4,),
                  ],
                ),
                const SizedBox(height: 15,),
              ],
            ),
          ),
          const SizedBox(height: 15 ,),
          Center(
            child: Text('How to get more miles?',style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.w500),),
          )
        ],
      ),
    );
  }
}
