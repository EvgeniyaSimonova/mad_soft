import 'package:flutter/material.dart';
import 'package:mad_soft/home/presentation/screens/home_screen.dart';
import 'package:mad_soft/utils/colors.dart';
import 'package:memory_info/memory_info.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  String diskTotalSpace = '';

  void _onItemTapped(int index) {
    if (_selectedIndex == index) {
      return;
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<void> _getMemoryInfo() async {
    final diskSpace = await MemoryInfoPlugin().diskSpace;
    diskTotalSpace = ((diskSpace.totalSpace ?? 0) / 1024).toStringAsFixed(1);
  }

  @override
  void initState() {
    super.initState();

    _getMemoryInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAEFFF),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(diskTotalSpace: diskTotalSpace),
          HomeScreen(diskTotalSpace: diskTotalSpace),
          HomeScreen(diskTotalSpace: diskTotalSpace),
        ],
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Container buildBottomNavigationBar() {
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
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
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
