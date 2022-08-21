import 'package:flutter/material.dart';

class CardTransactionWidget extends StatefulWidget {
  CardTransactionWidget({Key? key}) : super(key: key);

  @override
  State<CardTransactionWidget> createState() => _CardTransactionWidgetState();
}

class _CardTransactionWidgetState extends State<CardTransactionWidget> {
  late Size size;

  bool isExpansionChanged = false;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Card(
        elevation: 10,
        child: ExpansionTile(
          onExpansionChanged: (isExpansion) {
            isExpansionChanged = !isExpansionChanged;
            setState(() {});
          },
          leading: Container(
              height: size.height * 0.04,
              width: size.width * 0.08,
              decoration: BoxDecoration(
                  color:
                      isExpansionChanged ? Colors.black : Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.white)),
              child: const Icon(
                Icons.notifications,
                size: 23,
                color: Colors.white,
              )),
          title: const Text(
            'Past Transactions',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          trailing: Icon(
            isExpansionChanged ? Icons.expand_less : Icons.expand_more,
            size: 23,
            color: isExpansionChanged ? Colors.black : Colors.orangeAccent,
          ),
          children: [
            SizedBox(
                height: size.height * 0.07,
                child: const Text(
                  'No Past Transactions',
                  style: TextStyle(color: Colors.red, fontSize: 15),
                ))
          ],
        ));
  }
}
