import 'package:bornomala/app/data/imgs.dart';
import 'package:bornomala/app/modules/alphabet/models/alphabet_model.dart';

class BnAlphabets {
  // vowels models
  static List<AlphabetModel> vowels = [
    // model 'অ'
    AlphabetModel(
      alphabet: 'অ',
      imgPath: Imgs.bnVow1,
      words: ['অসি', 'অজু', 'অমর', 'অজগর'],
      sentence: 'অজগরটি আসছে তেড়ে',
      // audioPath: 'assets/audio/অ.mp3',
      audioPath: 'assets/audio/parthona.mp3',
    ),
    // model 'আ'
    AlphabetModel(
      alphabet: 'আ',
      imgPath: Imgs.bnVow2,
      words: ['আতা', 'আপেল' 'আকাশ', 'আনারস'],
      sentence: 'আমটি আমি খাব পেড়ে',
      // audioPath: 'assets/audio/আ.mp3',
      audioPath: 'assets/audio/khuki.mp3',
    ),
    // model 'ই'
    AlphabetModel(
      alphabet: 'ই',
      imgPath: Imgs.bnVow3,
      words: ['ইট', 'ইলিশ', 'ইমাম', 'ইসলাম'],
      sentence: 'ইঁদুর ছানা ভয়ে মরে',
      // audioPath: 'assets/audio/ই.mp3',
      audioPath: 'assets/audio/parthona.mp3',
    ),
    // model 'ঈ'
    AlphabetModel(
      alphabet: 'ঈ',
      imgPath: Imgs.bnVow4,
      words: ['ঈদ', 'ঈমান', 'ঈশান', 'ঈদগাহ'],
      sentence: 'ঈগল পাখি আকাশে উড়ে',
      // audioPath: 'assets/audio/ঈ.mp3',
      audioPath: 'assets/audio/khuki.mp3',
    ),
    // model 'উ'
    AlphabetModel(
      alphabet: 'উ',
      imgPath: Imgs.bnVow5,
      words: ['উকিল', 'উদয়', 'উদ্যান', 'উপহার'],
      sentence: 'উট চলেছে মরুর দেশে',
      // audioPath: 'assets/audio/উ.mp3',
      audioPath: 'assets/audio/parthona.mp3',
    ),
    // model 'ঊ'
    AlphabetModel(
      alphabet: 'ঊ',
      imgPath: Imgs.bnVow6,
      words: ['ঊন', 'ঊরু', 'ঊর্ধ্ব', 'ঊষ্ণ'],
      sentence: 'ঊষা আসে পূর্ব আকাশে',
      // audioPath: 'assets/audio/ঊ.mp3',
      audioPath: 'assets/audio/khuki.mp3',
    ),
    // model 'ঋ'
    AlphabetModel(
      alphabet: 'ঋ',
      imgPath: Imgs.bnVow7,
      words: ['ঋণ', 'ঋষি', 'ঋজু', 'ঋষভ'],
      sentence: 'ছয়টি ঋতু বাংলাদেশে',
      // audioPath: 'assets/audio/ঋ.mp3',
      audioPath: 'assets/audio/parthona.mp3',
    ),
    // model 'এ'
    AlphabetModel(
      alphabet: 'এ',
      imgPath: Imgs.bnVow8,
      words: ['এক', 'একতা', 'এলাচি', 'এলাকা'],
      sentence: 'একতারা হাতে বাউল',
      // audioPath: 'assets/audio/এ.mp3',
      audioPath: 'assets/audio/khuki.mp3',
    ),
    // model 'ঐ'
    AlphabetModel(
      alphabet: 'ঐ',
      imgPath: Imgs.bnVow9,
      words: ['ঐক্য', 'ঐতিহ্য', 'ঐশ্বর্য', 'ঐতিহাসিক'],
      sentence: 'ঐতিহ্য আমাদের গর্ব',
      // audioPath: 'assets/audio/ঐ.mp3',
      audioPath: 'assets/audio/parthona.mp3',
    ),
    // model 'ও'
    AlphabetModel(
      alphabet: 'ও',
      imgPath: Imgs.bnVow10,
      words: ['ওল', 'ওড়না', 'ওয়েব', 'ওলকপি'],
      sentence: 'ওজন কর হিসাব করে',
      // audioPath: 'assets/audio/ও.mp3',
      audioPath: 'assets/audio/khuki.mp3',
    ),
    // model 'ঔ'
    AlphabetModel(
      alphabet: 'ঔ',
      imgPath: Imgs.bnVow11,
      words: ['ঔরস', 'ঔদার্য', 'ঔষধি', 'ঔপন্যাসিক'],
      sentence: 'ঔষধ খেলে অসুখ সারে',
      // audioPath: 'assets/audio/ঔ.mp3',
      audioPath: 'assets/audio/parthona.mp3',
    ),
  ];
  // consonants models
  static List<AlphabetModel> consonants = [
    // model 'ক'
    AlphabetModel(
      alphabet: 'ক',
      imgPath: Imgs.bnCon1,
      words: ['কট', 'কড়', 'কল', 'কম'],
      sentence: 'কটি কলে কড়ে গড়ে',
      // audioPath: 'assets/audio/ক.mp3',
      audioPath: 'assets/audio/parthona.mp3',
    ),
    // model 'খ'
    AlphabetModel(
      alphabet: 'খ',
      imgPath: Imgs.bnCon2,
      words: ['খট', 'খড়', 'খল', 'খম'],
      sentence: 'খটি খলে খড়ে গড়ে',
      // audioPath: 'assets/audio/খ.mp3',
      audioPath: 'assets/audio/parthona.mp3',
    ),
    // model 'গ'
    AlphabetModel(
      alphabet: 'গ',
      imgPath: Imgs.bnCon3,
      words: ['গড়', 'গড়া', 'গড়ি', 'গড়িয়ে'],
      sentence: 'গড়িয়ে গড়ে গড়ে',
      // audioPath: 'assets/audio/গ.mp3',
      audioPath: 'assets/audio/parthona.mp3',
    ),
  ];
}
