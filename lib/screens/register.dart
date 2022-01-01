import 'package:flutter/material.dart';
import 'package:game_store_app/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  TextEditingController _controler = TextEditingController();

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                padding: const EdgeInsets.only(left: 20.0, right: 10),
                child: Text(
                  "Create a free account and start a proper \nfinancial journey with PiggyVest",
                  style: GoogleFonts.aclonica(
                    textStyle: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              // this is representing the full name of the users

              SizedBox(
                height: 15,
              ),
              Padding(
                padding: padding20,
                child: _buildText("Full Name"),
              ),
              Padding(
                padding: padding15,
                child: _buildContainer(context, "Full Name"),
              ),

              // this is reprensenting the email address of the users

              SizedBox(
                height: 15,
              ),
              Padding(
                padding: padding20,
                child: _buildText("Email Address"),
              ),
              Padding(
                padding: padding15,
                child: _buildContainer(context, "Email Address"),
              ),

              //this is representing the phone number of the users

              SizedBox(
                height: 15,
              ),
              Padding(
                padding: padding20,
                child: _buildText("Phone Number"),
              ),
              Padding(
                padding: padding15,
                child: _buildContainer(context, "Phone Number"),
              ),

              //this is representing the password of the users

              SizedBox(
                height: 15,
              ),
              Padding(
                padding: padding20,
                child: _buildText("Password"),
              ),
              Padding(
                padding: padding15,
                child: _buildContainer(context, "Password"),
              ),

              //this is representing the referral phone or code

              SizedBox(
                height: 15,
              ),
              Padding(
                padding: padding20,
                child: _buildText("Refferer Phone Or Promo Code (Optional)"),
              ),
              Padding(
                padding: padding15,
                child: _buildContainer(context, "Refferer Phone Or Code"),
              ),

              SizedBox(
                height: 15,
              ),
              Padding(
                padding: padding20,
                child: _buildText("How Did You Hear About Us? (Optional)"),
              ),
              GestureDetector(
                onTap: ()=>showModalBottomSheet(context: context, builder: (_)=> Container(
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,

                  ),

                )),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: padding15,
                      child: _buildContainer(context, "Click To Select"),
                    ),
                    Positioned(
                      right: 20,
                      top: 25,
                      child: Icon(Icons.arrow_drop_down_outlined, size: 30, color: Colors.black,),),

                  ],
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }

  Text _buildText(
    String text,
  ) {
    return Text(
      text,
      style: GoogleFonts.aclonica(
        textStyle: const TextStyle(
            fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
Container _buildContainer(context, String hinttext) => Container(
  height: 50,
  width: MediaQuery.of(context).size.width,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.grey.withOpacity(0.2),
  ),
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: TextStyle(
            color: Colors.grey.withOpacity(0.9),
            fontWeight: FontWeight.bold),
        border: InputBorder.none,
      ),
    ),
  ),
);


