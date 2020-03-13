import 'package:flutter/material.dart';

class GentelellaAppBar extends StatefulWidget implements PreferredSizeWidget {
  GentelellaAppBar({Key key}) :  preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);

  @override
   final Size preferredSize;

   @override
  _GentelellaAppBarState createState() => _GentelellaAppBarState();
}

class _GentelellaAppBarState extends State<GentelellaAppBar> {
  @override
  Widget build(BuildContext context) {
    return  AppBar(
              automaticallyImplyLeading:
                  MediaQuery.of(context).size.width < 600,
              title: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 300,
                      child: Column(
                        children: <Widget>[
                            Row(
                      children: <Widget>[
                        Expanded(
                          child: new DropdownButtonFormField(
                                        decoration: InputDecoration.collapsed(hintText: ''),
                              isExpanded: true,
                              hint: Container(
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.settings, color: Color(0xff6c757d),),
                                        SizedBox(width: 4,),
                                        Text('Settings', style: TextStyle(color: Color(0xff6c757d)),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              onChanged: (newValue){
                                switch (newValue)
                                {
                                  case 1:
                                  Navigator.pushNamed(context, '/add-users');
                                    break;
                                }
                                newValue = null;
                              },
                              items: [
                                DropdownMenuItem(
                                  child: Text('Add users'),
                                  value: 1,
                                )
                              ],
                              ),
                        ),

                        SizedBox(width: 48,),
                        Expanded(
                          child: new DropdownButtonFormField(
                                        decoration: InputDecoration.collapsed(hintText: ''),
                              isExpanded: true,
                              hint: Container(
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.offline_bolt, color: Color(0xff6c757d),),
                                        SizedBox(width: 4,),
                                        Text('Projects', style: TextStyle(color: Color(0xff6c757d)),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              onChanged: (newValue){
                                 
                              },
                              items: [
                                DropdownMenuItem(
                                  child: Text('App development'),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Text('Icon design'),
                                  value: 2,
                                )
                              ],
                              ),
                        )
                      
                      ],
                    )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              
                actions: <Widget>[IconButton(
            icon: const Icon(Icons.exit_to_app, color: Color(0xff2A3F54),),
            tooltip: 'Logout',
            onPressed: () {
             // scaffoldKey.currentState.showSnackBar(snackBar);
            },
          ),],
            );
  }
}