import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:foodappui/categories/categori.dart';
import 'package:foodappui/widgets/explore_widget.dart';
import 'package:foodappui/widgets/most_popular.dart';
import 'package:google_fonts/google_fonts.dart';

class MealPage extends StatefulWidget {
  const MealPage({super.key});

  @override
  State<MealPage> createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {
  var selected = categoriesList[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white12,
        title: Text("MyFood", style: GoogleFonts.montserrat(fontSize: 26)),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            ZoomDrawer.of(context)!.toggle();
          },
          icon: Icon(Icons.menu),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Icon(Icons.location_on),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              "Good Eve! Justin",
              style: GoogleFonts.playfairDisplay(fontSize: 24),
            ),
            Text("Grab your", style: GoogleFonts.playfairDisplay(fontSize: 26)),
            Text(
              "delicious meal!",
              style: GoogleFonts.playfairDisplay(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: BoxBorder.all(color: Colors.black),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Explore Categories",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.more_horiz_sharp),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 150,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoriesList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      selected = categoriesList[index];
                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: selected == categoriesList[index]
                            ? Colors.yellow
                            : Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(40),
                          bottom: Radius.circular(40),
                        ),
                      ),
                      margin: EdgeInsets.all(8),
                      child: ExploreWidget(
                        imgUrl: categoriesList[index].image,
                        txt: categoriesList[index].text,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Most Popular",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.more_horiz_sharp),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(8),
                    child: MostPopular(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
