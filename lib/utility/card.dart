import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Categorycard extends StatelessWidget {
  final iconPath;
  final name;
  const Categorycard({Key? key , required this.iconPath, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        padding: EdgeInsets.all(12),
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple[100],
        ),
        child: Row(
          children: [
            Image.asset(
              iconPath,
              height: 30,
            ),
            SizedBox(width: 20,),
            Text(name),
          ],
        ),
      ),
    );
  }
}
