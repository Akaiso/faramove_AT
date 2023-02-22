import 'package:faramove_assessment_test/view/community_page.dart';
import 'package:faramove_assessment_test/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants.dart';
import '../view/account_page.dart';
import '../view/resources_page.dart';
import '../view/session_page.dart';

class BottomTab extends StatefulWidget {
  final int tabIndex;
  const BottomTab({Key? key, this.tabIndex = 0}) : super(key: key);

  @override
  _BottomTabState createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  int _currentIndex = 0;
  final List<Map<String, dynamic>> _children = [];

  @override
  void initState() {
    _children.add({
      "title": "Home",
      "widget": const HomePage(),
    });
    _children.add({
      "title": "Resources",
      "widget": const ResourcesPage(),
    });
    _children.add({
      "title": "Session",
      "widget": const SessionPage(),
    });
    _children.add({
      "title": "Community",
      "widget": const CommunityPage(),
    });

    _children.add({
      "title": "Account",
      "widget": const AccountPage(),
    });

    _currentIndex = widget.tabIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: kButtonBlue,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          selectedFontSize: 12,
          unselectedFontSize: 10,
          onTap: (int index) {
            HapticFeedback.selectionClick();
            setState(() => _currentIndex = index);
          },
          unselectedLabelStyle: TextStyle(
            height: 1.8,
            letterSpacing: .5,
            fontWeight: FontWeight.bold,
            color: Colors.grey.withOpacity(0.5),
          ),
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(
            fontSize: 12,
            letterSpacing: .5,
            color: kButtonBlue,
            fontWeight: FontWeight.bold,
            height: 1.8,
          ),
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _currentIndex == 0
                    ? kButtonBlue
                    : Colors.grey.withOpacity(0.5),
                size: _currentIndex == 0 ? 24 : 17,
              ),

              // SvgPicture.asset(
              //   '$svgPath/home_icon.svg',
              //   color: _currentIndex == 0
              //       ? kButtonBlue
              //       : Colors.grey.withOpacity(0.5),
              // ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_book,
                color: _currentIndex == 1
                    ? kButtonBlue
                    : Colors.grey.withOpacity(0.5),
                size: _currentIndex == 1 ? 24 : 17,
              ),

              // SvgPicture.asset(
              //   '$svgPath/resources_icon.svg',
              //   color: _currentIndex == 1
              //       ? kButtonBlue
              //       : Colors.grey.withOpacity(0.5),
              //   height: 22,
              // ),
              label: 'Resources',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today_outlined,
                color: _currentIndex == 2
                    ? kButtonBlue
                    : Colors.grey.withOpacity(0.5),
                size: _currentIndex == 2 ? 24 : 17,
              ),

              // SvgPicture.asset(
              //   "$svgPath/session_icon.svg",
              //   color: _currentIndex == 2
              //       ? kButtonBlue
              //       : Colors.grey.withOpacity(0.5),
              // ),
              label: 'Session',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
                color: _currentIndex == 3
                    ? kButtonBlue
                    : Colors.grey.withOpacity(0.5),
                size: _currentIndex == 3 ? 24 : 17,
              ),

              // SvgPicture.asset(
              //   "$svgPath/community_icon.svg",
              //   color: _currentIndex == 3
              //       ? kButtonBlue
              //       : Colors.grey.withOpacity(0.5),
              // ),
              label: 'Community',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: _currentIndex == 4
                    ? kButtonBlue
                    : Colors.grey.withOpacity(0.5),
                size: _currentIndex == 4 ? 24 : 17,
              ),

              // SvgPicture.asset(
              //   //"$svgPath/account_icon.svg",
              //   // color: _currentIndex == 4
              //   //     ? kButtonBlue
              //   //     : Colors.transparent.withOpacity(0.5),
              // ),
              label: 'Account',
            ),
          ],
        ),
        body: _children.length >= 4
            ? _children[_currentIndex]['widget']
            : const Center(
                child: SizedBox(height: 20, child: CircularProgressIndicator()),
              ),
      ),
    );
  }
}
