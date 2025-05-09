
import 'package:flutter/material.dart';

class HotelDetailPage extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String location;
  final String price;
  final double rating;

  const HotelDetailPage({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.location,
    required this.price,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              child: Image.network(imageUrl),
              borderRadius: BorderRadius.circular(20),
            ),
            const SizedBox(height: 16),
            Text(name,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(location),
            Text("Price: $price"),
            Text("Rating: ⭐ $rating"),
            const SizedBox(height: 16),
            const Text(
              "Description:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
              "Enjoy luxury and comfort with great service, delicious food, and convenient location.",
            ),
          ],
        ),
      ),
    );
  }
}
