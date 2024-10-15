import 'package:bornomala/app/data/poems/poem_model.dart';

class BnPoems {
  static List<Poem> poemList = [
    // parthona
    Poem(
      audioPath: 'assets/audio/parthona.mp3',
      title: 'প্রার্থনা',
      author: 'সুফিয়া কামাল',
      lines: '''তুলি দুই হাত
করি মোনাজাত,
হে রহিম রহমান।
কত সুন্দর করিয়া ধরণী
মোদের করেছ দান।
গাছে ফুল ফল
নদী ভরা জল
পাখির কন্ঠে গান,
সকলি তোমার দান।''',
    ),
    // khuki o kathbirali
    Poem(
      audioPath: 'assets/audio/khuki.mp3',
      title: 'খুকী ও কাঠবিড়ালী',
      author: 'কাজী নজরুল ইসলাম',
      lines: '''কাঠবিড়ালী! কাঠবিড়ালী!
পেয়ারা তুমি খাও?
গুড় মুড়ি খাও?
দুধ-ভাত খাও?
বাতাবি নেবু, লাউ?
বেড়াল-বাচ্চা, কুকুর ছানা? তাও?
ছোঁচা তুমি!
তোমার সঙ্গে আড়ি আমার, যাও!''',
    ),
  ];
}
