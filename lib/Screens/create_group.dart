import 'package:chatsoket/CustomUI/avatar_card.dart';
import 'package:chatsoket/CustomUI/button_card.dart';
import 'package:chatsoket/CustomUI/content_card.dart';
import 'package:chatsoket/Model/chat_model.dart';
import 'package:flutter/material.dart';

class CreateGroup extends StatefulWidget {
  const CreateGroup({Key? key}) : super(key: key);

  @override
  _CreateGroupState createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  List<ChatModel> contacts = [
    ChatModel(name: "mohamed", status: "A full stack developer"),
    ChatModel(name: "rashed", status: "flutter developer"),
    ChatModel(name: "boshy", status: "App developer"),
    ChatModel(name: "Ahmed", status: "developer"),
    ChatModel(name: "Moustafa", status: "Backend developer"),
  ];
  List<ChatModel> groups = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New Group",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Add Participants",
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 26,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              return ContentCard(
                contact: contacts[index],
                fun: () {
                  if (contacts[index].selected == false) {
                    setState(() {
                      contacts[index].selected = true;
                      groups.add(contacts[index]);
                    });
                  } else {
                    setState(() {
                      contacts[index].selected = false;
                      groups.remove(contacts[index]);
                    });
                  }
                },
              );
            },
          ),
          Column(
            children: [
              Container(
                height: 75,
                color: Colors.white,
                child: ListView.builder(
                  itemBuilder: (context , index) =>AvatarCard(),
                  itemCount: contacts.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Divider(
                thickness: 1,
              )
            ],
          ),
        ],
      ),
    );
  }
}
