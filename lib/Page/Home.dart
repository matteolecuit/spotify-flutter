import 'package:flutter/material.dart';
import 'package:spotify/Data/Home.dart';
import 'package:spotify/Widget/Artists.dart';
import 'package:spotify/Widget/SongConver.dart';
import 'package:spotify/Widget/SuggestedAlbums.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return HomeScreenPage();
  }
}

class HomeScreenPage extends StatefulWidget {
  HomeScreenPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(10)),
                  Text(
                    'Good afternoon',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'SpotifyFont',
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Container(
                    height: 300.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Recently Played',
                          style: TextStyle(
                              color: Colors.white.withOpacity(1.0),
                              fontSize: 23.0,
                              fontFamily: 'SpotifyFont',
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                        ),
                        Container(
                          height: 250.0,
                          child: ListView.builder(
                            itemCount: songs.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return SuggestedAlbumsWidget(
                                height: 80,
                                width: 200,
                                song: songs[index],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 300.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Recently Played',
                          style: TextStyle(
                              color: Colors.white.withOpacity(1.0),
                              fontSize: 23.0,
                              fontFamily: 'SpotifyFont',
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                        ),
                        Container(
                          height: 250.0,
                          child: ListView.builder(
                            itemCount: songs.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return SongCoverWidget(
                                height: 150,
                                width: 130,
                                song: songs[index],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 350.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Favorite artists',
                          style: TextStyle(
                              color: Colors.white.withOpacity(1.0),
                              fontSize: 23.0,
                              fontFamily: 'SpotifyFont',
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                        ),
                        Container(
                          height: 300.0,
                          child: ListView.builder(
                            itemCount: songs.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return ArtistWidget(
                                radius: 80,
                                artist: artists[index],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
