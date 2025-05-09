import 'dart:ui';
import 'package:flutter/material.dart';
import 'hotel_detail_page.dart';

class HotelsPage extends StatelessWidget {
  final List<Map<String, dynamic>> hotels = [
    {
      'name': 'Radisson Blu Hotel',
      'imageUrl':
          'https://ik.imgkit.net/3vlqs5axxjf/external/https://media.iceportal.com/114051/photos/66057989_XL.jpg?tr=w-940%2Ch-529%2Cfo-auto%2Cdi-ami-fallback.png',
      'location': 'Wardha Road, Nagpur',
      'price': '₹4,500/night',
      'rating': '4.5',
    },
    {
      'name': 'Le Méridien',
      'imageUrl':
          'https://cache.marriott.com/content/dam/marriott-renditions/dm-static-renditions/md/apec/hws/n/nagmd/en_us/photo/unlimited/assets/nagmd-exterior-8773-wide-hor.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=1336px:*',
      'location': 'MIHAN, Nagpur',
      'price': '₹6,000/night',
      'rating': '4.7',
    },
    {
      'name': 'Hotel Centre Point',
      'imageUrl':
          'https://lh3.googleusercontent.com/p/AF1QipPefMm8fSLDggwbUBAdMyZjdZSdhwJdJnhMkxES=w574-h384-n-k-rw-no-v1',
      'location': 'Ramdas Peth, Nagpur',
      'price': '₹3,800/night',
      'rating': '4.2',
    },
    {
      'name': 'Tuli Imperial',
      'imageUrl':
          'https://media-cdn.tripadvisor.com/media/photo-s/25/b3/8c/dc/hotel-tuli-international.jpg',
      'location': 'Ramdaspeth, Nagpur',
      'price': '₹4,200/night',
      'rating': '4.3',
    },
    {
      'name': 'The Pride Hotel',
      'imageUrl':
          'https://cf.bstatic.com/xdata/images/hotel/max1024x768/66098306.jpg?k=8f312d4dca1b5a36eac94d5b73b86e662c00d0b8bd03160f8b8a4ea0c60ff98f&o=&hp=1',
      'location': 'Wardha Road, Nagpur',
      'price': '₹4,000/night',
      'rating': '4.1',
    },
    {
      'name': 'The Legend Inn',
      'imageUrl':
          'https://assets.simplotel.com/simplotel/image/upload/x_9,y_0,w_1422,h_800,c_crop,q_80,fl_progressive/w_900,h_506,f_auto,c_fit/hotel-legend-inn-nagpur/download_mxjqzs',
      'location': 'Wardha Road, Nagpur',
      'price': '₹3,200/night',
      'rating': '4.0',
    },
    {
      'name': 'Hotel Hardeo',
      'imageUrl':
          'https://q-xx.bstatic.com/xdata/images/hotel/max500/511965558.jpg?k=0c4082c913834276ca65ba4452bec1253067e9e59dfec9a37be452915128a648&o=',
      'location': 'Sitabuldi, Nagpur',
      'price': '₹2,800/night',
      'rating': '4.0',
    },
    {
      'name': 'Hotel LB',
      'imageUrl':
          'https://image.wedmegood.com/resized/720X/uploads/member/1252454/1590479124_Screenshot_6.png',
      'location': 'Residency Road, Nagpur',
      'price': '₹2,500/night',
      'rating': '3.9',
    },
    {
      'name': 'Hotel Orange City',
      'imageUrl':
          'https://pix10.agoda.net/hotelImages/23070948/-1/7be3d7f6b54eb2dc1255e87f4c85d73b.jpg?ca=24&ce=0&s=414x232',
      'location': 'Dharampeth, Nagpur',
      'price': '₹2,000/night',
      'rating': '3.8',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Best Hotels in Nagpur',
        style: TextStyle(fontWeight: FontWeight.bold),),
      backgroundColor: Colors.amberAccent,
      ),
      body: ListView.builder(
        itemCount: hotels.length,
        itemBuilder: (context, index) {
          final hotel = hotels[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HotelDetailPage(
                    name: hotel['name']!,
                    imageUrl: hotel['imageUrl']!,
                    location: hotel['location']!,
                    price: hotel['price']!,
                    rating: double.parse(hotel['rating']!),
                  ),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(12),
              height: 220,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      hotel['imageUrl']!,
                      width: double.infinity,
                      height: 220,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          color: Colors.black.withOpacity(0.4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(hotel['name']!,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16)),
                                  Text(hotel['location']!,
                                      style: const TextStyle(
                                          color: Colors.white70)),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(hotel['price']!,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.amber[400], size: 16),
                                      Text(hotel['rating']!,
                                          style: const TextStyle(
                                              color: Colors.white)),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// return InkWell(
//   onTap: () {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => HotelDetailPage(
//           name: hotel['name']!,
//           imageUrl: hotel['imageUrl']!,
//           location: hotel['location']!,
//           price: hotel['price']!,
//           rating: double.parse(hotel['rating']!),
//         ),
//       ),
//     );
//   },
//   child: Card(
//     margin: const EdgeInsets.all(10),
//     elevation: 5,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(12),
//     ),
//     child: ListTile(
//       contentPadding: const EdgeInsets.all(10),
//       leading: ClipRRect(
//         borderRadius: BorderRadius.circular(10),
//         child: Image.network(
//           hotel['imageUrl']!,
//           width: 80,
//           fit: BoxFit.cover,
//         ),
//       ),
//       title: Text(
//         hotel['name']!,
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//           fontSize: 18,
//         ),
//       ),
//       subtitle: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(hotel['location']!),
//           Text("Price: ${hotel['price']}"),
//           Row(
//             children: [
//               Icon(Icons.star, color: Colors.amber, size: 16),
//               Icon(Icons.star, color: Colors.amber, size: 16),
//               Icon(Icons.star, color: Colors.amber, size: 16),
//               Icon(Icons.star, color: Colors.amber, size: 16),
//               Icon(Icons.star_half, color: Colors.amber, size: 16),
//               SizedBox(width: 5),
//               Text(
//                 hotel['rating']!,
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 16,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     ),
//   ),
// );
