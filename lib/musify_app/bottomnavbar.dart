import 'package:flutter/material.dart';
import 'package:flutter_feb_project_creating/musify_app/moree.dart';
import 'package:flutter_feb_project_creating/musify_app/music_suggested_paly_list.dart';
import 'package:flutter_feb_project_creating/musify_app/now_playing.dart';
import 'package:flutter_feb_project_creating/musify_app/playlists.dart';
void main(){
  runApp(MaterialApp(home: BottomNavBar(),));
}
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;
  List<Widget> screens = [
    Mucis_playlist_suggecstedd(),
    Playlist(),
    now_playeingg(),
    More_view()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          currentIndex: index,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          onTap: (tappedindex) {
            setState(() {
              index = tappedindex;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.playlist_add),label: "playlist"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz),label: "More")]),
      body: screens[index],
    );
  }
}
