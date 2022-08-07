import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/chat_list.dart';
import 'package:whatsapp_ui/widgets/contacts_list.dart';
import 'package:whatsapp_ui/widgets/web_chat_appbar.dart';
import 'package:whatsapp_ui/widgets/web_profile_bar.dart';
import 'package:whatsapp_ui/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  // web profile bar
                  WebProfileBar(),

                  // web search
                  WebSearchBar(),

                  // list Contact
                  ContactsList(),
                ],
              ),
            ),
          ),
          // web screen
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: const [
                // Chat App Bar
                WebChatAppbar(),

                // Chat List
                Expanded(child: ChatList()),

                // Message Input Box
              ],
            ),
          ),
        ],
      ),
    );
  }
}
