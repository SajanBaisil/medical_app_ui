import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DoctorCard extends StatelessWidget {
  final name;
  final String rating;
  final imagepath;
  final doctortile;
  const DoctorCard({Key? key, required this.imagepath,required this.rating, required this.name, required this.doctortile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,bottom: 20),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Column(
            children: [
              //picture of doctor
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  imagepath,
                  height: 80,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              //rating
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow[600],
                  ),
                   Text(
                   rating ,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              //doctor name
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 5,
              ),

              //doctor title
              Text(doctortile)
            ],
          ),
        ),
      ),
    );
  }
}
