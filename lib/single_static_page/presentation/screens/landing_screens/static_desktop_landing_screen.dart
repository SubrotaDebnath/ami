import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../../constants/colours.dart';
import '../about_screens/static_desktop_about_screen.dart';
import '../blog_screens/static_desktop_blog_screen.dart';
import '../contact_screens/static_desktop_contact_screen.dart';
import '../home_screens/static_desktop_home_screen.dart';
import '../portfolio_screens/static_desktop_portfolio_screen.dart';
import '../services_screens/static_desktop_services_screen.dart';

class StaticWebLandingScreen extends StatefulWidget {
  const StaticWebLandingScreen({super.key});

  @override
  State<StaticWebLandingScreen> createState() => _StaticWebLandingScreenState();
}

class _StaticWebLandingScreenState extends State<StaticWebLandingScreen> {
  final ItemScrollController _itemScrollController = ItemScrollController();
  final ScrollOffsetController _scrollOffsetController =
      ScrollOffsetController();
  final ItemPositionsListener _itemPositionsListener =
      ItemPositionsListener.create();
  final ScrollOffsetListener _scrollOffsetListener =
      ScrollOffsetListener.create();
  final ValueNotifier<int> sideNavigationNotifier = ValueNotifier<int>(0);
  late List<ViewContent> content;
  final ScrollController controller = ScrollController();

  int get trailingIndex {
    var index = _itemPositionsListener.itemPositions.value
        .where((ItemPosition position) => position.itemTrailingEdge > 0)
        .reduce(
          (ItemPosition min, ItemPosition position) =>
              position.itemTrailingEdge < min.itemTrailingEdge ? position : min,
        )
        .index;
    return index;
  }

  Future<void> _scrollToIndex() async {
    await _itemScrollController.scrollTo(
      index: sideNavigationNotifier.value,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOutCubic,
    );
  }

  @override
  void initState() {
    super.initState();

    content = contents();

    _itemPositionsListener.itemPositions.addListener(() {
      sideNavigationNotifier.value = trailingIndex;
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      sideNavigationNotifier.addListener(() async {
        await _scrollToIndex();
        setState(() {});
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    sideNavigationNotifier.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // info
                const Column(
                  children: [
                    ClipOval(
                      child: Image(
                        height: 120,
                        width: 120,
                        image: AssetImage('assets/images/subrota.png'),
                      ),
                    ),
                    Text(
                      'Subrota Debnath',
                      style: TextStyle(
                        color: Colours.kPrimery,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Mobile Application Developer',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                // Features tab
                Expanded(
                  child: Align(
                    child: ListView.builder(
                      controller: controller,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemCount: content.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            sideNavigationNotifier.value = index;
                          },
                          child: Text(
                            content[index].sectionTitle,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: sideNavigationNotifier.value == index
                                  ? FontWeight.w700
                                  : FontWeight.normal,
                              color: sideNavigationNotifier.value == index
                                  ? Colours.kPrimery
                                  : Colors.black87,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),

                //copyright
                const Column(
                  children: [
                    Text(
                      'Copyright © 2023 Subrota Debnath. All rights reserved.',
                      textAlign: TextAlign.center,
                      style: TextStyle(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                if (notification is UserScrollNotification) {
                  //ToDo: Add Page Scroll Progress Persentage
                  // double progress = notification.metrics.pixels / notification.metrics.maxScrollExtent;
                }
                return true;
              },
              child: ScrollablePositionedList.builder(
                itemScrollController: _itemScrollController,
                scrollOffsetController: _scrollOffsetController,
                itemPositionsListener: _itemPositionsListener,
                scrollOffsetListener: _scrollOffsetListener,
                itemCount: content.length,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return content[index].view;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<ViewContent> contents() {
  return <ViewContent>[
    const ViewContent(
      id: 1,
      sectionTitle: 'Home',
      view: StaticDesktopHomeScreen(),
    ),
    const ViewContent(
      id: 2,
      sectionTitle: 'About',
      view: StaticDesktopAboutScreen(),
    ),
    const ViewContent(
      id: 3,
      sectionTitle: 'Services',
      view: StaticDesktopServicesScreen(),
    ),
    const ViewContent(
      id: 4,
      sectionTitle: 'Portfolio',
      view: StaticDesktopPortfolioScreen(),
    ),
    const ViewContent(
      id: 5,
      sectionTitle: 'Blog',
      view: StaticDesktopBlogScreen(),
    ),
    const ViewContent(
      id: 6,
      sectionTitle: 'Contact',
      view: StaticDesktopContactScreen(),
    ),
  ];
}

class ViewContent {
  const ViewContent({
    required this.id,
    required this.sectionTitle,
    required this.view,
  });

  final int id;
  final String sectionTitle;
  final Widget view;
}
