import 'package:flutter/material.dart';
import 'package:mechat/Model/chat_model.dart';

class IndividualPage extends StatefulWidget {
  final ChatModel chatModel;
  const IndividualPage({Key? key, required this.chatModel}) : super(key: key);

  @override
  State<IndividualPage> createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
       leading: InkWell(
         onTap: (){Navigator.pop(context);},
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Icon(Icons.arrow_back),
             CircleAvatar(
               backgroundImage: AssetImage('assets/images/57.png'),
               radius: 20,
               backgroundColor: Colors.grey,
             )
           ],
         ),
       ),
        title: InkWell(
          onTap: (){ },
          child: Container(
            margin: EdgeInsets.all(6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(widget.chatModel.name),
              Text('Last seen at 6:00',style: TextStyle(fontSize: 12),)
            ],),
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.video_call)),
          IconButton(onPressed: (){}, icon: Icon(Icons.call)),
          PopupMenuButton(
            itemBuilder: (BuildContext context){
              return [
                PopupMenuItem(child: Text('New group'),value: 'New group',),
                PopupMenuItem(child: Text('New broadcast'),value: 'New broadcast',),
                PopupMenuItem(child: Text('Whatsapp Web'),value: 'Whatsapp Web',),
                PopupMenuItem(child: Text('Starred message'),value: 'Starred message',),
                PopupMenuItem(child: Text('Setting'),value: 'Setting',),
              ];
            },
            onSelected: (value){
              print(value);
            },
          )
        ],
      ),
    );
  }
}
