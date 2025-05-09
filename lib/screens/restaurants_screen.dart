import 'package:flutter/material.dart';
import '../models/food.dart';

class RestaurantsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final List<Food> foods = [
      Food(
        res_name: 'Uttar Dakshin by Naivedhyam',
        imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipNuu9FqGPk8U-5IzCI778JDJSsOjw6g9jiK7Kaj=s1360-w1360-h1020-rw',
        address: 'Mount Rd Ext, Opp. LIC Office, Sadar, Nagpur.',
        rating : "4.4",
      ),
      Food(
        res_name: 'Ashoka Restaurant',
        imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipNwDD1v_ex0Z7AXRjY2RwOV5dZojw-GPXGbahw0=s1360-w1360-h1020-rw',
        address: 'Mount Rd, Opp. LIC Office, Sadar 60, Nagpur.',
        rating : "4.3",
      ),
      Food(
        res_name: 'Pablo-The Art Cafe & Lounge',
        imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipPa2OCHNyR1l87W3t-pdo2zOq2jPTKhHu6QO2le=s1360-w1360-h1020-rw',
        address:  'Fluffy flattened rice served with a spicy curry.',
        rating : "4.2",
      ),
      Food(
        res_name: 'Nanking\'s',
        imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipMas6M5i9cUyzMSYRhVuHopZBR53jMr9SkziBIZ=s1360-w1360-h1020-rw',
        address:  'Opp Axis Bank, Sita Kunj, Civil Lines, Nagpur.',
        rating : "4.2",
      ),
      Food(
        res_name: 'High Steaks',
        imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipNB4jWcNntcblFe0qIgZtwfM_mTR0U138px7tZZ=s1360-w1360-h1020-rw',
        address:  'Hotel Centre Point, 24, Central Bazar Road, Ramdaspeth, Nagpur.',
        rating : "4.5",
      ),
      Food(
        res_name: 'The Breakfast Story',
        imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipPl_sptm-ED4_hX3Uc3wM_VO3H6ggQ0pdnNYTEW=s1360-w1360-h1020-rw',
        address:  'Sai Sagar Apartment, Hingna Rd, opp. Transmitting Station, Nagpur.',
        rating : "4.0",
      ),
      Food(
        res_name: 'Hitchki Nagpur',
        imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipNRGvlqNcn0GJBlB97UdTcyWQchC00qkj6iBSO3=s1360-w1360-h1020-rw',
        address:  'Park Avenue, Terrace Floor, Chhaoni Rd, New Colony, Nagpur.',
        rating : "4.3",
      ),
      Food(
        res_name: 'Majestic Masala',
        imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipNQdmHexlCj2f5BW5EYprJlQk6RQAhKbg79Z6I1=s1360-w1360-h1020-rw',
        address:  '37, Central Bazar Road, Farm Land, Ramdaspeth, Nagpur.',
        rating : "4.2",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Famous Restaurants in Nagpur",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (ctx, i) {
          final food = foods[i];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Restaurant Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      food.imageUrl,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              food.res_name,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.star, color: Colors.amber, size: 20),
                            const SizedBox(width: 4),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                food.rating,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          food.address,
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
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
