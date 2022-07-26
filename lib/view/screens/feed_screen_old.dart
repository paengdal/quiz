import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';
import 'package:get/get.dart';
import 'package:quiz_first/constants/common_size.dart';
import 'package:quiz_first/view/screens/feed/quiz_detail_screen.dart';

class FeedScreen extends StatelessWidget {
  FeedScreen({Key? key}) : super(key: key);

  final sizedBoxH = SizedBox(
    height: 12,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              flexibleSpace: FlexibleSpaceBar(
                background: Row(
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.plus_app,
                        color: Colors.black87,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.ellipsis_circle,
                        color: Colors.black87,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.bell,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              expandedHeight: 90,
              backgroundColor: Colors.white,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  // _question1(),
                  _question2(),
                  // _question3(),
                  _question4(),
                  _question5(),
                  // Container(
                  //   child: ExtendedImage.asset('assets/imgs/monimo.jpeg'),
                  // ),
                  // Container(
                  //   child: ExtendedImage.asset('assets/imgs/monimo2.jpeg'),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _question5() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
          common_l_gap, 0, common_l_gap, common_l_gap),
      child: Card(
        elevation: 20,
        shadowColor: Colors.black87,
        // color: Color(0xFF56637a),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            shape: BoxShape.rectangle,
          ),
          // height: 300,
          // color: Color(0xFF56637a),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(common_xxl_gap,
                    common_xxl_gap, common_xxl_gap, common_xs_gap),
                child: Text(
                  '퍼즐',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: common_xxl_gap),
                child: Text(
                  '우크라이나 전쟁을 일으킨 러시아의 대통령 누구일까요?',
                  style: TextStyle(
                    fontFamily: 'SDneoSB',
                    color: Colors.black87,
                    fontSize: 19,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(common_xxl_gap,
                    common_xl_gap, common_xxl_gap, common_xxl_gap + 4),
                child: Container(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            // padding: EdgeInsets.all(10),
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(25),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text(
                                '고르바초프',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: 'SDneoR',
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 13,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(12),
                                shape: BoxShape.rectangle,
                              ),
                              child: Center(
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'SDneoEB',
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      sizedBoxH,
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            // padding: EdgeInsets.all(10),
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(25),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text(
                                '이명박',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: 'SDneoR',
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 13,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(12),
                                shape: BoxShape.rectangle,
                              ),
                              child: Center(
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'SDneoEB',
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      sizedBoxH,
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            // padding: EdgeInsets.all(10),
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(25),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text(
                                '푸틴',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: 'SDneoR',
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 13,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(12),
                                shape: BoxShape.rectangle,
                              ),
                              child: Center(
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'SDneoEB',
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      sizedBoxH,
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            // padding: EdgeInsets.all(10),
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(25),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text(
                                '카본스키',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: 'SDneoR',
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 13,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(12),
                                shape: BoxShape.rectangle,
                              ),
                              child: Center(
                                child: Text(
                                  '4',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'SDneoEB',
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: 16,
                      // ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 1,
                color: Colors.grey[400],
                // indent: common_padding,
                // endIndent: common_padding,
              ),
              Container(
                height: 44,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '정답 입력 및 확인',
                      style: TextStyle(color: Colors.black54),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(CupertinoIcons.arrow_right_circle_fill,
                        color: Colors.black54),
                    SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _question4() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
          common_l_gap, 0, common_l_gap, common_l_gap),
      child: Card(
        elevation: 20,
        shadowColor: Colors.black87,
        // color: Color(0xFF56637a),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            shape: BoxShape.rectangle,
          ),
          // height: 300,
          // color: Color(0xFF56637a),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(common_xxl_gap,
                    common_xxl_gap, common_xxl_gap, common_xs_gap),
                child: Text(
                  '퍼즐',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: common_xxl_gap),
                child: Text(
                  '우크라이나 전쟁을 일으킨 러시아의 대통령 누구일까요?',
                  style: TextStyle(
                    fontFamily: 'SDneoSB',
                    color: Colors.black87,
                    fontSize: 19,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(common_xxl_gap,
                    common_xl_gap, common_xxl_gap, common_xxl_gap + 4),
                child: Container(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            // padding: EdgeInsets.all(10),
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(10),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text(
                                '고르바초프',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: 'SDneoR',
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 13,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(10),
                                shape: BoxShape.rectangle,
                              ),
                              child: Center(
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'SDneoEB',
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      sizedBoxH,
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            // padding: EdgeInsets.all(10),
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(10),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text(
                                '이명박',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: 'SDneoR',
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 13,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(10),
                                shape: BoxShape.rectangle,
                              ),
                              child: Center(
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'SDneoEB',
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      sizedBoxH,
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            // padding: EdgeInsets.all(10),
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(10),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text(
                                '푸틴',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: 'SDneoR',
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 13,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(10),
                                shape: BoxShape.rectangle,
                              ),
                              child: Center(
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'SDneoEB',
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      sizedBoxH,
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            // padding: EdgeInsets.all(10),
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(10),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text(
                                '카본스키',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: 'SDneoR',
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 13,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(10),
                                shape: BoxShape.rectangle,
                              ),
                              child: Center(
                                child: Text(
                                  '4',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'SDneoEB',
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: 16,
                      // ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 1,
                color: Colors.grey[400],
                // indent: common_padding,
                // endIndent: common_padding,
              ),
              Container(
                height: 44,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '정답 입력 및 확인',
                      style: TextStyle(color: Colors.black54),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(CupertinoIcons.arrow_right_circle_fill,
                        color: Colors.black54),
                    SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _question3() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
          common_l_gap, 0, common_l_gap, common_l_gap),
      child: Card(
        elevation: 20,
        shadowColor: Colors.black87,
        // color: Color(0xFF56637a),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            shape: BoxShape.rectangle,
          ),
          // height: 300,
          // color: Color(0xFF56637a),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(common_xxl_gap,
                    common_xxl_gap, common_xxl_gap, common_xs_gap),
                child: Text(
                  '퍼즐',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: common_xxl_gap),
                child: Text(
                  '우크라이나 전쟁을 일으킨 러시아의 대통령 누구일까요?',
                  style: TextStyle(
                    fontFamily: 'SDneoSB',
                    color: Colors.black87,
                    fontSize: 19,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(common_xxl_gap,
                    common_xl_gap, common_xxl_gap, common_xxl_gap + 4),
                child: Container(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(10),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text(
                                '고르바초프',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: 'SDneoR',
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                              shape: BoxShape.rectangle,
                            ),
                            child: Center(
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'SDneoEB',
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(10),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text(
                                '이명박',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: 'SDneoR',
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                              shape: BoxShape.rectangle,
                            ),
                            child: Center(
                              child: Text(
                                '2',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'SDneoEB',
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(10),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text(
                                '푸틴',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: 'SDneoR',
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                              shape: BoxShape.rectangle,
                            ),
                            child: Center(
                              child: Text(
                                '3',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'SDneoEB',
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(10),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text(
                                '카본스키',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: 'SDneoR',
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                              shape: BoxShape.rectangle,
                            ),
                            child: Center(
                              child: Text(
                                '4',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'SDneoEB',
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 1,
                color: Colors.grey[400],
                // indent: common_padding,
                // endIndent: common_padding,
              ),
              Container(
                height: 44,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '정답 입력 및 확인',
                      style: TextStyle(color: Colors.black54),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(CupertinoIcons.arrow_right_circle_fill,
                        color: Colors.black54),
                    SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _question2() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
          common_l_gap, 0, common_l_gap, common_l_gap),
      child: Card(
        elevation: 20,
        shadowColor: Colors.black87,
        // color: Color(0xFF56637a),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            shape: BoxShape.rectangle,
          ),
          // height: 300,
          // color: Color(0xFF56637a),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(common_xxl_gap,
                    common_xxl_gap, common_xxl_gap, common_xs_gap),
                child: Text(
                  '퍼즐',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: common_xxl_gap),
                child: Text(
                  '두 개의 성냥개비를 움직여 1을 만들어라. (단, 성냥개비를 구부리거나 부러뜨려서는 안 된다)',
                  style: TextStyle(
                    fontFamily: 'SDneoSB',
                    color: Colors.black87,
                    fontSize: 19,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(common_xxl_gap,
                    common_xs_gap, common_xxl_gap, common_xxl_gap + 4),
                child: ExtendedImage.asset('assets/imgs/match01.jpg'),
              ),
              Divider(
                height: 1,
                color: Colors.grey[400],
                // indent: common_padding,
                // endIndent: common_padding,
              ),
              InkWell(
                onTap: () {
                  Get.to(QuizDetailScreen());
                },
                child: Container(
                  height: 44,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '정답 입력 및 확인',
                        style: TextStyle(color: Colors.black54),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(CupertinoIcons.arrow_right_circle_fill,
                          color: Colors.black54),
                      SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _question1() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
          common_l_gap, 0, common_l_gap, common_l_gap),
      child: Card(
        elevation: 20,
        shadowColor: Colors.black87,
        // color: Color(0xFF56637a),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Container(
              child: Opacity(
                opacity: 1,
                child: ExtendedImage.asset(
                  'assets/imgs/match01.jpg',
                  fit: BoxFit.fitHeight,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                shape: BoxShape.rectangle,
              ),
            ),
            //검정색 그라데이션 부분 시작
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                shape: BoxShape.rectangle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black87,
                    Colors.black54,
                    Colors.black26,
                    Colors.black12,
                    Colors.transparent,
                  ],
                ),
              ),
            ),
            //검정색 그라데이션 부분 끝
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                shape: BoxShape.rectangle,

                // image: DecorationImage(
                //   fit: BoxFit.cover,
                //   image: AssetImage('assets/imgs/testBG.png'),
                // ),
              ),
              // height: 300,
              // color: Color(0xFF56637a),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(common_xxl_gap,
                        common_xxl_gap, common_xxl_gap, common_xs_gap),
                    child: Text(
                      '스포츠',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: common_xxl_gap),
                    child: Text(
                      '물가 이렇게 많이 올랐다고? 이게 바로 퀴즈 제목입니다. 길면 자르는 기능도..',
                      style: TextStyle(
                        fontFamily: 'SDneoSB',
                        color: Colors.white,
                        fontSize: 19,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
