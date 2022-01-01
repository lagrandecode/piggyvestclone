import 'package:flutter/material.dart';
import 'package:game_store_app/screens/login.dart';
import 'package:game_store_app/screens/register.dart';

class LoginRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Login())),
              child: Container(
                height: 50.0,
                width: 150.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(0),

                  ),
                  color: Color(0xFF044EBE),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("LOGIN", style: TextStyle(color: Colors.white, fontSize: 18.0),textAlign: TextAlign.center,),
                ),
              ),
            ),
            SizedBox(width: 20,),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Register())),
              child: Container(
                height: 50.0,
                width: 150.0,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(0),

                  ),
                  border: Border.all(color: const Color(0xFF044EBE)),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("REGISTER", style: TextStyle(color: Color(0xFF044EBE), fontSize: 18.0),textAlign: TextAlign.center,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
