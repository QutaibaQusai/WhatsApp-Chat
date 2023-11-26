import 'package:flutter/material.dart';
import 'package:whatsapp/model/content.dart';

class ContactTile extends StatelessWidget {
  final Contact contact;
  
  const ContactTile({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(contact.image),
                  backgroundColor: Colors.transparent,
                ),
                // SizedBox(
                //   width: 8,
                // ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              contact.name,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              contact.date,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                          ],
                        ),
                        Text(
                          contact.desc,
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 60),
              child: Divider(),
            )
          ],
        ),
      ),
    );
  }
}
