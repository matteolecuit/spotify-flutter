import 'package:flutter/material.dart';
import 'package:spotify/Model/Artist.dart';

void main() {
  runApp(ArtistWidget());
}

class ArtistWidget extends StatelessWidget {
  // This widget is the root of your application.
  ArtistWidget({Key key, this.radius, this.artist}) : super(key: key);
  double radius;
  Artist artist;
  @override
  Widget build(BuildContext context) {
    return ArtistWidgetPage(
      radius: radius,
      artist: artist,
    );
  }
}

class ArtistWidgetPage extends StatefulWidget {
  ArtistWidgetPage({Key key, this.title, this.radius, this.artist})
      : super(key: key);

  final String title;
  double radius;
  Artist artist;
  @override
  _ArtistWidgetState createState() => _ArtistWidgetState();
}

class _ArtistWidgetState extends State<ArtistWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            radius: widget.radius != null ? widget.radius : 80,
            child: ClipOval(
              child: Image.network(widget.artist.image),
            ),
          ),
          Padding(padding: EdgeInsets.all(5.0)),
          Container(
            width: 150,
            height: 35,
            child: Text(
              widget.artist.name,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white.withOpacity(1.0),
                  fontFamily: 'SpotifyFont',
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
