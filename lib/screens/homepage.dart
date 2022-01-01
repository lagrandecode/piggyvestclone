import 'package:flutter/material.dart';
import 'package:game_store_app/constants/colors.dart';
import 'package:game_store_app/models/image_slide.dart';
import 'package:game_store_app/screens/detailpage.dart';
import 'package:game_store_app/widgets/imageslideholder.dart';
import 'package:game_store_app/widgets/imageslides.dart';
import 'package:game_store_app/widgets/login_register.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  final slides = ImageSlidesModel.generateSlides();

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: _buildAppBar(),
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    height: 40,
                    width: 40,
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(
                        "assets/images/avatar.png",
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    "Piggyvest",
                    style: GoogleFonts.aclonica(
                        textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3670CF),
                    )),
                  )
                ],
              )),
            ),
            SizedBox(height: 40,),
            ImageSlideHolder(),
            LoginRegister(),

          ],
        ),
      ),
    ));
  }
  _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: ktransparent,
      leading: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(
          Icons.menu_rounded,
          size: 25,
          color: Colors.black,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => DetailPage(),
              ),
            ),
            child: const Icon(
              Icons.shopping_cart_outlined,
              size: 25,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
