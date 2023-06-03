import 'package:flutter/material.dart';
import 'package:mechat/Pages/chat_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
   late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'meChat'
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
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
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt),),
            Tab(text: 'Chats',),
            Tab(text: 'Status',),
            Tab(text: 'Calls',),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text('Camera'),
          ChatPage(),
          Text('Status'),
          Text('Calls'),
        ],
      ),
    );
  }
}
