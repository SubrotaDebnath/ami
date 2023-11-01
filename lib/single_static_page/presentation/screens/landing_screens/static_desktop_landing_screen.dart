import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
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

  int currentIndex = 0;
  int? sideNavigationHoverIndex;
  int progress = 0;

  void setIndex({required int index}) {
    setState(() {
      currentIndex = index;
    });
  }

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

  // Future<void> _scrollToIndex() async {
  //   await _itemScrollController.scrollTo(
  //     index: sideNavigationNotifier.value,
  //     duration: const Duration(milliseconds: 300),
  //     curve: Curves.easeInOutCubic,
  //   );
  // }

  //mouse Tracker
  // double dx = 0.0;
  // double dy = 0.0;
  //
  // bool isOut = true;

  @override
  void initState() {
    super.initState();

    content = contents();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      sideNavigationNotifier.addListener(() async {
        setIndex(index: sideNavigationNotifier.value);
        await _itemScrollController.scrollTo(
          index: sideNavigationNotifier.value,
          duration: const Duration(milliseconds: 300),
        );
      });
    });

    //mouse Tracker
    // html.document.documentElement!.addEventListener('mouseleave', (event) {
    //   setState(() {
    //     isOut = true;
    //   });
    // });
    // html.document.documentElement!.addEventListener('mouseenter', (event) {
    //   setState(() {
    //     isOut = false;
    //   });
    // });
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
      body: Stack(
        children: [
          MouseRegion(
            onHover: (event) {
              //Mouse Tracker
              // setState(() {
              //   dx = event.localPosition.dx;
              //   dy = event.localPosition.dy;
              // });
            },
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  width: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // info
                      Column(
                        children: [
                          const SizedBox(
                            height: 18,
                          ),
                          ClipOval(
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colours.kPrimery,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(120),
                              ),
                              child: const ClipOval(
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/subrota.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          const Text(
                            'Subrota Debnath',
                            style: TextStyle(
                              color: Colours.kPrimery,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Text(
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
                              return MouseRegion(
                                onExit: (v) {
                                  sideNavigationHoverIndex = null;
                                },
                                child: InkWell(
                                  // hoverColor: sideNavigationNotifier.value == index?Colors.transparent: Colors.pink.shade100,
                                  onHover: (b) {
                                    setState(() {
                                      sideNavigationHoverIndex = index;
                                    });
                                  },
                                  onTap: () {
                                    sideNavigationNotifier.value = index;
                                  },
                                  mouseCursor: MouseCursor.defer,
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  hoverColor: Colors.transparent,

                                  child: Card(
                                    color: Colors.white,
                                    surfaceTintColor: Colors.green.shade100,
                                    elevation:
                                        sideNavigationNotifier.value == index
                                            ? 4
                                            : 0,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: sideNavigationHoverIndex !=
                                                      null &&
                                                  sideNavigationHoverIndex ==
                                                      index
                                              ? Colours.kPrimery
                                              : Colors.transparent),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Container(
                                      padding: const EdgeInsets.all(12),
                                      // decoration: BoxDecoration(
                                      //   borderRadius: BorderRadius.circular(8),
                                      // ),
                                      child: Center(
                                        child: Text(
                                          content[index].sectionTitle,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight:
                                                sideNavigationNotifier.value ==
                                                        index
                                                    ? FontWeight.w700
                                                    : FontWeight.normal,
                                            color:
                                                sideNavigationNotifier.value ==
                                                        index
                                                    ? Colours.kPrimery
                                                    : Colors.black87,
                                          ),
                                        ),
                                      ),
                                    ),
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
                SizedBox(
                  child: FAProgressBar(
                    direction: Axis.vertical,
                    borderRadius: BorderRadius.zero,
                    currentValue: progress.toDouble(),
                    displayText: '',
                    verticalDirection: VerticalDirection.up,
                    backgroundColor: Colors.grey.shade100,
                    progressColor: Colours.kPrimery,
                    displayTextStyle: const TextStyle(
                      color: Colors.transparent,
                    ),
                    size: 2,
                  ),
                ),
                Expanded(
                  child: NotificationListener<ScrollNotification>(
                    onNotification: (notification) {
                      if (notification is UserScrollNotification) {
                        //ToDo: Add Page Scroll Progress Persentage

                        // setIndex(index: trailingIndex);
                        sideNavigationNotifier.value = trailingIndex;
                        setState(() {
                          progress = ((notification.metrics.pixels /
                                      notification.metrics.maxScrollExtent) *
                                  100)
                              .round();
                        });
                      }
                      return true;
                    },
                    child: ScrollablePositionedList.builder(
                      itemScrollController: _itemScrollController,
                      scrollOffsetController: _scrollOffsetController,
                      itemPositionsListener: _itemPositionsListener,
                      scrollOffsetListener: _scrollOffsetListener,
                      itemCount: content.length,
                      physics: const AlwaysScrollableScrollPhysics(),
                      // physics: const ClampingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return content[index].view;
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),

          //Mouse Tracker
          // AnimatedPositioned(
          //   duration: const Duration(milliseconds: 200),
          //   top: dy-20,
          //   left: dx-20,
          //   curve: Curves.easeOut,
          //   child: SizedBox(
          //     height: 40,
          //     width: 40,
          //     child: Stack(
          //       children: [
          //         ClipOval(
          //           child: AnimatedContainer(
          //             duration: const Duration(milliseconds: 10),
          //             height: isOut ? 0.0 : 40.0,
          //             width: isOut ? 0.0 : 40.0,
          //             decoration: BoxDecoration(
          //                 color: Colors.transparent,
          //                 border:Border.all(color: Colours.kPrimery),
          //                 borderRadius: BorderRadius.circular(40)
          //             ),
          //           ),
          //         ),
          //         Align(
          //           child: AnimatedContainer(
          //             duration: const Duration(milliseconds: 10),
          //             height: isOut ? 0.0 : 9.0,
          //             width: isOut ? 0.0 : 9.0,
          //             decoration: BoxDecoration(
          //               color: Colours.kPrimery,
          //               borderRadius: BorderRadius.circular(20),
          //             ),
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
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
