import 'package:flutter/material.dart';
import 'package:lapstore_app/widgets/header.dart';
import 'package:lapstore_app/widgets/category.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late AnimationController fadeController;
  late Animation<double> fadeAnimation;

  @override
  void initState() {
    super.initState();

    fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );

    fadeAnimation = CurvedAnimation(
      parent: fadeController,
      curve: Curves.easeOut,
    );

    fadeController.forward();
  }

  @override
  void dispose() {
    fadeController.dispose();
    super.dispose();
  }

  final List<Map<String, dynamic>> laptopCategories = [
    {
      'image': 'assets/images/Gaming.jpg',
      'label': 'Laptop Gaming',
      'color': Color.fromARGB(255, 255, 0, 0),
    },
    {
      'image': 'assets/images/Kantor.jpg',
      'label': 'Laptop Kantor',
      'color': Color.fromARGB(255, 255, 238, 0),
    },
    {
      'image': 'assets/images/Desain_Grafis.jpg',
      'label': 'Laptop Desain',
      'color': Color.fromARGB(255, 66, 255, 195),
    },
    {
      'image': 'assets/images/Bisnis.jpg',
      'label': 'Laptop Bisnis',
      'color': Color.fromARGB(255, 145, 64, 251),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lapstore'),
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {},
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ],
        backgroundColor: Color.fromARGB(255, 79, 79, 93),
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: FadeTransition(
        opacity: fadeAnimation,
        child: SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 0.05),
            end: Offset.zero,
          ).animate(fadeAnimation),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 79, 79, 93),
                  Color.fromARGB(255, 180, 183, 191),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
              ),
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  const HeaderSection(),
                  const SizedBox(height: 30),
                  CategorySection(laptopCategories: laptopCategories),
                  const SizedBox(height: 60),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
