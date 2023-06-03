import 'package:flutter/material.dart';
import 'package:mechat/CustomUI/custom_card.dart';
import 'package:mechat/Model/chat_model.dart';


class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats =[
    ChatModel(
      name : 'Lucky',
      isGroup : false,
      currentMessage : "hi everyone",
      time : '4.30',
      icon: 'people.png'
    ),
    ChatModel(
        name : 'Aditya',
        isGroup : false,
        currentMessage : "hi aditya",
        time : '5.30',
        icon: 'people.png'
    ),
    ChatModel(
        name : 'Nikhil',
        isGroup : true,
        currentMessage : "hi nikhil",
        time : '6.30',
        icon: 'people.png'
    ),
    ChatModel(
        name : 'Hritik',
        isGroup : false,
        currentMessage : "hi everyone its totla",
        time : '4.30',
        icon: 'people.png'
    )
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
        itemBuilder: (context,index) {
          return CustomCard(chatModel: chats[index]); // Return the CustomCard widget
        },
        // Other properties...
      )

    );
  }
}
