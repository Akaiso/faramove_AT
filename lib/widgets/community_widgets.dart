import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

Widget communityTiles(color, text, heading, callback) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              ),
              width: Get.width * 0.28,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      // SizedBox(width: 10),
                      Container(
                        height: 40,
                        padding: const EdgeInsets.only(top: 8, left: 8),
                        width: 70,
                        child: Text(
                          text,
                          style: GoogleFonts.mulish(
                              fontSize: 12.5, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  SvgPicture.asset('assets/images/svg/drugs.svg')
                ],
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: Get.width * 0.5,
                  child: Text(
                    heading,
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: kText,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/images/svg/followers_icon.svg'),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '200 +',
                      style: GoogleFonts.mulish(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    SvgPicture.asset('assets/images/svg/mail_icon.svg'),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '50',
                      style: GoogleFonts.mulish(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Image(
                      image: AssetImage('assets/images/png/image_stack.png'),
                    ),
                    const SizedBox(width: 30),
                    InkWell(
                      radius: 50,
                      onTap: callback,
                      child: Container(
                        width: 80,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: kButtonBlue,
                        ),
                        child: Center(
                          child: Text(
                            'Join',
                            style: GoogleFonts.mulish(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      const Divider(
        color: Color(0xffE5E5E5),
      ),
    ],
  );
}
