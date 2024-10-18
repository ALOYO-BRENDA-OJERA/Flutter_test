import 'package:flutter/material.dart';
import '../widgets/app_bar.dart'; // Make sure you have your custom app bar
import '../widgets/bottom_navigation_bar.dart'; // Include your bottom navigation bar if needed

class HomeScreen extends StatelessWidget {
  final List<String> categories = [
    'All',
    'Trending',
    'Music',
    'Gaming',
    'News',
    'Sports',
    'Movies',
  ];

  // Titles for the shorts
  final List<String> shortTitles = [
    'Join us for a quick look at the latest trending dance moves!',
    'Watch this amazing life hack',
    'Ever wondered how to make the perfect cup of coffee?',
    'Watch this adorable puppy learn a new trick in just 30 seconds! 🐶',
    'Earn 5 dollars every 30 mins',
  ];

  // Titles and descriptions for the video thumbnails
  final List<String> videoTitles = [
    'How to Make a Perfect Omelette',
    'Exploring Hidden Gems in Your City',
    '10-Minute Workout for Busy People',
    'Amazing DIY Home Decor Ideas',
    'The Science Behind Stress Relief',
  ];

  final List<String> videoDescriptions = [
    'Join us as we explore the secret techniques for crafting the perfect omelette, fluffy and delicious every time!',
    'Discover the top five hidden gems in your city that you probably didn\'t know existed. Perfect for your next adventure!',
    'No time to exercise? Try this quick and effective 10-minute workout that fits into your busy schedule!',
    'Get creative with these simple and stylish DIY home decor ideas that will transform your space on a budget.',
    'Explore the science behind stress and learn effective techniques to manage anxiety and promote relaxation.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(), // Your custom app bar here
      bottomNavigationBar: CustomBottomNavigationBar(), // Optional bottom navigation bar
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Video Categories
            Container(
              padding: const EdgeInsets.all(8.0),
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        categories[index],
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
            ),
            // Shorts Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  // Shorts Logo
                  Image.asset(
                    'assets/images/shorts.png', // Update with the correct path to your logo
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Shorts',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
            // Placeholder for Shorts
            Container(
              height: 200, // Adjusted height to fit titles and descriptions
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: shortTitles.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 150,
                    margin: const EdgeInsets.only(right: 8.0),
                    color: Colors.grey,
                    child: Column(
                      children: [
                        const Expanded(
                          child: Center(
                            child: Icon(
                              Icons.play_circle_fill, // Video icon
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          shortTitles[index],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            // Placeholder for Video Thumbnails List
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(videoTitles.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Placeholder for Video Thumbnail
                        Container(
                          height: 150,
                          color: Colors.grey,
                          child: const Center(
                            child: Icon(
                              Icons.play_circle_fill, // Video icon
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          videoTitles[index],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4.0),
                        Text(videoDescriptions[index]),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
