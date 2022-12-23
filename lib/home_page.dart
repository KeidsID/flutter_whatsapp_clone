import 'package:core/core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabCtrler;

  int _currentTab = 1;

  @override
  void initState() {
    super.initState();
    _tabCtrler = TabController(
      length: 4,
      vsync: this,
      initialIndex: _currentTab,
    );
    _tabCtrler.addListener(() {
      setState(() {
        _currentTab = _tabCtrler.index;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabCtrler.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // TabBar Config
    double iconWidth = screenWidth / 24;
    double othersWidth = (screenWidth - iconWidth) / 5;
    var labelPadding = EdgeInsets.symmetric(
        horizontal: (screenWidth - (iconWidth + othersWidth * 3)) / 8);

    final List<Widget?> fAB = [
      null,
      FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: (context.isDarkMode)
                ? kAppBarBgDarkColor
                : const Color(0xffe9edf0),
            foregroundColor:
                (context.isDarkMode) ? Colors.white : const Color(0xff556469),
            mini: true,
            child: const Icon(Icons.edit),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.camera_alt),
          ),
        ],
      ),
      FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_ic_call),
      ),
    ];

    return Scaffold(
      appBar: _appBar(
        context,
        labelPadding: labelPadding,
        tabIconWidth: iconWidth,
        tabTextWidth: othersWidth,
      ),
      body: _body(context),
      floatingActionButton: fAB[_currentTab],
    );
  }

  PreferredSizeWidget _appBar(
    BuildContext context, {
    EdgeInsetsGeometry? labelPadding,
    double? tabIconWidth,
    double? tabTextWidth,
  }) {
    return AppBar(
      title: const Text(appName),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.camera_alt_outlined),
        ),
        const SizedBox(width: 8),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        const SizedBox(width: 8),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
        ),
      ],
      bottom: TabBar(
        controller: _tabCtrler,
        padding: const EdgeInsets.only(top: 16),
        isScrollable: true,
        labelPadding: labelPadding,
        labelColor: (context.isDarkMode) ? kSecondaryColor : Colors.white,
        indicatorColor: (context.isDarkMode) ? kSecondaryColor : Colors.white,
        unselectedLabelColor: Colors.white38,
        tabs: [
          SizedBox(
            width: tabIconWidth,
            child: const Tab(icon: Icon(Icons.people)),
          ),
          SizedBox(
            width: tabTextWidth,
            child: const Tab(
              text: "CHATS",
            ),
          ),
          SizedBox(
            width: tabTextWidth,
            child: const Tab(
              text: "STATUS",
            ),
          ),
          SizedBox(
            width: tabTextWidth,
            child: const Tab(
              text: "CALLS",
            ),
          ),
        ],
      ),
    );
  }

  Widget _body(BuildContext context) {
    return TabBarView(
      controller: _tabCtrler,
      children: const [
        Center(child: Text("Cam")),
        Center(child: Text("Chats")),
        Center(child: Text("Status")),
        Center(child: Text("Calls")),
      ],
    );
  }
}
