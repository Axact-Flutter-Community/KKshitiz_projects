import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());
String kUserUrl =
    'https://png.pngtree.com/element_our/png/20181206/users-vector-icon-png_260862.jpg';
TextStyle kCardTextStyle =
    TextStyle(color: Colors.teal.shade900, fontWeight: FontWeight.w800);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                kUserUrl,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Kshitiz Kamal',
              style: GoogleFonts.pacifico(
                  textStyle: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  letterSpacing: 3,
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              width: 150,
              child: Divider(
                color: Colors.white,
              ),
            ),
            CardWidget(
              iconData: Icons.call,
              text: '+91 8948239724',
            ),
            CardWidget(
              iconData: Icons.mail,
              text: 'skilite007@gmail.com',
            ),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String text;
  final IconData iconData;
  CardWidget({this.text, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
      child: ListTile(
        leading: Icon(
          iconData,
          color: Colors.teal,
        ),
        title: Text(
          text,
          style: kCardTextStyle,
        ),
      ),
    );
  }
}
