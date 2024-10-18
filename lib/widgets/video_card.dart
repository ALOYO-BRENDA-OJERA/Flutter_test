import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final String title;
  final String thumbnail;
  final String description;

  const VideoCard({
    Key? key,
    required this.title,
    required this.thumbnail,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Video Thumbnail
        Container(
          margin: const EdgeInsets.only(bottom: 8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              thumbnail,
              fit: BoxFit.cover,
              height: 150, // Adjust height as needed
              width: double.infinity,
            ),
          ),
        ),
        // Title
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 4.0),
        // Description
        Text(
          description,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
