import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MostPopular extends StatelessWidget {
  const MostPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 180,
        width: 100,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Row(
          children: [
            SizedBox(
              height: 140,
              width: 150,
              child: Image.network(
                "https://previews.123rf.com/images/gbh007/gbh0071408/gbh007140800039/30406006-pepperoni-pizza-on-white-background.jpg",
              ),
            ),
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "5 Pepper",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Mixed pizza",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "\$129",
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(width: 70),
                    Icon(Icons.favorite, size: 20, color: Colors.red),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
