import 'package:flutter/material.dart';
import 'package:tsukimon/screens/account.dart';
import 'package:tsukimon/screens/bookings.dart';
import 'package:tsukimon/screens/discover.dart';
import 'package:tsukimon/screens/inbox.dart';
import 'package:tsukimon/screens/wishlists.dart';

class BottomNavScreen extends StatefulWidget {
  final int? index;
  final ValueChanged<int>? onTap;

  const BottomNavScreen({Key? key, this.index, this.onTap}) : super(key: key);
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> with SingleTickerProviderStateMixin {

  TabController? tabController;
  int selectedIndex = 0;

  void onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController!.index = selectedIndex;
    });
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: const [
          DiscoverScreen(),
          WishListsScreen(),
          BookingsScreen(),
          InboxPageScreen(),
          AccountPageScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/Vector (3).png")),
              label: 'Discover'
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/Stroke 1.png")),
              label: 'WishLists'
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/Calendar.png")),
              label: 'Bookings'
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/Message.png")),
              label: 'Inbox'
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/Vector (2).png")),
              label: 'Account'
          ),
        ],
        currentIndex: selectedIndex,
        showUnselectedLabels: true,
        unselectedItemColor: const Color.fromRGBO(106, 106, 106, 1),
        selectedItemColor: const Color.fromRGBO(82, 115, 255, 1),
        iconSize: 25,
        backgroundColor: const Color(0xffFAFAFA),
        onTap: onItemClicked,
        elevation: 4,
      ),
    );
  }
}
