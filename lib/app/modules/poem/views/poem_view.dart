import 'package:auto_size_text/auto_size_text.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:bornomala/app/data/imgs.dart';
import 'package:bornomala/app/widgets/helper_widgets.dart';
import 'package:bornomala/app/widgets/player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';

import '../controllers/poem_controller.dart';

class PoemView extends GetView<PoemController> {
  const PoemView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('PoemView'),
        centerTitle: true,
        actions: [
          Player(
            audioPath: controller.poem.audioPath,
          ),
        ],
      ),
      body: GFImageOverlay(
        colorFilter: ColorFilter.mode(
          Colors.black54,
          BlendMode.darken,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // title
              Container(
                height: 280.h,
                width: Get.width,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: AutoSizeText(
                    controller.poem.title,
                    maxLines: 1,
                    textAlign: TextAlign.end,
                    style: GoogleFonts.notoSans(
                      fontSize: 160.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.8,
                    ),
                  ),
                ),
              ),
              addH(30.h),
              // author name
              BorderedText(
                strokeColor: Colors.black,
                child: Text(
                  controller.poem.author,
                  textAlign: TextAlign.end,
                  style: GoogleFonts.notoSans(
                    fontSize: 60.sp,
                    height: 1,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              addH(110.h),
              // lines
              Padding(
                padding: EdgeInsets.all(10),
                child: AutoSizeText(
                  controller.poem.lines,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.notoSans(
                    fontSize: 90.sp,
                    height: 1,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        image: AssetImage(
          Imgs.splashImg,
        ),
        height: Get.height,
        boxFit: BoxFit.fitHeight,
      ),
    );
  }
}
