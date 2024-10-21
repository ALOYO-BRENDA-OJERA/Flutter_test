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

  final List<String> shortTitles = [
    'Join us for a quick look at the latest trending dance moves!',
    'Watch this amazing life hack',
    'Ever wondered how to make the perfect cup of coffee?',
    'Watch this adorable puppy learn a new trick in just 30 seconds! 🐶',
    'Earn 5 dollars every 30 mins',
  ];

  final List<String> shortThumbnailUrls = [
    'https://media.istockphoto.com/id/2173304976/photo/young-man-dancer-dancing-in-a-ballroom.jpg?s=612x612&w=0&k=20&c=mP87r-Vphw4qMhKD1IL-g6CBzJjLYhULU5UoJ6iZMD0=',
    'https://media.istockphoto.com/id/928437116/photo/creative-eureka-moment.jpg?s=612x612&w=0&k=20&c=TAo2E2_bGEcAB-DDpyuOz5_tmCh9GevRWdi46bmNXJQ=',
    'https://media.istockphoto.com/id/646121204/photo/coffee-cup-with-latte-art-on-the-espresso-machine-tray.jpg?s=612x612&w=0&k=20&c=1opa0xP1fvBoa9SZ6yo4jYrY-Jq3Nl4ve7tMweNO8_g=',
    'https://media.istockphoto.com/id/1707992084/photo/dog-sport-background-agile-dog-being-trained-to-catch-flying-disc-on-beautiful-summer-day.jpg?s=612x612&w=0&k=20&c=fjXUx7WgrB0oBITEJASxwlodhkBUk_8ykZd7FXbLy4I=',
    'https://media.istockphoto.com/id/1465618017/photo/businessmen-investor-think-before-buying-stock-market-investment-using-smartphone-to-analyze.jpg?s=612x612&w=0&k=20&c=YNEkfoME1jbz6FUJImxCQtaGZZntrf7u-Byxmgk4pOY='
  ];

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

  final List<String> videoThumbnailUrls = [
    'https://media.istockphoto.com/id/1144835722/photo/young-woman-in-a-gray-aprons-breaks-the-eggs.jpg?s=612x612&w=0&k=20&c=lVXf5DlseN40nMjO97CVaci4FWeFvSmw2fdMCR3hJ-w=',
    'https://media.istockphoto.com/id/177421738/photo/ants-hide-treasure.jpg?s=612x612&w=0&k=20&c=A-NVrqxbpPK7hxghe04O73O-gVxjNJzsDi2JtuH4LhM=',
    'https://media.istockphoto.com/id/1566751813/photo/young-asian-woman-sitting-taking-a-break-relaxing-after-exercise-with-a-whey-protein-and.jpg?s=612x612&w=0&k=20&c=Z2x4Sc3IIAFQtPrdb2Efu2TRwdVcI-yffix_znXTBdQ=',
    'https://media.istockphoto.com/id/628088154/photo/home-decor-inspired-by-autumn.jpg?s=612x612&w=0&k=20&c=uD0TxktIxhJSzMye_kf40ev72efOpiZlnNZcI8I4ggQ=',
    'https://media.istockphoto.com/id/1713368220/photo/young-adult-woman-relaxing-at-a-luxury-hotel-on-holiday-in-the-c%C3%B4te-dazur-france.jpg?s=612x612&w=0&k=20&c=QMJQg8S4RknVtHZ0j4IBVXR5Rq2An0uUwypCtUBzLW4=',
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

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
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Chip(
                      label: Text(
                        categories[index],
                        style: const TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.grey[800],
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
            // Shorts Carousel
            Container(
              height: 200,
              width: screenWidth, // Take up full screen width
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: shortTitles.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 150,
                    margin: const EdgeInsets.only(right: 8.0),
                    color: Colors.grey[900],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              shortThumbnailUrls[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 4.0),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            shortTitles[index],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            // Video Thumbnails List
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
                        // Thumbnail
                        Container(
                          width: screenWidth, // Take full screen width
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              videoThumbnailUrls[index],
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  color: Colors.grey[800],
                                  child: const Icon(
                                    Icons.error,
                                    color: Colors.red,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        // Title and Description
                        const SizedBox(height: 8.0),
                        Text(
                          videoTitles[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          videoDescriptions[index],
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
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
