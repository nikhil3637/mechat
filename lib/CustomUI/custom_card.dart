import 'package:flutter/material.dart';
import 'package:mechat/Model/chat_model.dart';
import 'package:mechat/Screens/individual_page.dart';
import '';

class CustomCard extends StatelessWidget {
  final ChatModel chatModel;
  const CustomCard({Key? key, required this.chatModel}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => IndividualPage(chatModel: chatModel,)));
      },
      child:  Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/57.png'),
            ),
            title: Text(chatModel.name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                Text(chatModel.currentMessage),
              ],
            ),
            trailing: Text(chatModel.time),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20,left: 70),
            child: Divider(thickness: 2,),
          )
        ],
      ),
    );
  }
}
