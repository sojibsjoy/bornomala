import 'package:bornomala/app/data/poems/poem_model.dart';
import 'package:just_audio/just_audio.dart';
import 'package:get/get.dart';

class PoemController extends GetxController {
  late Poem poem;

  late AudioPlayer player;
  RxBool isPlayed = false.obs;
  RxBool isPlaying = false.obs;

  @override
  void onInit() {
    var args = Get.arguments;
    if (args != null) {
      poem = Get.arguments as Poem;
      player = AudioPlayer();
    }
    super.onInit();
  }

  void start() async {
    isPlaying.value = true;
    isPlayed.value = true;
    await player.setAsset(poem.audioPath);
    player.play();
  }

  void pause() {
    isPlaying.value = false;
    player.pause();
  }

  void play() {
    if (!isPlayed.value && !isPlaying.value) {
      start();
      return;
    }
    isPlaying.value = true;
    player.play();
  }

  void stop() {
    isPlaying.value = false;
    isPlayed.value = false;
    player.stop();
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
