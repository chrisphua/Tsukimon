import 'package:flutter/material.dart';
import 'package:tsukimon/helpers/bookings/active.dart';
import 'package:tsukimon/helpers/bookings/cancelled.dart';
import 'package:tsukimon/helpers/bookings/finished.dart';

class BookingsScreen extends StatefulWidget {
  const BookingsScreen({Key? key}) : super(key: key);

  @override
  State<BookingsScreen> createState() => _BookingsScreenState();
}

class _BookingsScreenState extends State<BookingsScreen> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffFAFAFA),
        elevation: 0,
        title: const Text(
          'Bookings',
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 15, 15, 15),
          ),
        ),
        leading: const ImageIcon(
          AssetImage('assets/images/Group 14.png'),
          color: Color.fromARGB(255, 15, 15, 15),
        ),
        actions: const [
          ImageIcon(
            AssetImage('assets/images/Search.png'),
            color: Color.fromARGB(255, 15, 15, 15),
          ),
          SizedBox(width: 20,)
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                TabBar(
                  unselectedLabelColor: const Color(0xffB4B4B4),
                  labelColor: const Color(0xff101010),
                  labelStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                  ),
                  tabs: const [
                    Tab(
                      text: 'Active',
                    ),
                    Tab(
                      text: 'Finished',
                    ),
                    Tab(
                      text: 'Cancelled',
                    )
                  ],
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.tab,
                ),
              ],
            ),
            Flexible(
              child: TabBarView(
                children: const [
                  ActivePageWidget(),
                  FinishedPageWidget(),
                  CancelledPageWidget()
                ],
                controller: _tabController,
              ),
            )
          ],
        ),
      ),
    );
  }
}
