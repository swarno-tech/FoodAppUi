import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});
  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List menuItem = [
    "Home",
    "My Cart",
    "Order History",
    "Enter Promo Code",
    "Wallet",
    "Favorites",
    "FAQs",
    "Help",
    "Setting",
    "Logout",
  ];
  List menuIcon = [
    Icons.home,
    Icons.shopping_cart,
    Icons.today,
    Icons.description,
    Icons.account_balance_wallet,
    Icons.star,
    Icons.help,
    Icons.phone,
    Icons.settings,
    Icons.logout,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                ZoomDrawer.of(context)!.close();
              },
              icon: Icon(Icons.close),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 10),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  backgroundImage: AssetImage("assets/login.jpg"),
                ),
                SizedBox(width: 8),
                Column(
                  children: [
                    Text(
                      "Hello ",
                      style: GoogleFonts.playfairDisplay(fontSize: 20),
                    ),
                    Text(
                      "  Justin",
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: menuItem.length,
                itemBuilder: (context, index) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: OptionsWidget(
                        icn: menuIcon[index],
                        txt: menuItem[index],
                      ),
                    ),
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

class OptionsWidget extends StatelessWidget {
  final IconData icn;
  final String txt;
  const OptionsWidget({super.key, required this.icn, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icn),
        SizedBox(width: 20),
        Text(
          txt,
          style: GoogleFonts.playfairDisplay(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
