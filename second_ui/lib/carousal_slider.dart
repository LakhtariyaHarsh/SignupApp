import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:second_ui/jobinformation.dart';

class CarouselWithButtonOverlay extends StatefulWidget {
  const CarouselWithButtonOverlay({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CarouselWithButtonOverlay createState() => _CarouselWithButtonOverlay();
}

class _CarouselWithButtonOverlay extends State<CarouselWithButtonOverlay> {
  int _currentIndex = 0;
  final List<String> imageUrls = [
    "assets/Project.png",
    "assets/admission_icon.png",
    "assets/admit_card_icon.png",
  ];

  List<String> messages = [
    'PM Internship 2024 Apply Online',
    'Find your dream job here',
    'Step up to your new career'
  ];

  final List<LinearGradient> gradients = [
    LinearGradient(
        colors: [Color(0xffacfb2e), Color(0xff8fa512)],),
    LinearGradient(
        colors: [Color(0xffadfa38), Color(0xff090caf)],),
    LinearGradient(
        colors: [Color(0xffabfc31), Color(0xfffb5e01)],),
    // Add more gradients if needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xfff1f6fc),
        child: Column(
          children: [
            // Carousel Slider
            CarouselSlider.builder(
              itemCount: imageUrls.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Card(
                  elevation: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: gradients[
                          index % gradients.length], // Cycle through gradients
                      borderRadius:
                          BorderRadius.circular(10), // Match card's border radius
                    ),
                    child: Row(
                      children: [
                        // Background Image with Rounded Corners
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              20), // Ensures image corners are rounded
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Image.asset(imageUrls[index],
                                width: 100, height: 100,),
                          ),
                        ),
        
                        // Positioned Button
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ConstrainedBox(
                                constraints: BoxConstraints(maxWidth: 175),
                                child: Text(
                                  messages[
                                      index], // Show different text for each image
                                  style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              ElevatedButton(
                                onPressed: () {
                                  // Navigate to different screens based on the image index
                                  if (index == 0) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Jobinformation()),
                                    );
                                  } else if (index == 1) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Jobinformation()),
                                    );
                                  } else if (index == 2) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Jobinformation()),
                                    );
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: const Text(
                                  'Read More',
                                  style: TextStyle(color: Color(0xffaa183d)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                height: 170,
                enlargeCenterPage: true,
                viewportFraction: 0.8,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex =
                        index; // Update the current index when the page changes
                  });
                },
              ),
            ),
        
            SizedBox(
              height: 20,
            ),
            // Page Indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                imageUrls.length,
                (index) => AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == index
                          ? Color(0xffaa183d) // Active color (when selected)
                          : Colors.white, // Inactive color
                      border: Border.all(color: Colors.black54)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
