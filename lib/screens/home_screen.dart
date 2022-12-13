import 'package:flutter/material.dart';
import 'package:instagram/widgets/empty_space_widget.dart';
import 'package:instagram/widgets/home_addstory.dart';
import 'package:instagram/widgets/home_appbar.dart';
import 'package:instagram/widgets/home_posts.dart';
import 'package:instagram/widgets/home_storys.dart';
import 'package:instagram/widgets/post.dart';
import 'package:instagram/widgets/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Storys(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Post(context);
                },
                childCount: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
