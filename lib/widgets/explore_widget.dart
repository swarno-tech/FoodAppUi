import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreWidget extends StatelessWidget {
  final String imgUrl;
  final String txt;
  const ExploreWidget({super.key, required this.imgUrl, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9),
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40),
          bottom: Radius.circular(40),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(radius: 30, backgroundImage: NetworkImage(imgUrl)),
          Text(txt, style: GoogleFonts.openSans()),
        ],
      ),
    );
  }
}
