import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_first/constants/common_size.dart';
import 'package:quiz_first/view/screens/feed/quiz_detail_screen.dart';

class QuizPost extends StatelessWidget {
  QuizPost({Key? key}) : super(key: key);

  final sizedBoxH = SizedBox(
    height: 12,
  );

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: common_xxl_gap),
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
                    padding: const EdgeInsets.fromLTRB(
                        common_xxl_gap, common_xs_gap, common_xxl_gap, 0),
                    child: ExtendedImage.asset('assets/imgs/match01.jpg'),
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
                    child: InkWell(
                      onTap: () {
                        Get.to(() => QuizDetailScreen(),
                            fullscreenDialog: false);
                      },
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
      },
    );
  }
}
