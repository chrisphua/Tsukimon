import 'package:flutter/material.dart';

class AccountPageScreen extends StatelessWidget {
  const AccountPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffFAFAFA),
        elevation: 0,
        title: const Text(
          'Profile',
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
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              children: [
                const SizedBox(height: 30,),
                Center(
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/unsplash_Zz5LQe-VSMY (1).png',
                          ),
                        )
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                const Center(
                  child: Text(
                    'Sofina_Chng',
                    style: TextStyle(
                      fontSize: 32.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 15, 15, 15),
                    ),
                  ),
                ),
                const SizedBox(height: 50,),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: const Offset(10, 10), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Edit Profile',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            color: Color(0xff101010),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios_rounded, size: 11, color: Color(0xff202327),)
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: const Offset(10, 10), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Favorite Nannies',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            color: Color(0xff101010),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios_rounded, size: 11, color: Color(0xff202327),)
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: const Offset(10, 10), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Notifications',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            color: Color(0xff101010),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios_rounded, size: 11, color: Color(0xff202327),)
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: const Offset(10, 10), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Payments',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            color: Color(0xff101010),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios_rounded, size: 11, color: Color(0xff202327),)
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: const Offset(10, 10), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Share App',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            color: Color(0xff101010),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios_rounded, size: 11, color: Color(0xff202327),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
