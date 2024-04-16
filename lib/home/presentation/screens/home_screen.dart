import 'package:flutter/material.dart';
import 'package:mad_soft/home/presentation/widgets/card_of_object.dart';
import 'package:mad_soft/home/presentation/widgets/custom_bottom_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAEFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFEAEFFF),
        title: const Text(
          'Объекты',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            iconSize: 25,
            icon: const Icon(Icons.info_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) =>
              const CardOfObject(),
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            height: 12,
          ),
          itemCount: 5,
        ),
      ),
      bottomNavigationBar: const CustomBottomBar(),
    );
  }
}
