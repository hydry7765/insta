import 'dart:math';

import 'package:flutter/material.dart';
import 'package:instagram/widgets/elvated_button.dart';
import 'package:instagram/widgets/text_widget.dart';
import '../models/notification_datamodel.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen>
    with SingleTickerProviderStateMixin {
  List<NotificationData>? allNotifs;
  TabController? _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    allNotifs = [
      NotificationData('amir_shiri', 'follow', 'today'),
      NotificationData('mahdi.heydari', 'follow back', 'today'),
      NotificationData('shabnam_miss', 'like', 'today'),
      NotificationData('ftme_devil', 'follow', 'today'),
      NotificationData('sahar_tatto', 'follow back', 'this week'),
      NotificationData('milad_.gh', 'like', 'this week'),
      NotificationData('hassanifar63', 'like', 'this week'),
      NotificationData('mousa_kk', 'follow', 'this week'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 70,
              child: TabBar(
                controller: _tabController,
                tabs: [
                  Text('Following'),
                  Text('You'),
                ],
                indicatorColor: Color(0xffF35383),
                indicatorPadding: EdgeInsets.symmetric(horizontal: 17),
                indicatorWeight: 3,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                    child: CustomScrollView(
                      slivers: [
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            ((context, index) {
                              return Notif(allNotifs![index]);
                            }),
                            childCount: allNotifs!.length,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.red,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget Notif(NotificationData? insertData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: SizedBox(
        height: 80,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage('assets/images/userprofile.png'),
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: SizedBox(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextP(
                        title:
                            '${insertData!.userName} ${notifStatus(insertData.status)}',
                        fontsize: 12,
                        isBold: false),
                    TextP(
                      title: 'you',
                      fontsize: 12,
                      txtcolor: Color(0xffC5C5C5),
                    ),
                  ],
                ),
              ),
            ),
            getButton(insertData.status)
          ],
        ),
      ),
    );
  }

  String notifStatus(String? status) {
    switch (status) {
      case 'follow':
        return 'Started Follow';

      case 'like':
        return 'Liked Post';
      case 'follow back':
        return 'Backed';

      default:
        return 'nothing';
    }
  }

  Widget getButton(String? status) {
    switch (status) {
      case 'follow':
        return SizedBox(
          width: 120,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xffF35383)),
            onPressed: () {},
            child: TextP(
              isBold: false,
              title: 'Follow',
              fontsize: 11,
            ),
          ),
        );
      case 'follow back':
        return SizedBox(
          width: 120,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                side: BorderSide(
              color: Color(0xffF35383),
              width: 2,
            )),
            onPressed: () {},
            child: TextP(
              isBold: false,
              title: 'Message',
              fontsize: 11,
            ),
          ),
        );
      case 'like':
        return SizedBox(
          width: 120,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetImage('assets/images/5.png'),
              fit: BoxFit.cover,
            ),
          ),
        );

      default:
        return Row();
    }
  }
}
