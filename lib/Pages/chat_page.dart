import 'package:chatsoket/CustomUI/customCard.dart';
import 'package:chatsoket/Model/chat_model.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: "mohamed",
      isGroup: false,
      currentMessage: "hi Mohamed",
      time: "4:00",
      icon: "person.svg"
    ),
    ChatModel(
        name: "rashed",
        isGroup: false,
        currentMessage: "hi rashed",
        time: "4:00",
        icon: "person.svg"
    ),
    ChatModel(
        name: "boshy",
        isGroup: true,
        currentMessage: "hi boshy",
        time: "4:00",
        icon: "groups.svg"
    ),
    ChatModel(
        name: "Ahmed",
        isGroup: false,
        currentMessage: "hi Ahmed",
        time: "4:00",
        icon: "person.svg"
    ),
    ChatModel(
        name: "Moustafa",
        isGroup: true,
        currentMessage: "hi Moustafa",
        time: "4:00",
        icon: "groups.svg"
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context , index){
          return CustomCard(chat : chats[index]);
        },
      ),
    );
  }
}
