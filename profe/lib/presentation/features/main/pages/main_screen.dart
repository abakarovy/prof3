
import 'package:flutter/material.dart';
import 'package:profe/presentation/uikit/components/profile/pages/profile_page.dart';
import 'package:profe/presentation/uikit/widgets/bottom_app_bar.dart';

class MainScreen extends StatefulWidget {
  final int? currentTab;

  const MainScreen({super.key, this.currentTab});

  @override
  State<StatefulWidget> createState() => _MainScreenState();
}


class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  late PageController _pageController;

  final Map<int, String> _tabRoutes = {
    0: "/home",
    1: "/catalog",
    2: "/projects",
    3: "/profile"
  };

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
        children: [
          Text("home"),
          Text("catalog"),
          Text("projects"),
          ProfilePage()
        ],
      ),
      bottomNavigationBar: BottomAppBarWidget(onSelected: (index) {
        _pageController.jumpToPage(index);
        // Navigator.pushNamedAndRemoveUntil(
        //   context, 
        //   _tabRoutes[index]!,
        //   (route) => route.isFirst
        // );
      }),
    );
  }
}