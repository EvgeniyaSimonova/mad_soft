import 'package:flutter/material.dart';
import 'package:mad_soft/utils/colors.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            spreadRadius: -17,
            blurRadius: 30,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 24,
          selectedItemColor: AppColors.menuActivate,
          unselectedItemColor: AppColors.menuDeactivate,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Объекты',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.photo_camera_back_outlined),
              label: 'Сеты',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              label: 'Профиль',
            ),
          ],
        ),
      ),
    );
  }
}
