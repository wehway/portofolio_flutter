// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class InterestItem extends StatelessWidget {

  final String name;

  const InterestItem({ Key? key, required this.name }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
                    children: [
                      Container(
                        width: 16,
                        height: 16,
                        margin: EdgeInsets.only(right: 6),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/icon_check.png'),
                            ),
                        ),
                      ),
                      Text(name,
                      style: blackTextStyle,
                      ),
                    ],
                  ),
    );
  }
}