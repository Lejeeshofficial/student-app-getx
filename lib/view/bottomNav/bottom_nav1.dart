import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_app/controller/student_controller.dart';
import 'package:student_app/view/homeScreen/home_screen.dart';
import 'package:student_app/view/listScreen/studentList_screen.dart';

class BottomNav extends StatelessWidget {
  BottomNav({super.key});

  // int currentSelectedIndex = 0;

  // List pages = [
  //   const ScreenHome(),
  //   ListStudentScreen(),
  // ];

  @override
  Widget build(BuildContext context) {
    final StudentController landingPageController =
        Get.put(StudentController(), permanent: false);
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: landingPageController.tabIndex.value,
          children: [
            const ScreenHome(),
            ListStudentScreen(),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => SizedBox(
          height: 54,
          child: BottomNavigationBar(
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black,
            backgroundColor: Colors.deepPurple,
            currentIndex: landingPageController.tabIndex.value,
            onTap: landingPageController.changeTabIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'List',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
