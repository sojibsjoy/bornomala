import 'dart:async';

import 'package:bornomala/app/modules/alphabet/models/alphabet_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

class AlphabetController extends GetxController {
  RxBool isPlaying = false.obs;
  RxList<AlphabetModel> sList = <AlphabetModel>[].obs;
  late Rx<AlphabetModel> sModel;

  final ScrollController scrollCon = ScrollController();

  late Timer timer;
  late AudioPlayer player;

  @override
  void onInit() {
    var args = Get.arguments;
    if (args != null) {
      sList.value = args as List<AlphabetModel>;
      sModel = sList[0].obs;
      player = AudioPlayer();
      player.setAsset(sModel.value.audioPath);
      player.play();
    }
    super.onInit();
  }

  // start method
  void start() {
    isPlaying.value = true;
    if (sModel.value != sList.first) {
      changeAlphabet(sList.first);
      scrollCon.jumpTo(0);
    } else {
      player.setAsset(sModel.value.audioPath);
      player.play();
    }
    timer = Timer.periodic(const Duration(seconds: 3), (_) {
      if (isPlaying.value) {
        if (sModel.value == sList.last) {
          timer.cancel();
          player.stop();
          isPlaying.value = false;
          return;
        }
        int index = sList.indexOf(sModel.value);
        changeAlphabet(sList[index + 1]);
        if (scrollCon.offset < scrollCon.position.maxScrollExtent) {
          scrollCon.animateTo(
            65.0 * index,
            duration: const Duration(seconds: 1),
            curve: Curves.ease,
          );
        }
      }
    });
  }

  // stop method
  void stop() {
    timer.cancel();
    player.stop();
    isPlaying.value = false;
  }

  // focusing the alphabet
  void changeAlphabet(AlphabetModel model) {
    sModel.value = model;
    player.stop();
    player.setAsset(model.audioPath);
    player.play();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    player.dispose();
    super.onClose();
  }
}
