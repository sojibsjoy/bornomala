import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/player.dart';
import '../controllers/vowels_usage_controller.dart';
import 'item.dart';

class VowelsUsageView extends GetView<VowelsUsageController> {
  const VowelsUsageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('স্বরচিহ্ন ও এর ব্যবহার'),
        centerTitle: true,
        actions: [
          Player(
            // audioPath: 'assets/audio/vowels_usage.mp3',
            audioPath: 'assets/audio/parthona.mp3',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // item 'আ'
            Item(
              letter: 'আ',
              symbol: 'া',
              examples: ['কা', 'খা', 'গা', 'ঘা'],
            ),
            // item 'ই'
            Item(
              letter: 'ই',
              symbol: 'ি',
              examples: ['কি', 'খি', 'গি', 'ঘি'],
            ),
            // item 'ঈ'
            Item(
              letter: 'ঈ',
              symbol: 'ী',
              examples: ['কী', 'খী', 'গী', 'ঘী'],
            ),
            // item 'উ'
            Item(
              letter: 'উ',
              symbol: 'ু',
              examples: ['কু', 'খু', 'গু', 'ঘু'],
            ),
            // item 'ঊ'
            Item(
              letter: 'ঊ',
              symbol: 'ূ',
              examples: ['কূ', 'খূ', 'গূ', 'ঘূ'],
            ),
            // item 'ঋ'
            Item(
              letter: 'ঋ',
              symbol: 'ৃ',
              examples: ['কৃ', 'খৃ', 'গৃ', 'ঘৃ'],
            ),
            // item 'এ'
            Item(
              letter: 'এ',
              symbol: 'ে',
              examples: ['কে', 'খে', 'গে', 'ঘে'],
            ),
            // item 'ঐ'
            Item(
              letter: 'ঐ',
              symbol: 'ৈ',
              examples: ['কৈ', 'খৈ', 'গৈ', 'ঘৈ'],
            ),
            // item 'ও'
            Item(
              letter: 'ও',
              symbol: 'ো',
              examples: ['কো', 'খো', 'গো', 'ঘো'],
            ),
            // item 'ঔ'
            Item(
              letter: 'ঔ',
              symbol: 'ৌ',
              examples: ['কৌ', 'খৌ', 'গৌ', 'ঘৌ'],
            ),
          ],
        ),
      ),
    );
  }
}
