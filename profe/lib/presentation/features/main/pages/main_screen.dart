
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profe/presentation/uikit/app_theme.dart';
import 'package:profe/presentation/uikit/components/profile/pages/profile_page.dart';

class MainScreen extends StatefulWidget {
  final int? currentTab;

  const MainScreen({super.key, this.currentTab});

  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.currentTab ?? 0;
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: const [
          Center(child: Text("home")),
          Center(child: Text("catalog")),
          Center(child: Text("projects")),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.pure,
        selectedItemColor: AppColors.accent,
        unselectedItemColor: AppColors.caption,
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          _pageController.jumpToPage(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/home_icon.svg"),
            label: "Главная",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: "Каталог",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline),
            label: "Проекты",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Профиль",
          ),
        ],
      ),
    );
  }
}