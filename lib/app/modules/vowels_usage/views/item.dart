import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'clr_con.dart';

class Item extends StatelessWidget {
  final String letter;
  final String symbol;
  final List<String> examples;
  const Item({
    super.key,
    required this.letter,
    required this.symbol,
    required this.examples,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: true,
      tilePadding: EdgeInsets.zero,
      title: Row(
        children: [
          ClrCon(
            letter: letter,
          ),
          ClrCon(
            letter: '=',
            bgClr: Colors.pink.shade100,
          ),
          ClrCon(
            letter: symbol,
            bgClr: Colors.blue.shade100,
          ),
          ClrCon(
            letter: letter + 'কার',
            bgClr: Colors.green.shade100,
          ),
        ],
      ),
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: ClrCon(
                  letter: 'উদাহারণঃ',
                  bgClr: Colors.green.shade100,
                ),
              ),
              SizedBox(
                height: 150.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: examples.length,
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    return ClrCon(
                      letter: examples[index],
                      bgClr: Colors.green.shade100,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
