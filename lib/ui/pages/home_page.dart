// ignore_for_file: unused_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:top_train/ui/widgets/destination_card.dart';
import 'package:top_train/ui/widgets/destination_tile.dart';
import '../../shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hallo,\nMediana',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 6),
                Text(
                  'Where to trip today?',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                ),
              ],
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image_profile.png'))),
            )
          ],
        ),
      );
    }

    Widget popularDestinations() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                name: 'Dufan',
                city: 'Jakarta Utara',
                imageUrl: 'assets/image_dufan.jpg',
                rating: 5.0,
              ),
              
              DestinationCard(
                name: 'Candi Borobudur',
                city: 'Magelang',
                imageUrl: 'assets/image_candi.jpg',
                rating: 5.0,
              ),
              DestinationCard(
                name: 'Pantai Greenbay',
                city: 'Banyuwangi',
                imageUrl: 'assets/image_pantai.jpg',
                rating: 5.0,
              ),
              DestinationCard(
                
                name: 'Ciwidey',
                city: 'Bandung',
                imageUrl: 'assets/image_ciwidey.jpg',
                rating: 5.0,
              ),
              
            ],
          ),
        ),
      );
    }

    Widget newDestinationTile(){
      return Container(
        margin: EdgeInsets.only(top: 30,
        left: defaultMargin,
        right: defaultMargin,
        bottom: 75,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('New This Year',
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
          ),
          DestinationTile(
            name: 'Danau Beratan',
            city: 'Tangerang',
            imageUrl: 'assets/image_destination6.png',
            rating: 5.0,
          ),
          DestinationTile(
            name: 'Monas',
            city: 'Jakarta Pusat',
            imageUrl: 'assets/image_monas.jpg',
            rating: 5.0,
          ),
          DestinationTile(
            name: 'Curug Nangka',
            city: 'Bogor',
            imageUrl: 'assets/image_curug.jpg',
            rating: 5.0,
          ),
          DestinationTile(
            name: 'Kebun Bunga Matahari',
            city: 'Kulonprogo',
            imageUrl: 'assets/image_bunga.jpg',
            rating: 5.0,
          ),
        ],
        ),
      );
    }

    return ListView(
      children: [
      header(),
      popularDestinations(),
      newDestinationTile(),],
    );
  }
}


