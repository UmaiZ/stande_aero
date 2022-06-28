import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:stande_aero/bottomcontroller.dart';
import 'package:stande_aero/helper/colors.dart';
import 'package:stande_aero/screens/home/home.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final bottomctrl = Get.put(BottomController());

  void _onItemTapped(int index) {
    setState(() {
      bottomctrl.navBarChange(index);
    });
  }


  @override
  Widget build(BuildContext context) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;

    return Container(

      child: Scaffold(
        backgroundColor: Colors.transparent,
              bottomNavigationBar: GetBuilder<BottomController>(
            builder: (_) =>  BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: Color.fromRGBO(158, 158, 158, 1),
        currentIndex: bottomctrl.navigationBarIndexValue,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              bottomctrl.navigationBarIndexValue == 0
                  ? AssetImage("assets/slicing/Untitled-47.png")
                  : AssetImage("assets/slicing/Untitled-16.png"),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              bottomctrl.navigationBarIndexValue == 1
                  ? AssetImage("assets/slicing/Untitled-47.png")
                  : AssetImage("assets/slicing/Untitled-16.png"),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              bottomctrl.navigationBarIndexValue == 2
                  ? AssetImage("assets/slicing/Untitled-47.png")
                  : AssetImage("assets/slicing/Untitled-16.png"),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              bottomctrl.navigationBarIndexValue == 3
                  ? AssetImage("assets/slicing/Untitled-47.png")
                  : AssetImage("assets/slicing/Untitled-16.png"),
            ),
            label: '',
          ),
        ],
      )),body:  Container(
        
        child: GetBuilder<BottomController>(
            builder: (_) => bottomctrl.navigationBarIndexValue == 0
                ? HomeScreen()
                
                            : Container()),
      ),
    
      ),
    );
  }


}
