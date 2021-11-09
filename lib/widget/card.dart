import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 42,vertical: 28),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            offset:const Offset(0,10),
            blurRadius: 10,
            spreadRadius: 10
          )
        ]
      ),
      height: 144,
      alignment: Alignment.center,
      child: Column(
        children: const [
          Text('Super League U-19 Championship'),
          SizedBox(height: 10,),
          Text('Sponsered By'),
          SizedBox(height: 10,),
          Text('SEIKO')
        ],
      ),
    );
  }
}
