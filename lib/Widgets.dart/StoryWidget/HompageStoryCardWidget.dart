import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({super.key, this.image, this.title, this.hline, this.intro});
  final String? image;
  final String? title;
  final String? hline;
  final String? intro;
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color(0xFFE2E0E0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 4,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              'https://images.pexels.com/photos/3628912/pexels-photo-3628912.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "Sadhu, openers star in India's thumping win",
            style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "Titas Sadhu picked four wickets before India's openers put on a century stand",
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
