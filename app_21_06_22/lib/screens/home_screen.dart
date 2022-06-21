import 'package:flutter/material.dart';
import 'package:app_21_06_22/screens/favorite_screen.dart';
import '../widgets/bottle_widget.dart';

List<Map<String, dynamic>>products = [
  {
    'title': 'Post 1',
    'description': 'This is a post',
    'image': 'assets/bottles_images/12.png',
  },
  {
    'title': 'Post 2',
    'description': 'This is a post',
    'image': 'assets/bottles_images/13.png',
  },
  {
    'title': 'Post 3',
    'description': 'This is a post',
    'image': 'assets/bottles_images/14.png',
  },
  {
    'title': 'Post 4',
    'description': 'This is a post',
    'image': 'assets/bottles_images/15.png',
  },
  {
    'title': 'Post 5',
    'description': 'This is a post',
    'image': 'assets/bottles_images/16.png',
  },
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController(
    initialPage: 0,
  );
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FavoriteScreen(),
                ),
              );
            },
            child: const Text(
              'Favoris',
              style: TextStyle(
              fontSize: 24,
              color: Colors.black
              ),
            ),
          ),
        ],
      ),
      body: PageView(
        children: 
          products.map((product) {
            return BottleWidget(post: product);
          }).toList(),
      ),
    );
  }
}