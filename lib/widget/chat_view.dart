import 'package:flutter/material.dart';
import 'package:whatsapp/chat_details_screen.dart';
import 'package:whatsapp/model/content.dart';
import 'package:whatsapp/widget/contact_tile.dart';
import 'package:whatsapp/widget/search_view.dart';

class ChatView extends StatefulWidget {
  final ScrollController scrollController;
  final double scrollPosition;
  const ChatView({super.key, required this.scrollPosition,required this.scrollController});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {

  List<Contact> contactList = [
    Contact(
        image:
            "https://www.perfocal.com/blog/content/images/2021/01/Perfocal_17-11-2019_TYWFAQ_100_standard-3.jpg",
        name: "Nadia almalkawi",
        desc: "Good morning",
        date: "9:32 AM"),
    Contact(
        image:
            "https://img.freepik.com/free-photo/half-profile-image-handsome-young-caucasian-man-with-good-skin-brown-eyes-black-stylish-hair-stubble-posing-isolated-against-blank-wall-looking-front-him-smiling_343059-4560.jpg",
        name: "Abood hasanain",
        desc: "What are you doing?",
        date: "6:10 PM"),
    Contact(
        image:
            "https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg",
        name: "Mohammad ali",
        desc: "no ,thank you!!",
        date: "4:59 PM"),
    Contact(
        image:
            "https://www.perfocal.com/blog/content/images/2021/01/Perfocal_17-11-2019_TYWFAQ_100_standard-3.jpg",
        name: "Nadia almalkawi",
        desc: "Good morning",
        date: "9:32 AM"),
    Contact(
        image:
            "https://img.freepik.com/free-photo/half-profile-image-handsome-young-caucasian-man-with-good-skin-brown-eyes-black-stylish-hair-stubble-posing-isolated-against-blank-wall-looking-front-him-smiling_343059-4560.jpg",
        name: "Abood hasanain",
        desc: "What are you doing?",
        date: "6:10 PM"),
    Contact(
        image:
            "https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg",
        name: "Mohammad ali",
        desc: "no ,thank you!!",
        date: "4:59 PM"),
    Contact(
        image:
            "https://www.perfocal.com/blog/content/images/2021/01/Perfocal_17-11-2019_TYWFAQ_100_standard-3.jpg",
        name: "Nadia almalkawi",
        desc: "Good morning",
        date: "9:32 AM"),
    Contact(
        image:
            "https://img.freepik.com/free-photo/half-profile-image-handsome-young-caucasian-man-with-good-skin-brown-eyes-black-stylish-hair-stubble-posing-isolated-against-blank-wall-looking-front-him-smiling_343059-4560.jpg",
        name: "Abood hasanain",
        desc: "What are you doing?",
        date: "6:10 PM"),
    Contact(
        image:
            "https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg",
        name: "Mohammad ali",
        desc: "no ,thank you!!",
        date: "4:59 PM")
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        widget.scrollPosition == 0 ? const SearchView() : Container(),
        // * same same as divider
        // Container(
        //   height: 1,
        //   color: Colors.grey,
        // ),
        const Divider(),
        Expanded(
          child: ListView.builder(
            controller: widget.scrollController,
            itemCount: contactList.length,
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return ChatDetailsScreen(
                        image: contactList[index].image,
                        name: contactList[index].name,
                      );
                    }));
                  },
                  child: ContactTile(
                    contact: contactList[index],
                  ));
            },
          ),
        ),
      ],
    );
  }
}
