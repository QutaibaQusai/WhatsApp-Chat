import 'package:flutter/material.dart';
import 'package:whatsapp/widget/chat_view.dart';

// ignore: must_be_immutable
class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  ScrollController scrollController = ScrollController();
  double scrollPosition = 0;

  scrollListener() {
    setState(() {
      scrollPosition = scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    super.initState();
    scrollController.addListener(scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: TextButton(
              onPressed: () {},
              child: const Text("Edit"),
            ),
            title: const Text("Chat"),
            actions: [
              IconButton(
                icon: const Icon(Icons.camera_alt_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.add_circle_outline_sharp),
                onPressed: () {},
              )
            ],
          ),
          body: TabBarView(
            children: [
              const Center(
                child: Text("data"),
              ),
              const Center(
                child: Text("data"),
              ),
              const Center(
                child: Text("data"),
              ),
              ChatView(
                scrollPosition: scrollPosition,
                scrollController: scrollController,
              ),
              const Center(
                child: Text("data"),
              )
            ],
          ),
          bottomNavigationBar: const TabBar(
            indicatorColor: Colors.black,
            indicatorWeight: 1,
            labelColor: Colors.green,
            labelPadding: EdgeInsets.only(top: 10),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                text: "Update",
                icon: Icon(
                  Icons.update,
                  color: Colors.black,
                ),
                iconMargin: EdgeInsets.only(bottom: 10),
              ),
              Tab(
                text: "Communities",
                icon: Icon(
                  Icons.group,
                  color: Colors.black,
                ),
                iconMargin: EdgeInsets.only(bottom: 10),
              ),
              Tab(
                text: "Calls",
                icon: Icon(
                  Icons.call,
                  color: Colors.black,
                ),
                iconMargin: EdgeInsets.only(bottom: 10),
              ),
              Tab(
                text: "Chats",
                icon: Icon(
                  Icons.chat,
                  color: Colors.black,
                ),
                iconMargin: EdgeInsets.only(bottom: 10),
              ),
              Tab(
                text: "Settings",
                icon: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                iconMargin: EdgeInsets.only(bottom: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
