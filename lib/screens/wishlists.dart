import 'package:flutter/material.dart';

class WishListsScreen extends StatelessWidget {
  const WishListsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffFAFAFA),
        elevation: 0,
        title: const Text(
          'Wishlists',
          style: TextStyle(
            fontSize: 24.0,
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
            AssetImage('assets/images/Notification.png'),
            color: Color.fromARGB(255, 15, 15, 15),
          ),
          SizedBox(width: 20,)
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Center(
                child: Text(
                  'Oops No Item here',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 15, 15, 15),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Center(
                child: Text(
                  'But don’t panic!',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(0, 40, 204, 1),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Center(
                child: Text(
                  'Click the heart icon to save your favorites',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(106, 106, 106, 1),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'nannies or things to your wishlist.',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(106, 106, 106, 1),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
