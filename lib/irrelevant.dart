import 'package:flutter/material.dart';

showMen() {
      var context;
            showModalBottomSheet(
                context: context,
          builder: (BuildContext context) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                color: Colors.deepPurple.shade500,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 36,
                  ),
                  SizedBox(
                    height: (56 * 6).toDouble(),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        color: Colors.deepPurple.shade500,
                      ),
                      child: Stack(
                        alignment: Alignment(0, 0),
                        overflow: Overflow.visible,
                        children: <Widget>[
                          Positioned(
                            top: -36,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  border: Border.all(
                                    color: Colors.deepPurple.shade500,
                                    width: 10,
                                  )),
                              child: Center(
                                child: ClipOval(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    child:
                                        Icon(Icons.person, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            child: ListView(
                              physics: NeverScrollableScrollPhysics(),
                              children: <Widget>[
                                ListTile(
                                  title: Text("inbox", 
                                  style: TextStyle(color: Colors.white)),
                                  leading: Icon(Icons.inbox,
                                  color: Colors.white,),
                                  onTap: (){},
                                ),
                                ListTile(
                                  title: Text("inbox", 
                                  style: TextStyle(color: Colors.white)),
                                  leading: Icon(Icons.inbox,
                                  color: Colors.white,),
                                  onTap: (){},
                                ),
                                ListTile(
                                  title: Text("inbox", 
                                  style: TextStyle(color: Colors.white)),
                                  leading: Icon(Icons.inbox,
                                  color: Colors.white,),
                                  onTap: (){},
                                ),
                                ListTile(
                                  title: Text("inbox", 
                                  style: TextStyle(color: Colors.white)),
                                  leading: Icon(Icons.inbox,
                                  color: Colors.white,),
                                  onTap: (){},
                                ),
                                ListTile(
                                  title: Text("inbox", 
                                  style: TextStyle(color: Colors.white)),
                                  leading: Icon(Icons.inbox,
                                  color: Colors.white,),
                                  onTap: (){},
                                ),
                                
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 56,
                    color: Colors.deepPurple.shade500,
                  )
                ],
              ),
            );
          });
    }
