import 'package:flutter/material.dart';
import '../models/shopping.dart';

class DetailShoppingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Shopping shopping = ModalRoute.of(context)!.settings.arguments as Shopping;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 280,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(shopping.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Hero(
                    tag: shopping.name,
                    child: Image.network(
                      shopping.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Details Section
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Type Chip
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Chip(
                      label: Text(shopping.type, style: TextStyle(color: Colors.white)),
                      backgroundColor: Colors.deepOrangeAccent,
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    ),
                  ),
                  SizedBox(height: 12),

                  // Location
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.redAccent),
                      SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          shopping.location,
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),

                  // Description
                  Text(
                    'Description',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Text(
                    shopping.description,
                    style: TextStyle(fontSize: 16),
                  ),

                  SizedBox(height: 30),
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_cart_outlined),
                      label: Text("Explore Shops"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
