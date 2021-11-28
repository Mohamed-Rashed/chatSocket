import 'package:chatsoket/CustomUI/button_card.dart';
import 'package:chatsoket/CustomUI/content_card.dart';
import 'package:chatsoket/Model/chat_model.dart';
import 'package:chatsoket/Screens/create_group.dart';
import 'package:flutter/material.dart';

class SelectContent extends StatefulWidget {
  const SelectContent({Key? key}) : super(key: key);

  @override
  _SelectContentState createState() => _SelectContentState();
}

class _SelectContentState extends State<SelectContent> {
  @override
  Widget build(BuildContext context) {
    List<ChatModel> contacts = [
      ChatModel(name: "mohamed", status: "A full stack developer"),
      ChatModel(name: "rashed", status: "flutter developer"),
      ChatModel(name: "boshy", status: "App developer"),
      ChatModel(name: "Ahmed", status: "developer"),
      ChatModel(name: "Moustafa", status: "Backend developer"),
    ];
    return Scaffold(
        appBar: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select Content",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "256 Contacts",
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
            PopupMenuButton<String>(
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    child: Text("Invite a friend"),
                    value: "Invite a friend",
                  ),
                  PopupMenuItem(
                    child: Text("Contacts"),
                    value: "Contacts",
                  ),
                  PopupMenuItem(
                    child: Text("Refresh"),
                    value: "Refresh",
                  ),
                  PopupMenuItem(
                    child: Text("Help"),
                    value: "Help",
                  ),
                ];
              },
              onSelected: (value) {
                print(value);
              },
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: contacts.length + 2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return ButtonCard(
                fun: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (builder) => CreateGroup(),
                    ),
                  );
                },
                icon: Icons.group,
                name: "New Group",
              );
            } else if (index == 1) {
              return ButtonCard(
                fun: () {},
                icon: Icons.person_add,
                name: "New Contact",
              );
            }
            return ContentCard(contact: contacts[index - 2],fun: (){},);
          },
        ));
  }
}
