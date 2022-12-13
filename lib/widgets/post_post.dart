import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/widgets/elvated_button.dart';
import 'package:instagram/widgets/empty_space_widget.dart';
import 'package:instagram/widgets/home_addstory.dart';
import 'package:instagram/widgets/post_avatar.dart';
import 'package:instagram/widgets/profile.dart';
import 'package:instagram/widgets/text_widget.dart';

Widget getPost(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Container(
      width: double.infinity,
      height: 450,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Positioned(
            top: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                image: AssetImage('assets/images/coverpost.png'),
              ),
            ),
          ),
          Positioned(
            top: 15,
            right: 15,
            child: Icon(
              Icons.videocam,
              color: Colors.white,
              size: 30,
            ),
          ),
          Positioned(
            bottom: 25,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Container(
                  width: 340,
                  height: 46,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(255, 255, 255, .5),
                        Color.fromRGBO(255, 255, 255, .2),
                      ],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Color(0xffF35383),
                        size: 40,
                      ),
                      Text(
                        '2.7 K',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.chat_bubble_outline,
                        color: Color(0xffFFFFFF),
                        size: 40,
                      ),
                      Text(
                        '1.5 K',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(
                          Icons.share,
                          color: Color(0xffFFFFFF),
                          size: 33,
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              backgroundColor: Colors.transparent,
                              isScrollControlled: true,
                              builder: (BuildContext context) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      bottom: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom),
                                  child: ClipRRect(
                                      child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 40,
                                            sigmaY: 40,
                                          ),
                                          child: Stack(
                                            alignment: AlignmentDirectional
                                                .bottomCenter,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(36),
                                                    topRight:
                                                        Radius.circular(36),
                                                  ),
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    colors: [
                                                      Color.fromRGBO(
                                                          255, 255, 255, .5),
                                                      Color.fromRGBO(
                                                          255, 255, 255, .2),
                                                    ],
                                                  ),
                                                ),
                                                height: 400,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      20.0),
                                                  child: Column(
                                                    children: [
                                                      Column(
                                                        children: [
                                                          topHandle(),
                                                          headerBox(),
                                                          EmptySpace(32),
                                                          searchBox(),
                                                          EmptySpace(32),
                                                        ],
                                                      ),
                                                      _getGrid(),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                bottom: 47,
                                                child:
                                                    ElvatedButton(text: 'Send'),
                                              ),
                                            ],
                                          ))),
                                );
                              });
                        },
                      ),
                      Spacer(),
                      Icon(
                        Icons.bookmark_border_rounded,
                        color: Color(0xffFFFFFF),
                        size: 40,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _getGrid() {
  return Expanded(
    child: CustomScrollView(
      slivers: [
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return index == 0 ? AddStory() : getProfile();
            },
            childCount: 50,
          ),
        ),
        SliverPadding(padding: EdgeInsets.only(top: 80))
      ],
    ),
  );
}

Widget searchBox() {
  return Container(
    width: 340,
    height: 46,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(13),
      color: Color.fromRGBO(255, 255, 255, 0.4),
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 5,
          ),
          child: Image.asset(
            'assets/images/search.png',
          ),
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                hintText: 'Serach @username'),
          ),
        )
      ],
    ),
  );
}

Widget headerBox() {
  return Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      TextP(
        title: 'Share',
        fontsize: 20,
        isBold: false,
      ),
      Image(
        image: AssetImage(
          'assets/images/share.png',
        ),
      ),
    ],
  );
}

Widget topHandle() {
  return Container(
    margin: EdgeInsets.only(
      top: 10,
      bottom: 22,
    ),
    width: 67,
    height: 5,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    ),
  );
}
