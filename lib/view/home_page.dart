import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 70,
        titleSpacing: 0,
        centerTitle: false,
        // automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/svg/profile_avatar2.svg',
            ),
          ],
        ),
        title: Text(
          'Hi, Sarah',
          style: GoogleFonts.mulish(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
        ),
        actions: [
          SvgPicture.asset(
            'assets/images/svg/inbox.svg',
          ),
          SizedBox(
            width: 15,
          ),
          SvgPicture.asset(
            'assets/images/svg/notification.svg',
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              ListTile(
                tileColor: Color(0xffF1F6FE),
                leading: SvgPicture.asset(
                  'assets/images/svg/caution.svg',
                ),
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Go to your profile to complete registration',
                    style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w500, fontSize: 12),
                    textAlign: TextAlign.left,
                    softWrap: true,
                  ),
                ),
                trailing: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/svg/next_arrow.svg',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        'Quick Actions',
                        style: GoogleFonts.mulish(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 20),
                      ListView(
                        physics: const ScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        children: [
                          // Container(
                          //   decoration: BoxDecoration(
                          //       color: Colors.orange,
                          //       borderRadius: BorderRadius.circular(10)),
                          //   padding:
                          //       EdgeInsets.symmetric(horizontal: 9, vertical: 13),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //     children: [
                          //       Expanded(
                          //         flex: 1,
                          //         child: Column(
                          //           crossAxisAlignment: CrossAxisAlignment.start,
                          //           children: const [
                          //             SizedBox(height: 6),
                          //             Text('Book a session'),
                          //             SizedBox(height: 4),
                          //             Text(
                          //               'Get prompt assistance from medical professionals',
                          //               softWrap: true,
                          //             ),
                          //           ],
                          //         ),
                          //       ),
                          //       Expanded(flex: 1, child: Container()),
                          //     ],
                          //   ),
                          // ),
                          SvgPicture.asset(
                            'assets/images/svg/book_a_session_frame.svg',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SvgPicture.asset(
                            'assets/images/svg/diary_frame.svg',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SvgPicture.asset(
                            'assets/images/svg/virtual_assistant_frame.svg',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Color(0xffF8F9FB),
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListTile(
                  tileColor: Colors.white,
                  leading: Text(
                    'Upcomming Session(0)',
                    style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  trailing: SvgPicture.asset(
                    'assets/images/svg/next_arrow.svg',
                  ),
                ),
              ),
              Container(
                color: Color(0xffF8F9FB),
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListTile(
                  tileColor: Colors.white,
                  leading: null,
                  title: Text(
                    'Tips to stay healthy',
                    style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  subtitle: Text('Get simple health tips',
                      style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w400, fontSize: 12)),
                  trailing: SvgPicture.asset(
                    'assets/images/svg/next_arrow.svg',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: const Color.fromRGBO(250, 252, 255, 0.8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Tab(
              icon: SvgPicture.asset('assets/images/svg/home_icon.svg'),
              child: Text(
                'Home',
                style: GoogleFonts.mulish(
                    fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ),
            Tab(
              icon: SvgPicture.asset(
                'assets/images/svg/resources_icon.svg',
                height: 20,
              ),
              child: Text(
                'Resources',
                style: GoogleFonts.mulish(
                    fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ),
            Tab(
              icon: SvgPicture.asset('assets/images/svg/session_icon.svg'),
              child: Text(
                'Session',
                style: GoogleFonts.mulish(
                    fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ),
            Tab(
              icon: SvgPicture.asset(
                'assets/images/svg/community_icon.svg',
                height: 20,
              ),
              child: Text(
                'Community',
                style: GoogleFonts.mulish(
                    fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ),
            Tab(
              icon: SvgPicture.asset(
                'assets/images/svg/account_icon.svg',
                height: 25,
              ),
              child: Text(
                'Account',
                style: GoogleFonts.mulish(
                    fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
