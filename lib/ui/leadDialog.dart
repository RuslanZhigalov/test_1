import 'package:flutter/material.dart';

Dialog leadDialog = Dialog(
  child: Container(
    height: 243,
    width: 290,
    color: Colors.white,
    child: Column(
      children: [
        Container(
          height: 110,
          width: 137,
          margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 76),
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/sl.png'),
          )),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 8, 30, 8),
          child: Text('Ваше обращение принято', style: TextStyle(fontSize: 17)),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(14, 0, 30, 16),
          child: Text(
            'Специалист свяжется с вами в ближайшее время',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              color: Color(0xFF838385),
            ),
          ),
        ),
      ],
    ),
  ),
);
