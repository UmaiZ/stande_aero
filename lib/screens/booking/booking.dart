// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:stande_aero/helper/colors.dart';
import 'package:stande_aero/screens/booking/engine_stand_booking.dart';
import 'package:table_calendar/table_calendar.dart';

class booking extends StatelessWidget {
  booking({Key? key}) : super(key: key);
  double pad = 23.0;
  @override
  Widget build(BuildContext context) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            Navigator.pop(context);
            // _key.currentState!.openDrawer();
          },
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
                width: 25,
                child: Image.asset(
                  'assets/slicing/Untitled-3.png',
                )),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'CF34-10 DAE',
              style: TextStyle(color: Colors.black),
            ),
            Container(
                width: 40,
                height: 40,
                child: Image.asset('assets/slicing/Untitled-4.png',
                    fit: BoxFit.cover)),
          ],
        ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: GestureDetector(
        //       onTap: () {
        //         Get.to(Editprofile());
        //       },
        //       child: Container(
        //           width: 30,
        //           height: 20,
        //           child: Image.asset('assets/slicing/Untitled-45.png',
        //               fit: BoxFit.contain)),
        //     ),
        //   ),
        // ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        // height:  double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/slicing/Untitled-46.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                custum_Slider(res_width: res_width),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: pad, vertical: pad / 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'CF34-10 DAE',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Location: Miami, Florida",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      // Text(
                      //   'Miami, Florida',
                      //   style: TextStyle(color: Colors.black),
                      // ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: pad),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(pad),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white),
                    // height: 200,
                    child: TableCalendar(
                      // daysOfWeekVisible: false,

                      calendarStyle: CalendarStyle(
                          todayDecoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(50)),
                          selectedDecoration:
                              BoxDecoration(color: kPrimaryColor)),

                      headerStyle: HeaderStyle(
                          formatButtonVisible: false,
                          titleCentered: true,
                          leftChevronIcon: CircleAvatar(
                            backgroundColor: kPrimaryColor,
                            child: Icon(
                              Icons.chevron_left,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                          rightChevronIcon: CircleAvatar(
                            backgroundColor: kPrimaryColor,
                            child: Icon(
                              Icons.chevron_right,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                          decoration: BoxDecoration(color: Colors.white)),
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      focusedDay: DateTime.now(),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(stand_booking());
                  },
                  child: Container(
                    width: res_width * 0.9,
                    decoration: BoxDecoration(
                        color: Color(0xffaf8a39),
                        borderRadius: BorderRadius.all(Radius.circular(7))),
                    child: Padding(
                      padding: EdgeInsets.all(13.0),
                      child: Center(
                        child: Text(
                          'Select Booking Dates',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ),
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

class custum_Slider extends StatelessWidget {
  const custum_Slider({
    Key? key,
    required this.res_width,
  }) : super(key: key);

  final double res_width;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 190.0,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 0.9,
        aspectRatio: 7.0,
        initialPage: 2,
      ),
      items: [
        1,
        2,
        3,
      ].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Card(
              elevation: 8,
              child: Image.asset(
                "assets/slicing/Untitled-26.png",
                width: res_width,
                fit: BoxFit.fill,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
