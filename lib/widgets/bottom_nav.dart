import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

Container bottomNav() {
  return Container(
    color: const Color.fromRGBO(250, 252, 255, 0.8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Tab(
          icon: SvgPicture.asset('assets/images/svg/home_icon.svg'),
          child: Text(
            'Home',
            style:
                GoogleFonts.mulish(fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ),
        Tab(
          icon: SvgPicture.asset(
            'assets/images/svg/resources_icon.svg',
            height: 20,
          ),
          child: Text(
            'Resources',
            style:
                GoogleFonts.mulish(fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ),
        Tab(
          icon: SvgPicture.asset('assets/images/svg/session_icon.svg'),
          child: Text(
            'Session',
            style:
                GoogleFonts.mulish(fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ),
        Tab(
          icon: SvgPicture.asset(
            'assets/images/svg/community_icon.svg',
            height: 20,
          ),
          child: Text(
            'Community',
            style:
                GoogleFonts.mulish(fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ),
        Tab(
          icon: SvgPicture.asset(
            'assets/images/svg/account_icon.svg',
            height: 25,
          ),
          child: Text(
            'Account',
            style:
                GoogleFonts.mulish(fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    ),
  );
}
