import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_app_ui/utility/card.dart';
import 'package:medical_app_ui/utility/doctorcard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          //appbar
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25,top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:const [
                    Text('Hello,',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    SizedBox(height: 8,),
                    Text('Sajan',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                  ],
                ),
                Container(
                  padding:const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(22)
                  ),
                  child:const Icon(Icons.person)),
              ],
            ),

          ),
         const SizedBox(height: 25,),
         //card

         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 25),
           child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(color: Colors.pink[100], borderRadius: BorderRadius.circular(12)),
            child: Row(
            children: [
              //animation or cute picture
              Container(
                height: 100,
                width: 100,
                child: Lottie.asset('assets/lottie/88284-doctor-prescription.json')
              ),
              SizedBox(width: 20,),

              //How do you feel + get started button
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const  Text(
                      'How do you feel?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,fontStyle: FontStyle.italic),
                    ),
                  const  SizedBox(height: 12,),
                    Text(
                      'Fill out your medical card right now',style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 12,),
                    Container(
                      
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(22)
                      ),
                      child: Center(
                        child: TextButton(onPressed: (){}, child:const Text('Get Started',style: TextStyle(color: Colors.white),)),
                      ),
                    )
                  ],
                ),
              )
            ],
           ),

           ),
         ) ,
        const SizedBox(height: 25,),
         //search bar
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 25),
           child: Container(
            padding:const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.deepPurple[100],
              borderRadius: BorderRadius.circular(12)
            ),
             child:const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'How can we help you',
                prefixIcon: Icon(Icons.search)
              ),
             ),
           ),
         ),
         SizedBox(height: 25,),


         //horizontal listview -> categories: dentist,surgeon etc
         Container(
          height: 80,
          child: ListView(
            scrollDirection: Axis.horizontal,
            
            children:const [
                Categorycard(iconPath: 'assets/medical_icons/tooth.png', name: 'Dentist',),
                Categorycard(iconPath: 'assets/medical_icons/surgeon.png', name: 'Surgeon',),
                Categorycard(iconPath: 'assets/medical_icons/pills.png', name: 'Pharmacist',),
                Categorycard(iconPath: 'assets/medical_icons/tooth.png', name: 'Dentist',),
                Categorycard(iconPath: 'assets/medical_icons/surgeon.png', name: 'Surgeon',),
                Categorycard(iconPath: 'assets/medical_icons/pills.png', name: 'Pharmacist',),

            ],
          ),
         ),
        const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Doctor list',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text('See all',style: TextStyle(fontSize: 18),)
            ],
          ),
        ),
        const SizedBox(height: 20,),
        
         //doctor list

     Expanded(child: ListView(
      scrollDirection: Axis.horizontal,
      children:const [
        DoctorCard(imagepath: 'assets/images/images.jpeg', rating: '4.6',name: 'Dr.Venkatesh lal', doctortile:'Therapist' ,),
        DoctorCard(imagepath: 'assets/images/images2.jpeg',rating: '4.5',name: 'Dr.Shanil', doctortile:'Physchologist' ,),
        DoctorCard(imagepath:'assets/images/images3.jpeg', rating: '4.7', name: 'Dr.shernass', doctortile:'Surgeon' ),
        DoctorCard(imagepath: 'assets/images/images.jpeg', rating: '4.6',name: 'Dr.Venkatesh lal', doctortile:'Therapist' ,),
        DoctorCard(imagepath: 'assets/images/images2.jpeg',rating: '4.5',name: 'Dr.Shanil', doctortile:'Physchologist' ,),
        DoctorCard(imagepath:'assets/images/images3.jpeg', rating: '4.7', name: 'Dr.shernass', doctortile:'Surgeon' ),
      ],
     ))


        ]),
      ),
    );
  }
}
