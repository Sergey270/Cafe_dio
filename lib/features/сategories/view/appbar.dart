
import 'package:flutter/material.dart';

DateTime now = DateTime.now();
//

final appbar = AppBar(
  leadingWidth: 18,
  elevation: 0,
  leading: const Padding(
    padding: EdgeInsets.all(16),
    child: Icon(
      Icons.fmd_good_outlined,
      color: Colors.black,
      size: 30,
    ),
  ),
  title: const Padding(
    padding: EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Санкт-Петербург',
          style: TextStyle(
            color: Colors.black,
            fontFamily: '.SF UI Display',
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          '12 Августа, 2023',
          style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 0.5),
            fontFamily: '.SF UI Display',
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  ),
  actions: const [
    Padding(
      padding: EdgeInsets.only(right: 16.0),
      child:
          CircleAvatar(backgroundImage: AssetImage('assets/images/Avatar.png')),
    )
  ],
);
