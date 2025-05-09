import 'package:flutter/material.dart';
import 'package:tourist_app/routes.dart';
import '../models/shopping.dart';

class ShoppingPlaces extends StatelessWidget {
  final List<Shopping> shopping = [
    Shopping(
      name : 'Empress Mall',
      imageUrl : 'https://media-cdn.tripadvisor.com/media/photo-s/28/11/25/2d/eaddit-a-photo.jpg',
      location : 'Gandhi Bagh, Nagpur',
      description : 'One of the largest malls with top brands, food court, and movie theatres.',
      type : 'Shopping Mall',
    ),
    Shopping(
      name : 'Sitabuldi Main Road',
      imageUrl : 'https://live.staticflickr.com/3670/10153188145_c1432336b3_b.jpg',
      location : 'Sitabuldi, Nagpur',
      description : 'Famous for street shopping, clothes, accessories and electronics.',
      type : 'Street Market',
    ),
   Shopping(
      name : 'Eternity Mall',
      imageUrl : 'https://upload.wikimedia.org/wikipedia/commons/9/92/Eternity_Mall_Nagpur.jpg',
      location : 'Wardha Road, Nagpur',
      description : 'Popular shopping mall with fashion stores and eateries.',
      type : 'Shopping Mall',
   ),
    Shopping(
      name : 'Dharampeth Shopping Street',
      imageUrl : 'https://content3.jdmagicbox.com/v2/comp/nagpur/r9/0712px712.x712.140121231527.m5r9/catalogue/milton-mall-dharampeth-nagpur-malls-h8ccdai3md.jpg',
      location : 'Dharampeth, Nagpur',
      description: 'High-end fashion boutiques, jewelry stores, and branded clothing.',
      type : 'Premium Market',
    ),
    Shopping(
      name : 'Central Mall',
      imageUrl : 'https://cimages1.touristlink.com/repository/N/A/G/P/U/R/C/E/nagpur-central-mall.jpg',
      location : 'Ramdaspeth, Nagpur',
      description : 'Features fashion brands, accessories, eateries and a cinema.',
      type : 'Shopping Mall',
    ),
    Shopping(
      name : 'Trillium Mall',
        imageUrl : 'https://www.shutterstock.com/shutterstock/photos/1783673660/display_1500/stock-photo-nagpur-maharashtra-india-trillium-mall-nagpur-1783673660.jpg',
      location : 'Medical Square, Nagpur',
      description : 'Modern mall with global brands, food court, and multiplex.',
      type : 'Shopping Mall',
    ),
    Shopping(
      name : 'Sadar Bazar',
        imageUrl : 'https://lh3.googleusercontent.com/xW7AFsTdWUKUVKuO0TRQu5RlMdbLmKj5EHwQnoKBfaxRPcZ74HYklAZTehXR73NapCSqQv7s6oQXhu06UBWtiHvzd6-J6IGeht5j5V5t',
      location : 'Sadar, Nagpur',
      description : 'Great place for ethnic wear, shoes, bags and eateries.',
      type : 'Street Market',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Places in Nagpur', style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.amberAccent,
        elevation: 0,
        centerTitle: true,
      ),

      body: ListView.builder(
        itemCount: shopping.length,
        itemBuilder: (context, index) {
          final place = shopping[index];
          return Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 5,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.DETAIL_SHOPPINGPLACE_ROUTE,
                  arguments: place,
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                    child: Image.network(
                      place.imageUrl,
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          place.name,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange),
                        ),
                        SizedBox(height: 6),
                        Text(
                          place.location,
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(height: 6),
                        Text(
                          place.description,
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(height: 6),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            place.type,
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
