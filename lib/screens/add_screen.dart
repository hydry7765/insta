import 'package:flutter/material.dart';
import 'package:instagram/widgets/add_gallarey.dart';
import 'package:instagram/widgets/add_header.dart';
import 'package:instagram/widgets/add_selected.dart';
import 'package:instagram/widgets/text_widget.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
              child: Header(),
            ),
            SelectedImage(),
            Gallery(),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xff272B40),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextP(
                      title: 'Draft',
                      txtcolor: Color(0xffF35383),
                    ),
                    TextP(
                      title: 'Gallery',
                      txtcolor: Color(0xffffffff),
                    ),
                    TextP(
                      title: 'Take',
                      txtcolor: Color(0xffffffff),
                    ),
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
