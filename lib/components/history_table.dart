import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_responsive_ui/style.dart';

import '../data.dart';

class HistoryTable extends StatelessWidget {
  const HistoryTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        width: double.infinity,
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: List.generate(transactionHistory.length, (index) => TableRow(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),

            ),
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20,top: 10,bottom: 10),
                child: CircleAvatar(
                  radius: 17,
                  backgroundImage: NetworkImage(transactionHistory[index]['avatar']!),
                ),
              ),
              PrimaryText(text:transactionHistory[index]['label'].toString(),size: 16,color: Colors.grey, ),
              PrimaryText(text:transactionHistory[index]['time'].toString(),size: 16,color: Colors.grey, ),
              PrimaryText(text:transactionHistory[index]['amount'].toString(),size: 16,color: Colors.grey, ),
              PrimaryText(text:transactionHistory[index]['status'].toString(),size: 16,color: Colors.grey, ),
            ]
          )),
        ),
      ),
    );
  }
}
