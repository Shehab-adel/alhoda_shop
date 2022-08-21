import 'package:alhoda/view/widgets/support_screen/text_form.dart';
import 'package:flutter/material.dart';

class ComplaintAndSuggestionCardWidget extends StatefulWidget {
  ComplaintAndSuggestionCardWidget({Key? key, required this.text})
      : super(key: key);
  String text = '';

  @override
  State<ComplaintAndSuggestionCardWidget> createState() =>
      _ComplaintAndSuggestionCardWidgetState();
}

class _ComplaintAndSuggestionCardWidgetState
    extends State<ComplaintAndSuggestionCardWidget> {
  late Size size;

  bool isExpansionChanged = false;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Column(
      children: [
        Card(
            elevation: 15,
            child: ExpansionTile(
              onExpansionChanged: (isExpansion) {
                isExpansionChanged = !isExpansionChanged;
                setState(() {});
              },
              leading: Text(
                widget.text,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              trailing: Icon(
                isExpansionChanged ? Icons.expand_less : Icons.expand_more,
                size: 23,
                color:
                    isExpansionChanged ? Colors.orangeAccent : Colors.black45,
              ),
              title: Container(),
              children: [
                SizedBox(
                  height: size.height * 0.26,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          "We'll Receive Your comment And Contact You Soon",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextForm(
                          formKey: formKey,
                        ),
                      ),
                      SizedBox(
                        height: size.height * .02,
                      ),
                      Card(
                        elevation: 10,
                        color: Colors.lightGreen.shade400,
                        child: Container(
                            height: size.height * .05,
                            width: size.width * .7,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12)),
                            child: Text(
                              'Send',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
