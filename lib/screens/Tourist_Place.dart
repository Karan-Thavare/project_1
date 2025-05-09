import 'package:flutter/material.dart';
import 'package:tourist_app/routes.dart';
import '../models/place.dart';

class TouristPlaces extends StatelessWidget {
  final List<Place> places = [
    Place(
      name: "Shri Ganesh Mandir Tekdi",
      description: "Most popular and ancient Hindu temple dedicated to Lord Ganesha.",
      imageUrl: "https://lh3.googleusercontent.com/p/AF1QipO3dqE8dYTlveaiT1xl25SO0XFEQLR16xELPao=s294-w294-h220-n-k-no",
      address: "Railway station, Ganesh Tekdi Rd, Sitbuldi, Nagpur",
    ),
    Place(
      name: "Shri Mahalakshmi Jagdamba Mandir Koradi",
      description: "One of the oldest temple in koradi.",
      imageUrl: "https://lh3.googleusercontent.com/p/AF1QipNqY2GUrLef0lzH6NbHpcVz6fWo2S2hL6SHNz0r=s1360-w1360-h1020-rw",
      address: "Koradi, Mahadula, Maharashtra 441110",
    ),
    Place(
      name: "Hazrat Baba Tajuddin Dargah",
      description: "A very clean and serene place , of Hazrat Baba.",
      imageUrl: "https://lh3.googleusercontent.com/p/AF1QipOcIpt06hfac5VyAeTzqdsg98sI59E8POrJHInv=s294-w294-h220-n-k-no",
      address: "Taj Bagh, Shareef, Nagpur, Maharashtra 440024",
    ),
    Place(
      name: "Futala Lake",
      description: "Most popular tourist spot in Nagpur Spread over 60 acres.",
      imageUrl: "https://lh3.googleusercontent.com/p/AF1QipOpKFIHPkN0aZ1ZuLiZAWFUlmQoj0A-46OYPqpe=s1360-w1360-h1020-rw",
      address: "Vayusena nagar, Nagpur, Maharashtra 440021",
    ),
    Place(
      name: "Ambazari Lake",
      description: "Most popular tourist attraction and the largest of the city's eleven lakes.",
      imageUrl: "https://lh3.googleusercontent.com/p/AF1QipNioJoUlmlYEqU3kvhh_Kh-Xk_996CPP9VfNy1T=s1360-w1360-h1020-rw",
      address: "Nagpur Maharashtra 440033",
    ),
    Place(
      name: "Swaminarayan Mandir ",
      description: "Most beautiful and popular temple. dedicated to lord Swaminarayan.",
      imageUrl: "https://www.baps.org/Data/Sites/1/Media/ModuleRotatorImages/BAPS-nagpur.jpg",
      address: "Wathoda Layout, Nagpur, Maharashtra 440035",
    ),
    Place(
      name: "Sitabuldi fort",
      description: "Most beautiful and popular temple. dedicated to lord Swaminarayan.",
      imageUrl: "https://lh3.googleusercontent.com/p/AF1QipOotMblNOdhiXJW0jKYSd0xecvbv0lIbMBzklVI=s1360-w1360-h1020-rw",
      address: "43XM+GPQ, Madha Colony, Sitabuldi, Nagpur, Maharashtra 440001",
    ),
    Place(
      name: "Narrow Gauge Rail Museum",
      description: "Most beautiful and popular temple. dedicated to lord Swaminarayan.",
      imageUrl: "https://lh3.googleusercontent.com/p/AF1QipORa_AG2mA8t6PgQqQc1qYBi0kMyGFQEW4xDO27=s1360-w1360-h1020-rw",
      address: "Kamptee Rd, Moti bagh, Mohan Nagar, Nagpur Maharastra 440014",
    ),
    Place(
      name: "Deekshabhoomi",
      description: "Deeksha Bhoomi, is a sacred monument of Navayana Buddhism.",
      imageUrl: "https://www.shutterstock.com/image-photo/deekshabhoomi-sacred-monument-navayana-buddhism-600nw-2339985993.jpg",
      address: "S Ambazari Rd, Abhyankar Nagar, Nagpur, Maharashtra 440020",
    ),
    Place(
      name: "Dragon Palace",
      description: "Prominent Buddhist temple, built of white marble in the 1990s,",
      imageUrl: "https://lh3.googleusercontent.com/p/AF1QipNy4FWtqJuyYxJ2avO0Q9YJWFYVs_03Gk9bp_M7=s1360-w1360-h1020-rw",
      address: "Dadasaheb Kumbhare Parisar, New, Kamptee Maharashtra 441002",
    ),
    Place(
      name: "Maharaj Bagh Zoo",
      description: "Century-old zoo & gardens featuring lions, leopards & other animals.",
      imageUrl: "https://lh3.googleusercontent.com/p/AF1QipNAxf_Wlfnp_2BcCQk4WNhzgHknQuw4boMKRYl6=s1360-w1360-h1020-rw",
      address: "Gorepeth, Nagpur, Maharashtra 440012",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tourist Places",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          final place = places[index];
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                AppRoutes.DETAIL_TOURISTPAGE_ROUTE,
                arguments: place,
              );
            },
            child: Card(
              elevation: 4,
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                    child: Image.network(
                      place.imageUrl,
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          place.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          place.description,
                          style: const TextStyle(
                              fontSize: 14, color: Colors.black87),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            const Icon(Icons.location_on,
                                size: 16, color: Colors.orange),
                            const SizedBox(width: 4),
                            Expanded(
                              child: Text(
                                place.address.isNotEmpty
                                    ? place.address
                                    : "Nagpur, Maharashtra",
                                style: const TextStyle(
                                    fontSize: 13, color: Colors.grey),
                                overflow: TextOverflow.ellipsis,
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
          );
        },
      ),
    );
  }
}
