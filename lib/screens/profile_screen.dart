import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram/widgets/empty_space_widget.dart';
import 'package:instagram/widgets/profile_account.dart';
import 'package:instagram/widgets/profile_accountbox.dart';
import 'package:instagram/widgets/text_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xff1C1F2E),
        body: SafeArea(
          child: NestedScrollView(
              headerSliverBuilder: (context, isScroled) {
                return [
                  SliverAppBar(
                    actions: [
                      Padding(
                        padding: EdgeInsets.only(right: 18, top: 18),
                        child: Icon(Icons.menu),
                      )
                    ],
                    backgroundColor: Color(0xff1C1F2E),
                    expandedHeight: 173,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Image(
                        image: AssetImage('assets/images/5.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(15),
                      child: Container(
                        height: 25,
                        decoration: BoxDecoration(
                            color: Color(0xff1C1F2E),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: AccountBox(),
                  ),
                  SliverPersistentHeader(
                      pinned: true,
                      floating: true,
                      delegate: SliverTabBar(TabBar(
                        indicatorColor: Color(0xffF35383),
                        indicatorWeight: 2,
                        tabs: [
                          Tab(
                            icon: Icon(
                              Icons.image,
                              size: 35,
                            ),
                          ),
                          Tab(
                            icon: Icon(
                              Icons.bookmark,
                              size: 35,
                            ),
                          ),
                        ],
                      )))
                ];
              },
              body: TabBarView(
                children: [
                  Container(
                    child: CustomScrollView(
                      slivers: [
                        SliverGrid(
                          delegate: SliverChildBuilderDelegate(
                              (context, index) => Container(
                                    decoration: BoxDecoration(),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/images/${index}.png')),
                                    ),
                                  ),
                              childCount: 15),
                          gridDelegate: SliverQuiltedGridDelegate(
                            crossAxisCount: 3,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            repeatPattern: QuiltedGridRepeatPattern.inverted,
                            pattern: [
                              QuiltedGridTile(1, 1),
                              QuiltedGridTile(1, 1),
                              QuiltedGridTile(1, 1),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class SliverTabBar extends SliverPersistentHeaderDelegate {
  SliverTabBar(this._tabBar);
  final TabBar _tabBar;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(
      color: Color(0xff1C1F2E),
      child: _tabBar,
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  // TODO: implement minExtent
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return true;
  }
}
