import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final drawer = Container(
      color: Colors.deepPurple.shade500,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            //header
            UserAccountsDrawerHeader(
              accountName: Text('Josh Uk'),
              accountEmail: Text('JJJ@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade500,
              ),
            ),
            //drawer body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home'),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Profile'),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Teams'),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Task Status'),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Log Out'),
              ),
            ),
          ],
        ),
      ),
    );

    final bar = Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 30, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text(
              'Sign up',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 21,
                color: Colors.blue.shade200,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 30,
              width: 30,
              child: Icon(
                Icons.menu,
                color: Colors.white,
                size: 36,
              ),
            ),
          ),
        ],
      ),
    );

    final barr = Padding(
      padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text(
              'Dashboard',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 21,
                color: Colors.grey.shade400,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );

    final barrhh = Padding(
      padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text(
              'Overall Lead',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 21,
                color: Colors.grey.shade400,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );

    final shitt = Padding(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 100,
              width: 190,
              decoration: BoxDecoration(
                  color: Colors.deepPurple.shade800,
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 100,
              width: 190,
              decoration: BoxDecoration(
                  color: Colors.deepPurple.shade800,
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
        ],
      ),
    );

    final blahh = Padding(
      padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text(
              'Social Stands',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 21,
                color: Colors.grey.shade400,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );

    final socialstands = Padding(
      padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white),
            ),
          ),
        ],
      ),
    );
    

    final body = Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        barr,
        SizedBox(
          height: 10,
        ),
        Placeholder(
          fallbackHeight: (MediaQuery.of(context).size.height) / 3,
          fallbackWidth: MediaQuery.of(context).size.width,
          color: Colors.white,
        ),
        SizedBox(
          height: 20,
        ),
        barrhh,
        SizedBox(
          height: 20,
        ),
        shitt,
        SizedBox(
          height: 20,
        ),
        blahh,
        SizedBox(
          height: 10,
        ),
        socialstands,
      ],
    );

    return Scaffold(
      backgroundColor: Colors.deepPurple.shade600,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple.shade500,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.notifications, color: Colors.white),
              onPressed: () {}),
        ],
      ),
      drawer: drawer,
      body: body,
    );
  }
}
