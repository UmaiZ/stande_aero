import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stande_aero/bottomcontroller.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  final bottomctrl = Get.put(BottomController());
  @override
  Widget build(BuildContext context) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(100), bottomRight: Radius.circular(100)),
      child: Drawer(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xff212330),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(
                height: res_height * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13, right: 13),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/slicing/Untitled-31.png',
                            width: 80,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'John Doe',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                              Text('john@email.com',
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // DrawerHeader(
              //   child: Text(
              //     'Side menu',
              //     style: TextStyle(color: Colors.white, fontSize: 25),
              //   ),
              //   decoration: BoxDecoration(
              //       color: Colors.green,
              //       image: DecorationImage(
              //           fit: BoxFit.fill,
              //           image: AssetImage('assets/slicing/Untitled-1.png'))),
              // ),
              SizedBox(
                height: res_height * 0.04,
              ),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  if (bottomctrl.navigationBarIndexValue != 0) {
                    bottomctrl.navBarChange(0);
                  } else {
                    Navigator.pop(context);
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 13, right: 13),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Padding(
                              padding: const EdgeInsets.all(7.0),
                              child:
                                  Image.asset("assets/slicing/Untitled-15.png"),
                            ),
                            onPressed: () {},
                          ),
                          Text(
                            'Home',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          )
                        ],
                      ),
                      Container(
                        height: 1,
                        color: Colors.grey.withOpacity(0.2),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  if (bottomctrl.navigationBarIndexValue != 3) {
                    bottomctrl.navBarChange(3);
                  } else {
                    Navigator.pop(context);
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 13, right: 13),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Padding(
                              padding: const EdgeInsets.all(7.0),
                              child:
                                  Image.asset("assets/slicing/Untitled-18.png"),
                            ),
                            onPressed: () {},
                          ),
                          Text(
                            'Profile',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          )
                        ],
                      ),
                      Container(
                        height: 1,
                        color: Colors.grey.withOpacity(0.2),
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