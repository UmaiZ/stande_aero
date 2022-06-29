import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:stande_aero/screens/Profile/profile.dart';
import 'package:stande_aero/screens/booking/booking.dart';
import 'package:stande_aero/screens/home/drawer.dart';
// import 'package:stande_aero/screens/home/Profile/editprofile.dart';
// import 'package:stande_aero/screens/home/Profile/profile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _key = GlobalKey();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/slicing/Untitled-5.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        key: _key,
        drawer: NavDrawer(),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              _key.currentState!.openDrawer();
            },
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                  width: 25,
                  child: Image.asset('assets/slicing/Untitled-44.png')),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Home',
                style: TextStyle(color: Colors.black),
              ),
              Container(
                  width: 40,
                  height: 40,
                  child: Image.asset('assets/slicing/Untitled-4.png',
                      fit: BoxFit.cover)),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: res_height * 0.025,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13, right: 13),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: TextField(
                      decoration: new InputDecoration(
                        hintText: 'Search Job/Services',
                        hintStyle: TextStyle(),
                        contentPadding: EdgeInsets.only(top: 16, left: 13),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(Icons.search_outlined),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: res_height * 0.025,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          StandsBox(context, 'assets/slicing/Untitled-26.png'),
                          SizedBox(
                            width: res_width * 0.05,
                          ),
                          StandsBox(context, 'assets/slicing/Untitled-26.png'),
                          SizedBox(
                            width: res_width * 0.05,
                          ),
                          StandsBox(context, 'assets/slicing/Untitled-26.png'),
                          SizedBox(
                            width: res_width * 0.05,
                          ),
                          StandsBox(context, 'assets/slicing/Untitled-26.png')
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: res_height * 0.025,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          StandsBox(context, 'assets/slicing/Untitled-26.png'),
                          SizedBox(
                            width: res_width * 0.05,
                          ),
                          StandsBox(context, 'assets/slicing/Untitled-26.png'),
                          SizedBox(
                            width: res_width * 0.05,
                          ),
                          StandsBox(context, 'assets/slicing/Untitled-26.png'),
                          SizedBox(
                            width: res_width * 0.05,
                          ),
                          StandsBox(context, 'assets/slicing/Untitled-26.png')
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: res_height * 0.025,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget StandsBox(context, image) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Get.to(booking());
      },
      child: Container(
        width: res_width * 0.475,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(child: Image.asset(image, fit: BoxFit.cover)),
            SizedBox(
              height: res_height * 0.01,
            ),
            Text(
              'CF34-10 DAE',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            ),
            SizedBox(
              height: res_height * 0.0015,
            ),
            Text(
              'Location: Miami, Florida',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
            ),
            SizedBox(
              height: res_height * 0.0015,
            ),
            Text(
              'Lorem ipsum dolor sit amet, con-sectetur adip',
              style: TextStyle(fontSize: 13),
            )
          ],
        ),
      ),
    );
  }
}
