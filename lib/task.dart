import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    showMen() {
      showModalBottomSheet(
          elevation: 0,
          useRootNavigator: false,
          context: context,
          builder: (BuildContext context) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  height: (63 * 6).toDouble(),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(                         topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                      color: Colors.deepPurple.shade500,
                    ),
                    child: Stack(
                      alignment: Alignment(0, 0),
                      overflow: Overflow.visible,
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          child: Container(
                            child: Center(
                              child: Text(
                                '_______________',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white60,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 40,
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 30, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        'Upcoming Tasks',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'View all',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height:
                                    (MediaQuery.of(context).size.height) / 4,
                                width: 380,
                                decoration: BoxDecoration(
                                  color: Colors.deepPurple.shade900,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 30, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        'Design Inspiration',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'View all',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 50,
                                width: 380,
                                decoration: BoxDecoration(
                                  color: Colors.lightBlue,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          });
    }

    final first = Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 30, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text(
              'Task Status',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 30,
              width: 30,
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 36,
              ),
            ),
          ),
        ],
      ),
    );

    final btm = BottomAppBar(
      elevation: 0,
      color: Colors.deepPurple.shade500,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 56,
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: showMen,
              icon: Icon(Icons.menu),
              color: Colors.white,
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
              color: Colors.white,
            )
          ],
        ),
      ),
    );

    final body = Column(
      children: <Widget>[
        SizedBox(
          height: 80,
        ),
        first,
        SizedBox(
          height: 20,
        ),
        Placeholder(
          fallbackHeight: (MediaQuery.of(context).size.height) / 3.5,
          fallbackWidth: MediaQuery.of(context).size.width,
          color: Colors.white,
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade500,
      bottomNavigationBar: btm,
      body: body,
    );
  }
}
