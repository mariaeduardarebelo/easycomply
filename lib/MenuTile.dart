import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuTile extends StatelessWidget {
  MenuTile({@required this.height, @required this.label});

  final height;
  final label;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          )
        ),
        minimumSize: MaterialStateProperty.all<Size>(Size(0, height)),
        fixedSize: MaterialStateProperty.all<Size>(Size.fromWidth(166.0)),
        backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF1A3F6D)),
      ),
      onPressed: () {},
      child: Text('$label'.toUpperCase(), style: GoogleFonts.oswald(fontSize: 28.0,),),
    );
  }
}