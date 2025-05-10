import 'package:flutter/material.dart';
import '../models/place.dart';

class DetailTouristPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Place place = ModalRoute.of(context)!.settings.arguments as Place;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                place.name,
                style: const TextStyle(color: Colors.white,
                  shadows: [Shadow(color: Colors.black, blurRadius: 1)],
                ),
              ),
              background: Hero(
                tag: place.imageUrl,
                child: Image.network(
                  place.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    place.description,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.redAccent),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          place.address.isNotEmpty ? place.address : "Nagpur, Maharashtra",
                          style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {

                        },
                        icon: Icon(Icons.map),
                        label: Text("Open in Maps"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        ),
                      ),
                      IconButton(
                        onPressed: () {

                        },
                        icon: Icon(Icons.favorite_border, size: 30),
                        color: Colors.redAccent,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
