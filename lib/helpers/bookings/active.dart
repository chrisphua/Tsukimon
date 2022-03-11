import 'package:flutter/material.dart';

class ActivePageWidget extends StatelessWidget {
  const ActivePageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Container(
                height: 230,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 20,
                      offset: const Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
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
                          const SizedBox(width: 20,),
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
                                'Confinement Nanny',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff5273FF),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const Text(
                        '28 days confinement',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          color: Color(0xff101010),
                        ),
                      ),
                      Row(
                        children: const [
                          Text(
                            'Start Date:',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              color: Color(0xff6A6A6A),
                            ),
                          ),
                          SizedBox(width: 15,),
                          Text(
                            'Wednesday, 1 June 2022',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              color: Color(0xff101010),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            'End Date:',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              color: Color(0xff6A6A6A),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Text(
                            'Tuesday, 28 June 2022',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              color: Color(0xff101010),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            'Total price',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              color: Color(0xff6A6A6A),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Text(
                            '\$2000',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              color: Color(0xff101010),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              Container(
                height: 230,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 20,
                      offset: const Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
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
                          const SizedBox(width: 20,),
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
                                'Confinement Nanny',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff5273FF),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const Text(
                        '28 days confinement',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          color: Color(0xff101010),
                        ),
                      ),
                      Row(
                        children: const [
                          Text(
                            'Start Date:',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              color: Color(0xff6A6A6A),
                            ),
                          ),
                          SizedBox(width: 15,),
                          Text(
                            'Wednesday, 1 June 2022',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              color: Color(0xff101010),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            'End Date:',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              color: Color(0xff6A6A6A),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Text(
                            'Tuesday, 28 June 2022',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              color: Color(0xff101010),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            'Total price',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              color: Color(0xff6A6A6A),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Text(
                            '\$2000',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              color: Color(0xff101010),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}