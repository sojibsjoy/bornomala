import 'package:bornomala/app/data/alphabets/bn_alphabets.dart';
import 'package:bornomala/app/data/imgs.dart';
import 'package:bornomala/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import '../controllers/home_controller.dart';
import 'home_card.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      drawer: GFDrawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            GFDrawerHeader(
              currentAccountPicture: GFAvatar(
                radius: 80.0,
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg"),
              ),
              otherAccountsPictures: <Widget>[
                Image(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg"),
                  fit: BoxFit.cover,
                ),
                GFAvatar(
                  child: Text("ab"),
                )
              ],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('user name'),
                  Text('user@userid.com'),
                ],
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: null,
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: null,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // bengali vowels
          HomeCard(
            onTapFn: () => Get.toNamed(
              Routes.ALPHABET,
              arguments: BnAlphabets.vowels,
            ),
            imgPath: Imgs.splashImg,
            title: 'বাংলা স্বরবর্ণ',
            des: 'Learn Vowels Easily',
          ),
          // bengali vowels usage
          HomeCard(
            customH: 250.h,
            onTapFn: () => Get.toNamed(
              Routes.VOWELS_USAGE,
            ),
            imgPath: Imgs.splashImg,
            title: 'স্বরচিহ্ন ও এর ব্যবহার',
            des: 'Learn Vowels Easily',
          ),
          // bengali consonants
          HomeCard(
            onTapFn: () => Get.toNamed(
              Routes.ALPHABET,
              arguments: BnAlphabets.consonants,
            ),
            imgPath: Imgs.splashImg,
            title: 'বাংলা ব্যঞ্জনবর্ণ',
            des: 'Learn Consonants Easily',
          ),
          // bengali poems
          HomeCard(
            customH: 250.h,
            onTapFn: () => Get.toNamed(
              Routes.POEM_LIST,
            ),
            imgPath: Imgs.splashImg,
            title: 'বাংলা কবিতা',
            des: 'Learn Consonants Easily',
          ),
        ],
      ),
    );
  }
}
