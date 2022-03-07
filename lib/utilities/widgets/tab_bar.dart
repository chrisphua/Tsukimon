import 'package:flutter/material.dart';

import '../constant.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({
    Key? key,
  }) : super(key: key);

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    double Screenheight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        TabBar(tabs: [
          Row(
            children: [
              //SvgPicture.asset('assets/images/light.svg'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Gallery',
                  style: kbodyText1,
                ),
              ),
            ],
          ),
          Row(
            children: [
              //SvgPicture.asset('assets/images/light1.svg'),
              Text(
                'Videos',
                style: kbodyText1,
              ),
            ],
          ),
        ]),
        Container(
          //color: Colors.red,
          padding: EdgeInsets.only(top: 10),
          height: 340,
          child: const TabBarView(
            children: [
              GalleryTab(),
              GalleryTab(),
            ],
          ),
        )
      ],
    );
  }
}

class GalleryTab extends StatelessWidget {
  const GalleryTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double Screenheight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        GridView.builder(
          itemCount: 6,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1,
            crossAxisCount: 3,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(3),
              decoration: const BoxDecoration(
                 
                  color: Colors.grey),
              
            
            );
          },
        ),
        const SizedBox(
          height: 15,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 50,
            alignment: Alignment.center,
            width: double.infinity,
            child: Text('View all',
                style: kbodyText1.copyWith(color: kbuttonColor)),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
                border: Border.all(color: kbuttonColor, width: 1)),
          ),
        ),
        
      ],
    );
  }
}
