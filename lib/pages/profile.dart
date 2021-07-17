import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C4E89),
      body: Container(
        margin: EdgeInsets.only(top: 105.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 170.0,
                height: 170.0,
                child: 
                  CircleAvatar(
                    backgroundImage: ExactAssetImage('assets/avatar.png'),
                  ),
              ),
              SizedBox(height: 15.0),
              Text(
                'Dani C', 
                style: GoogleFonts.oswald(
                  fontSize: 28.0,
                  color: Colors.white
                ),
              ),
              Text(
                'danic@example.com', 
                style: GoogleFonts.roboto(
                  fontSize: 16.0,
                  color: Colors.white
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
