// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class PhotoItem extends StatelessWidget {

  final String imaegeUrl;

  const PhotoItem({ Key? key, required this.imaegeUrl }) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    return 
                  Container(
                    width: 70,
                    height: 70,
                    margin: EdgeInsets.only(right: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(imaegeUrl),
                    ),),
                  );                  
  }
}