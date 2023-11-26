import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp/model/chat.dart';
import 'package:whatsapp/profile_details.dart';
import 'package:whatsapp/widget/send_massage_view.dart';

class ChatDetailsScreen extends StatefulWidget {
  final String image;
  final String name;
  const ChatDetailsScreen({super.key, required this.image, required this.name});

  @override
  State<ChatDetailsScreen> createState() => _ChatDetailsScreenState();
}

class _ChatDetailsScreenState extends State<ChatDetailsScreen> {
  List<Chat> chatList = [
    Chat(massage: "Hey there! How's your day going", myMassage: true),
    Chat(
        massage: " Not too bad, thanks! Just the usual grind. How about yours?",
        myMassage: false),
    Chat(
        massage:
            "Same here, work, work, work. But hey, did you catch that new movie that came out last weekend?",
        myMassage: true),
    Chat(
        massage:
            "Oh, you mean The Lost Constellation/? Yeah, I watched it. It was mind-blowing! The special effects were incredible.",
        myMassage: false),
    Chat(massage: "Hey there! How's your day going", myMassage: true),
    Chat(
        massage: " Not too bad, thanks! Just the usual grind. How about yours?",
        myMassage: false),
    Chat(massage: "Hey there! How's your day going", myMassage: true),
    Chat(
        massage: " Not too bad, thanks! Just the usual grind. How about yours?",
        myMassage: false),
    Chat(
        massage:
            "Same here, work, work, work. But hey, did you catch that new movie that came out last weekend?",
        myMassage: true),
    Chat(
        massage:
            "Oh, you mean The Lost Constellation/? Yeah, I watched it. It was mind-blowing! The special effects were incredible.",
        myMassage: false),
    Chat(massage: "Hey there! How's your day going", myMassage: true),
    Chat(
        massage: " Not too bad, thanks! Just the usual grind. How about yours?",
        myMassage: false),

    //   "hi",
    //   "how are you",
    //   "what are you doing?",
    //   "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            children: [
              InkWell(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage(widget.image),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          style: const TextStyle(fontSize: 14),
                        ),
                        const Text(
                          "Tab here for contact info",
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return const ProfileDetails();
                  }));
                },
              ),
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
            IconButton(
              icon: const Icon(Icons.video_call),
              onPressed: () {},
            )
          ],
        ),
        body: Stack(
          children: [
            SvgPicture.asset(
              "assets/chat_background.svg",
              fit: BoxFit.fill,
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: chatList.length,
                  itemBuilder: (ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                      child: Row(
                        mainAxisAlignment: chatList[index].myMassage
                            ? MainAxisAlignment.start
                            : MainAxisAlignment.end,
                        children: [
                          Flexible(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: chatList[index].myMassage
                                      ? Colors.white
                                      : Colors.grey[300],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  chatList[index].massage,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
        bottomNavigationBar: SendMassageView(
          onSend: (x) {
            setState(() {});
            print(x);
            chatList.add(Chat(massage: x, myMassage: true));
          },
        ),
      ),
    );
  }
}
