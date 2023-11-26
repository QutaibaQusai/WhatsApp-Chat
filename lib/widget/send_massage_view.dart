import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SendMassageView extends StatefulWidget {
  final Function(String) onSend;
  const SendMassageView({super.key, required this.onSend});

  @override
  State<SendMassageView> createState() => _SendMassageViewState();
}

class _SendMassageViewState extends State<SendMassageView> {
  TextEditingController textSend = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
            color: Colors.blue,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: TextField(
                controller: textSend,
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: const Icon(FontAwesomeIcons.paperPlane),
                    color: Colors.blue,
                    iconSize: 19,
                    onPressed: () {
                      setState(() {});
                      // if (textSend == "") {
                      //   return;
                      // } else {
                      // }
                      widget.onSend(textSend.text);
                      textSend.clear();
                    },
                  ),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mic),
            color: Colors.blue,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt_outlined),
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
