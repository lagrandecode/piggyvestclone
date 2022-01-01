import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 100.0,
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                  ),
                  child: Image.asset(
                    "assets/images/cancel.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Create Account",
                  style: GoogleFonts.aclonica(
                      textStyle: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF044EBE))),
                ),

              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text("Create a free account and start a proper \nfinancial journey with PiggyVest", style: GoogleFonts.aclonica(textStyle: TextStyle(fontSize: 15,),),),
              ),
               Padding(
                 padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                 child: _buildText("Full Name"),
               ),

            ],
          ),
        ),
      ),
    );
  }

  Text _buildText(String text,) {
    return Text(
      text, style: GoogleFonts.aclonica(textStyle: const TextStyle(fontSize: 15, color: Colors.black),),
    );
  }
}
