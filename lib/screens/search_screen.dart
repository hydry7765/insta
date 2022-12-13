import 'package:flutter/material.dart';
import 'package:instagram/widgets/empty_space_widget.dart';
import 'package:instagram/widgets/search_category.dart';
import 'package:instagram/widgets/search_explore.dart';
import 'package:instagram/widgets/search_searchbox.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SearchBox(),
            ),
            SliverToBoxAdapter(
              child: CategorysList(),
            ),
            SliverToBoxAdapter(
              child: EmptySpace(32),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: 17,
              ),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => Container(
                          decoration: BoxDecoration(),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('assets/images/${index}.png')),
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
                    QuiltedGridTile(2, 1),
                    QuiltedGridTile(2, 2),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
