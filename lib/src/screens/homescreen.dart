import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Text('Midas'),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.deepOrange, Colors.orangeAccent])),
                child: Container(
                  child: Column(
                    children: [
                      Material(
                        borderRadius: BorderRadius.all(
                          Radius.circular(60.0)
                        ),
                          elevation: 70,
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Image.asset('images/person.png',height: 60,width: 60,),
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('User', style: TextStyle(
                          color: Colors.white,
                          fontSize: 19
                        ),),
                      )
                    ],
                  ),
                )
            ),
            CustomListTile(Icons.person,'profile',() {}),
            CustomListTile(Icons.settings,'settings',() {}),
            CustomListTile(Icons.notification_important,'notifications',() {}),
            CustomListTile(Icons.exit_to_app,'Log out',() {}),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;
  CustomListTile(this.icon,this.text,this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0,0.0,8.0,0.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey.shade400)
          )
        ),
        child: InkWell(
          splashColor: Colors.orangeAccent,
          onTap: onTap,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(text,style: TextStyle(
                        fontSize: 18
                      ),),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
