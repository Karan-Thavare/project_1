import 'package:flutter/material.dart';
import 'package:tourist_app/routes.dart';
import '../models/restaurant.dart';

class RestaurantsPage extends StatelessWidget {

  final List<Restaurant> restaurant = [
    Restaurant(
      resName: 'Uttar Dakshin by Naivedhyam',
      imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipNuu9FqGPk8U-5IzCI778JDJSsOjw6g9jiK7Kaj=s1360-w1360-h1020-rw',
      address: 'Mount Rd Ext, Opp. LIC Office, Sadar, Nagpur.',
      rating : "4.4",
    ),
    Restaurant(
      resName: 'Ashoka Restaurant',
      imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipNwDD1v_ex0Z7AXRjY2RwOV5dZojw-GPXGbahw0=s1360-w1360-h1020-rw',
      address: 'Mount Rd, Opp. LIC Office, Sadar 60, Nagpur.',
      rating : "4.3",
    ),
    Restaurant(
      resName: 'Pablo-The Art Cafe & Lounge',
      imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipPa2OCHNyR1l87W3t-pdo2zOq2jPTKhHu6QO2le=s1360-w1360-h1020-rw',
      address:  'Fluffy flattened rice served with a spicy curry.',
      rating : "4.2",
    ),
    Restaurant(
      resName: 'Nanking\'s',
      imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipMas6M5i9cUyzMSYRhVuHopZBR53jMr9SkziBIZ=s1360-w1360-h1020-rw',
      address:  'Opp Axis Bank, Sita Kunj, Civil Lines, Nagpur.',
      rating : "4.2",
    ),
    Restaurant(
      resName: 'High Steaks',
      imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipNB4jWcNntcblFe0qIgZtwfM_mTR0U138px7tZZ=s1360-w1360-h1020-rw',
      address:  'Hotel Centre Point, 24, Central Bazar Road, Ramdaspeth, Nagpur.',
      rating : "4.5",
    ),
    Restaurant(
      resName: 'The Breakfast Story',
      imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipPl_sptm-ED4_hX3Uc3wM_VO3H6ggQ0pdnNYTEW=s1360-w1360-h1020-rw',
      address:  'Sai Sagar Apartment, Hingna Rd, opp. Transmitting Station, Nagpur.',
      rating : "4.0",
    ),
    Restaurant(
      resName: 'Hitchki Nagpur',
      imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipNRGvlqNcn0GJBlB97UdTcyWQchC00qkj6iBSO3=s1360-w1360-h1020-rw',
      address:  'Park Avenue, Terrace Floor, Chhaoni Rd, New Colony, Nagpur.',
      rating : "4.3",
    ),
    Restaurant(
      resName: 'Majestic Masala',
      imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipNQdmHexlCj2f5BW5EYprJlQk6RQAhKbg79Z6I1=s1360-w1360-h1020-rw',
      address:  '37, Central Bazar Road, Farm Land, Ramdaspeth, Nagpur.',
      rating : "4.2",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          "Famous Restaurants in Nagpur",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),

      body: ListView.builder(
        itemCount: restaurant.length,
        itemBuilder: (context, index) {
          final food = restaurant[index];
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                AppRoutes.DETAIL_RESTAURANTS_ROUTE,
                arguments: food,
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      food.imageUrl,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  food.resName,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Icon(Icons.star, color: Colors.orangeAccent),
                              SizedBox(width: 4),
                              Text(
                                food.rating,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 6),
                          Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.redAccent, size: 18),
                              SizedBox(width: 5),
                              Expanded(
                                child: Text(
                                  food.address,
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
