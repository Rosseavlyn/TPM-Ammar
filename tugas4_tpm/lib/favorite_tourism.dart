import 'package:flutter/material.dart';
import 'detail_page.dart';
import 'tourism_place.dart';

class FavoriteTourismPlace extends StatelessWidget {
  const FavoriteTourismPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favoritePlaces =
        tourismPlaceList.where((place) => place.isFavorite).toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Tourism Place',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Sans-Serif',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: GridView.builder(
        itemCount: favoritePlaces.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: (Orientation == Orientation.portrait) ? 2:2),
        itemBuilder: (context, index) {
          final TourismPlace place = favoritePlaces[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    place: place,
                  ),
                ),
              );
            },
            child: Card(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 4.5,
                    child: Image.network(place.imageUrls[0],
                    fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
                    child: Text(place.name,
                    style: TextStyle(
                      fontFamily: 'Sans-Serif',
                      fontWeight: FontWeight.bold
                    ),),
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
