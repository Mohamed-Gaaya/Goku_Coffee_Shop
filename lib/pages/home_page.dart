import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.brown,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        selectedItemColor: Colors.brown,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
              size: 26,
              //color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.qr_code_2_rounded,
            ),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.mugHot,
            ),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_giftcard,
            ),
            label: 'Gift',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.locationDot,
            ),
            label: 'Stores',
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          //Sliver app Bar
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 55, left: 10),
                    child: Container(
                      color: Colors.brown[200],
                      child: Text(
                        'Get the best coffee for\nYou ☕ ',
                        style: GoogleFonts.oswald(
                          fontSize: 32,
                        ),
                        selectionColor: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0, top: 30),
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.rightFromBracket,
                        size: 30,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        FirebaseAuth.instance.signOut();
                      },
                    ),
                  ),
                ],
              ),
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Icon(
                          FontAwesomeIcons.rightToBracket,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          '  Sign in   ',
                          style: GoogleFonts.oswald(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Icon(
                          FontAwesomeIcons.envelope,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          '  Inbox',
                          style: GoogleFonts.oswald(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0, top: 10),
                    child: Icon(
                      FontAwesomeIcons.circleUser,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              centerTitle: true,
            ),
            backgroundColor: Colors.brown[200],
            expandedHeight: 200,
            floating: false,
            pinned: true,
          ),
          // sliver items
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.brown,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.brown,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.brown,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
