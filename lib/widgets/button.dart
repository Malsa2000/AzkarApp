
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main(){}

class EelevationButton extends StatefulWidget {
  final String value;


  const EelevationButton({Key? key , required String value1}) :
        this.value = value1,
        super(key: key);



  @override
  State<EelevationButton> createState() => _EelevationButtonState();
}

class _EelevationButtonState extends State<EelevationButton> {

  @override
  Widget build(BuildContext context) {

    return Container(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Color(0xFFF9F2ED)),
          onPressed: () {
          },
          child: Text('value.toString()',
            style: GoogleFonts.cairo(
                fontWeight: FontWeight.normal,
                fontSize: 15,
                color: Color(0xFFEB1D36)
            ),
          ),
        ),


    );
  }
}


