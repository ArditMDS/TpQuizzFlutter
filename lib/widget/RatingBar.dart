import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

RatingBarIndicator customRatingBar({required double size, required double score}) {
  return RatingBarIndicator(
    rating: score,
    itemBuilder: (context, index) => const Icon(
      Icons.stars,
      color: Colors.amber,
    ),
    itemCount: 10,
    itemSize: size,
    direction: Axis.horizontal,
  );
}
