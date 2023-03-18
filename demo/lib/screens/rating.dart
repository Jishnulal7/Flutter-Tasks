import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RatingDemo extends StatefulWidget {
  const RatingDemo({super.key});

  @override
  State<RatingDemo> createState() => _RatingDemoState();
}

class _RatingDemoState extends State<RatingDemo> {
  double rating = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rating Demo'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Rating Demo',
            style: TextStyle(fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: SmoothStarRating(
              rating: rating,
              color: Colors.amber,
              size: 40,
              spacing: 0,
              onRated: (value) {
                setState(() {
                  rating = value;
                });
              },
              allowHalfRating: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text('You have selected $rating star',
                style: const TextStyle(fontSize: 20)),
          ),const SizedBox(height: 20,),
          ElevatedButton(onPressed: () {}, child: const Text('Your Review'))
        ],
      )),
    );
  }
}
