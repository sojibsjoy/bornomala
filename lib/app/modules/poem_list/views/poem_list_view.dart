import 'package:bornomala/app/data/poems/bn_poems.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/poem_list_controller.dart';

class PoemListView extends GetView<PoemListController> {
  const PoemListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('বাংলা কবিতা'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: BnPoems.poemList.length,
        itemBuilder: (_, index) {
          return ListTile(
            onTap: () => Get.toNamed(
              Routes.POEM,
              arguments: BnPoems.poemList[index],
            ),
            tileColor: Colors.grey.shade200,
            leading: const Icon(Icons.book),
            trailing: const Icon(Icons.chevron_right),
            dense: true,
            title: Text(BnPoems.poemList[index].title),
            subtitle: Text(BnPoems.poemList[index].author),
          );
        },
      ),
    );
  }
}
