import 'package:auto_size_text/auto_size_text.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:bornomala/app/data/clrs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/helper_widgets.dart';
import '../controllers/alphabet_controller.dart';

class AlphabetView extends GetView<AlphabetController> {
  const AlphabetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      appBar: AppBar(
        title: const Text('অক্ষর পরিচিতি'),
        centerTitle: true,
        actions: [
          // play button
          Obx(
            () => IconButton(
              onPressed: () => !controller.isPlaying.value
                  ? controller.start()
                  : controller.stop(),
              icon: Icon(
                controller.isPlaying.value ? Icons.pause : Icons.play_arrow,
              ),
            ),
          ),
          addW(20.w),
        ],
      ),
      body: Obx(
        () => Container(
          width: Get.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: Clrs.ylwToBlu,
            ),
          ),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              // image & words
              Padding(
                padding: EdgeInsets.only(
                  bottom: 200.h,
                  right: 20.w,
                  // left: 20.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    //  image
                    Obx(
                      () => Image.asset(
                        controller.sModel.value.imgPath,
                        width: 980.w,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // alphabet list
                  Container(
                    height: 180.h,
                    child: ListView.builder(
                      controller: controller.scrollCon,
                      itemCount: controller.sList.length,
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(
                        left: 20.w,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () => controller.changeAlphabet(
                            controller.sList[index],
                          ),
                          child: Container(
                            height: controller.sModel.value.alphabet ==
                                    controller.sList[index].alphabet
                                ? 180.h
                                : 80.h,
                            width: 180.w,
                            margin: EdgeInsets.only(right: 20.w),
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: Clrs.ylwToBlu,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  controller.sList[index].alphabet,
                                  style: GoogleFonts.notoSans(
                                    fontSize: controller.sModel ==
                                            controller.sList[index]
                                        ? 100.sp
                                        : 80.sp,
                                    height: 1,
                                    color: Colors.blue,
                                  ),
                                ),
                                if (controller.sModel ==
                                    controller.sList[index])
                                  Container(
                                    width: 50.w,
                                    height: 5.h,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  // Main Letter (Big One)
                  Container(
                    height: 820.h,
                    width: double.infinity,
                    // color: Colors.redAccent,
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Center(
                      child: Transform.scale(
                        scaleY: 1.3,
                        child: BorderedText(
                          strokeWidth: 50.w,
                          strokeColor: Colors.white,
                          child: Text(
                            controller.sModel.value.alphabet,
                            style: TextStyle(
                              height: 1.3,
                              fontSize: 670.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // word list
                  Padding(
                    padding: EdgeInsets.only(right: 30.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // letter for text
                        Text(
                          '- তে',
                          style: TextStyle(
                            fontSize: 80.sp,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(
                          height: 600.h,
                          child: ListView.builder(
                            itemCount: controller.sModel.value.words.length,
                            shrinkWrap: true,
                            itemBuilder: (_, index) {
                              return Text(
                                controller.sModel.value.words[index],
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 90.sp,
                                  color: Colors.blue,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: Get.width,
        height: 200.h,
        margin: EdgeInsets.symmetric(horizontal: 30.w),
        child: Obx(
          () => AutoSizeText(
            controller.sModel.value.sentence,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSans(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
