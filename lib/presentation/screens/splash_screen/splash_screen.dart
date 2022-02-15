import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tikweb_test/core/constants/colors.dart';
import 'package:tikweb_test/core/constants/strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              TikwebStrings.testMe,
              style: GoogleFonts.montserrat(
                  color: TikwebColors.primaryColor,
                  fontSize: 53,
                  fontWeight: FontWeight.w600),
            ),
            Container(
              height: 32,
              width: 229,
              decoration: BoxDecoration(
                color: TikwebColors.primaryColor,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Center(
                child: Text(
                  TikwebStrings.userAuthentica,
                  style: GoogleFonts.montserrat(
                      color: TikwebColors.whiteColor,
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
