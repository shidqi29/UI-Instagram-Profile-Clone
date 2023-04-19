import 'dart:ui';

import 'package:flutter/material.dart';

import '../widgets/highlight_item.dart';
import '../widgets/info_item.dart';
import '../widgets/profile_picture.dart';
import '../widgets/tab_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              "shidqiamrlhaq",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.arrow_drop_down_sharp,
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem(
                        title: "Posts",
                        value: "23",
                      ),
                      InfoItem(
                        title: "Followers",
                        value: "2412",
                      ),
                      InfoItem(
                        title: "Posts",
                        value: "341",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: Text(
              "shidqiamrlhaq",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 3,
            ),
            child: RichText(
              text: TextSpan(
                text:
                    "Reprehenderit nostrud laborum non reprehenderit aliqua est in culpa duis tempor ex eu.",
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: " #hashtag",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Link goes here",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Edit Profile",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HighlightItem("Highlight 1"),
                  HighlightItem("Highlight 2"),
                  HighlightItem("Highlight 3"),
                  HighlightItem("Highlight 4"),
                  HighlightItem("Highlight 5"),
                  HighlightItem("Highlight 6"),
                  HighlightItem("Highlight 7"),
                  HighlightItem("Highlight 8"),
                  HighlightItem("Highlight 9"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              TabItem(isActive: true, icon: Icons.grid_on_outlined),
              TabItem(isActive: false, icon: Icons.person_pin_rounded),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 23,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index) => Image.network(
              "https://picsum.photos/200",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 4,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_creation_outlined),
            label: "Reels",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
