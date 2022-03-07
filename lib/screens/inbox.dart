import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InboxPageScreen extends StatelessWidget {
  const InboxPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffFAFAFA),
        elevation: 0,
        title: const Text(
          'Messages',
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
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
            const SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: const Color(0xffDADADA)),
                  color: const Color(0xffFAFAFA),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: const [
                      ImageIcon(AssetImage("assets/images/Search.png"), color: Color(0xff6A6A6A),),
                      SizedBox(width: 10,),
                      Text(
                        'Search',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6A6A6A),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/Rectangle (3).png',
                          ),
                        )
                    ),
                  ),
                  //const SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Amy Chew, 33',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 15, 15, 15),
                        ),
                      ),
                      Text(
                        'Message here',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6A6A6A),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 100,),
                  const Text(
                    '9:40 AM',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Color(0xffB4B4B4),
                    ),
                    textAlign: TextAlign.end,
                  )
                ],
              ),
            ),
            const SizedBox(height: 15,),
            const Divider(thickness: 1, color: Color(0xffDADADA),),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/unsplash_3WgkTDw7XyE (1).png',
                          ),
                        )
                    ),
                  ),
                  //const SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Sofina_Chng, 57',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 15, 15, 15),
                        ),
                      ),
                      Text(
                        'Message here',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6A6A6A),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 100,),
                  const Text(
                    '9:40 AM',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Color(0xffB4B4B4),
                    ),
                    textAlign: TextAlign.end,
                  )
                ],
              ),
            ),
            const SizedBox(height: 15,),
            const Divider(thickness: 1, color: Color(0xffDADADA),),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/Rectangle (2).png',
                          ),
                        )
                    ),
                  ),
                  //const SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Sofina_Chng, 57',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 15, 15, 15),
                        ),
                      ),
                      Text(
                        'Message here',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6A6A6A),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 100,),
                  const Text(
                    '9:40 AM',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Color(0xffB4B4B4),
                    ),
                    textAlign: TextAlign.end,
                  )
                ],
              ),
            ),
            const SizedBox(height: 15,),
            const Divider(thickness: 1, color: Color(0xffDADADA),),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/unsplash_7eIVXzJfnKA (1).png',
                          ),
                        )
                    ),
                  ),
                  //const SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Sofina_Chng, 57',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 15, 15, 15),
                        ),
                      ),
                      Text(
                        'Message here',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6A6A6A),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 100,),
                  const Text(
                    '9:40 AM',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Color(0xffB4B4B4),
                    ),
                    textAlign: TextAlign.end,
                  )
                ],
              ),
            ),
            const SizedBox(height: 15,),
            const Divider(thickness: 1, color: Color(0xffDADADA),)
          ],
        ),
      ),
    );
  }
}
