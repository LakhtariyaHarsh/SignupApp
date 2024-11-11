import 'package:flutter/material.dart';

class CategoriesSection extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {'title': 'Latest Jobs', 'icon': 'assets/Project.png'},
    {'title': 'Result', 'icon': 'assets/result.png'},
    {'title': 'Admit Card', 'icon': 'assets/admit_card_icon.png'},
    {'title': 'Admission', 'icon': 'assets/admission_icon.png'},
  ];

  CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff1f6fc),
      width: double.infinity,
      padding: const EdgeInsets.only(top: 15),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: categories.map((category) {
            return Column(
              children: [
                // Outer hexagon for border
                SizedBox(
                  width: 70, // Outer hexagon width
                  height: 60, // Outer hexagon height
                  child: ClipPath(
                    clipper: HexagonClipper(),
                    child: Container(
                      color: Colors.white, // Border color
                      child: Center(
                        // Inner hexagon
                        child: ClipPath(
                          clipper: HexagonClipper(),
                          child: Container(
                            width: 64, // Inner hexagon width (smaller than outer)
                            height: 54, // Inner hexagon height (smaller than outer)
                            color: const Color(0xffe6f3fc), // Inner hexagon color
                            padding: const EdgeInsets.all(16),
                            child: Image.asset(category['icon']!),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  category['title']!,
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

class HexagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    double width = size.width;
    double height = size.height;
    double radius = 2; // Rounded corner radius for hexagon

    // Define hexagon path
    path.moveTo(width * 0.25 + radius, 0);
    path.lineTo(width * 0.75 - radius, 0);
    path.quadraticBezierTo(width * 0.75, 0, width * 0.75, radius);
    path.lineTo(width - radius, height * 0.5 - radius);
    path.quadraticBezierTo(width, height * 0.5, width - radius, height * 0.5 + radius);
    path.lineTo(width * 0.75, height - radius);
    path.quadraticBezierTo(width * 0.75 - radius, height, width * 0.75 - radius, height);
    path.lineTo(width * 0.25 + radius, height);
    path.quadraticBezierTo(width * 0.25, height, width * 0.25, height - radius);
    path.lineTo(radius, height * 0.5 + radius);
    path.quadraticBezierTo(0, height * 0.5, radius, height * 0.5 - radius);
    path.lineTo(width * 0.25, radius);
    path.quadraticBezierTo(width * 0.25, 0, width * 0.25 + radius, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
