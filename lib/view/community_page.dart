import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';
import '../widgets/community_widgets.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0.5,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: null,
        title: Row(
          children: [
            const SizedBox(width: 20),
            Text(
              'Community',
              style: GoogleFonts.mulish(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: kText,
              ),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundColor: const Color.fromRGBO(248, 249, 251, 1),
            child: SvgPicture.asset('assets/images/svg/search_icon.svg'),
          ),
          const SizedBox(width: 20)
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                communityTiles(kCardOrange, 'USE OF DRUGS',
                    'Talks about treatment, Pathways', () {}),
                communityTiles(kCardPurple, 'USE OF DRUGS',
                    'How was your first session experience?', () {}),
                communityTiles(kCardLightOrange, 'USE OF DRUGS',
                    'How to live with cancer and be mentally stable', () {}),
                communityTiles(kCardPurple, 'THERAPY',
                    'Is reliance on drug a good thing?', () {}),
                communityTiles(
                    kCardPurple, ' ', 'Talks about treatment Pathways', () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
