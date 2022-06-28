import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stande_aero/helper/colors.dart';
import 'package:stande_aero/screens/Profile/editprofile.dart';
// import 'package:stande_aero/screens/home/Profile/editprofile.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            // Get.to(profile());
            // _key.currentState!.openDrawer();
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
              'Profile',
              style: TextStyle(color: Colors.black),
            ),
            Container(
                width: 40,
                height: 40,
                child: Image.asset('assets/slicing/Untitled-4.png',
                    fit: BoxFit.cover)),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Get.to(Editprofile());
              },
              child: Container(
                  width: 30,
                  height: 20,
                  child: Image.asset('assets/slicing/Untitled-45.png',
                      fit: BoxFit.contain)),
            ),
          ),
        ],
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
          child: ListView(
            children: [
              Image.asset(
                'assets/slicing/Untitled-31.png',
                height: 150,
              ),
              profile_text(
                text: "John Doe",
              ),
              profile_text(text: "John@gmail.com"),
              profile_text(text: "Country"),
              profile_text(text: "City"),
              profile_text(text: "Phone Number"),
              profile_text(text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,")
           ,Padding(
             padding: EdgeInsets.fromLTRB(18.0, 8.0, 18.0, 18.0),
             child: SizedBox(
                          height: 50, //height of button
                          width: double.infinity,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: kPrimaryColor,
                              ),
                              onPressed: () {},
                              child: Text("Logout"))),
           ), ],
          ),
        ),
      ),
    );
  }
}

class profile_text extends StatelessWidget {
  var text;

  profile_text({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(18.0, 4.0, 18.0, 18.0),
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          "$text",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
