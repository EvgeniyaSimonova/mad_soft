import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mad_soft/home/data/repository/home_repo_impl.dart';
import 'package:mad_soft/home/presentation/bloc/home_bloc.dart';
import 'package:mad_soft/home/presentation/widgets/home_filling.dart';
import 'package:mad_soft/utils/colors.dart';
import 'package:memory_info/memory_info.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final HomeBloc _bloc;

  final TextEditingController _textController = TextEditingController();

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
    _bloc = HomeBloc(context.read<HomeRepo>());
    _bloc.add(GetPayloadListEvent());
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAEFFF),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeFilling(
            bloc: _bloc,
            textController: _textController,
            diskTotalSpace: diskTotalSpace,
          ),
          HomeFilling(
            bloc: _bloc,
            textController: _textController,
            diskTotalSpace: diskTotalSpace,
          ),
          HomeFilling(
            bloc: _bloc,
            textController: _textController,
            diskTotalSpace: diskTotalSpace,
          ),
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
