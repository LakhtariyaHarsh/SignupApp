import 'package:flutter/material.dart';

class CategoryUpdateSection extends StatelessWidget {
  const CategoryUpdateSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 50,
            width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff51bf38),
            ),
            child: const Center(child: Text("SSC" , textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20),)),
          
          ),
      
          Container(
            height: 50,
            width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff0d4333),
            ),
            child: const Center(child: Text("Bank" , textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20),)),
          
          ),
      
          Container(
            height: 50,
            width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xfffce251),
            ),
            child: const Center(child: Text("Railway" , textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20),)),
          
          ),
        ],
      ),
    );
  }
}