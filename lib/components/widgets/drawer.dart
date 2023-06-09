import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('lib/assets/images/daddy.JPG'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    const Text(
                      'Jeffrey',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Your parent account',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade700),
                ),
              ],
            ),
          ),

          // "Get set up" tile
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: const [
                              Icon(Icons.build_circle_outlined,
                                  color: Colors.black, size: 40),
                              SizedBox(width: 10.0),
                              Text(
                                'Get set up',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.keyboard_arrow_right),
                        ],
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),

          // Drawer Menu Items
          ListTile(
            title: Row(
              children: const [
                Icon(Icons.settings_outlined, color: Colors.black),
                SizedBox(width: 20.0),
                Text(
                  'Family settings',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(Icons.add, color: Colors.black),
                SizedBox(width: 20.0),
                Text(
                  'Adding Money',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(Icons.receipt_long_outlined, color: Colors.black),
                SizedBox(width: 20.0),
                Text(
                  'Parent statement',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(Icons.people_outline, color: Colors.black),
                SizedBox(width: 20.0),
                Text(
                  'Add a co-parent',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(Icons.face_outlined, color: Colors.black),
                SizedBox(width: 20.0),
                Text(
                  'Add a relative',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(Icons.person_add_outlined, color: Colors.black),
                SizedBox(width: 20.0),
                Text(
                  'Add a child',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(Icons.help_outline, color: Colors.black),
                SizedBox(width: 20.0),
                Text(
                  'Help & feedback',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(Icons.privacy_tip_outlined, color: Colors.black),
                SizedBox(width: 20.0),
                Text(
                  'Privacy policy',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(Icons.logout, color: Colors.black),
                SizedBox(width: 20.0),
                Text(
                  'Logout',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          // "Refer a Friend" tile
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade200),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.pinkAccent.shade100),
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Icon(Icons.star_border_outlined,
                                      color: Colors.black, size: 30),
                                ),
                              ),
                              const SizedBox(width: 10.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Refer a Friend',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    '\$50 for every new friend',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey.shade500,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.keyboard_arrow_right),
                        ],
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
