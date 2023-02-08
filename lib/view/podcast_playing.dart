import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PodcastPlayingPage extends StatefulWidget {
  const PodcastPlayingPage({Key? key}) : super(key: key);

  @override
  State<PodcastPlayingPage> createState() => _PodcastPlayingPageState();
}

class _PodcastPlayingPageState extends State<PodcastPlayingPage> {
  double val = 0.00;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/png/stay_bg_design2.png'),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: Colors.white.withOpacity(0.0)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                          color: Colors.black,
                        ),
                        Text(
                          'Stay Motivated Ep.1',
                          style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: const Color(0xff031025)),
                        ),
                        const SizedBox(width: 20),
                        const Icon(Icons.bookmark_border),
                        const SizedBox(width: 10),
                        SvgPicture.asset('assets/images/svg/upload_icon.svg'),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                              'assets/images/png/stay_bg_design2.png'),
                        ),
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xffE7F0FD), Color(0xffFCEDE8)]),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'ST',
                                      style: GoogleFonts.mulish(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 24)),
                                  WidgetSpan(
                                      child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: SvgPicture.asset(
                                      'assets/images/svg/stay_design.svg',
                                      height: 20,
                                    ),
                                  )),
                                  TextSpan(
                                      text: 'Y',
                                      style: GoogleFonts.mulish(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 24)),
                                ],
                              ),
                            ),
                            Text('INSPIRED',
                                style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w800, fontSize: 24))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: SizedBox(
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '10 reasons',
                                    style: GoogleFonts.mulish(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xff031025)),
                                    textAlign: TextAlign.start,
                                  ),
                                  Text(
                                    'Stay Inspired- Episode 1',
                                    style: GoogleFonts.mulish(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff888D95)),
                                  ),
                                ],
                              ),
                              SvgPicture.asset(
                                'assets/images/svg/speaker_icon.svg',
                                height: 20,
                              ),
                            ],
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          overlayShape: SliderComponentShape.noOverlay),
                      child: Slider(
                        activeColor: const Color(0xff3079EC),
                        inactiveColor: const Color(0xffE3EDFC),
                        thumbColor: const Color(0xff3079EC),
                        value: val,
                        onChanged: (value) {
                          setState(() {
                            val = value;
                          });
                        },
                        min: 0.00,
                        max: 1.53,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('0.00'),
                        Text('1.53'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text('1x'),
                        ),
                        Container(
                          child:
                              SvgPicture.asset('assets/images/svg/rewind.svg'),
                        ),
                        Container(
                          child: SvgPicture.asset('assets/images/svg/play.svg'),
                        ),
                        Container(
                          child: SvgPicture.asset(
                              'assets/images/svg/fastForward.svg'),
                        ),
                        Container(
                          child: SizedBox(
                            width: 20,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 80,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Color(0xff3079EC),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(6),
                              topLeft: Radius.circular(6))),
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Transcript',
                              style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                            Chip(
                              backgroundColor: Color(0XFFBAD0F7),
                              label: SizedBox(
                                  width: 90,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'EXPAND',
                                          style: GoogleFonts.mulish(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SvgPicture.asset(
                                            'assets/images/svg/expand_icon.svg'),
                                      ])),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
