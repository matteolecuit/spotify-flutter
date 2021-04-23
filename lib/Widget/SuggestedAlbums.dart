import 'package:flutter/material.dart';
import 'package:spotify/Model/Song.dart';

void main() {
  runApp(SuggestedAlbumsWidget());
}

class SuggestedAlbumsWidget extends StatelessWidget {
  // This widget is the root of your application.
  SuggestedAlbumsWidget({Key key, this.width, this.height, this.song})
      : super(key: key);
  double width;
  double height;
  Song song;

  @override
  Widget build(BuildContext context) {
    return SongCoverWidgetPage(
      width: width,
      height: height,
      song: song,
    );
  }
}

class SongCoverWidgetPage extends StatefulWidget {
  SongCoverWidgetPage({Key key, this.title, this.width, this.height, this.song})
      : super(key: key);

  final String title;
  double width;
  double height;
  Song song;

  @override
  _SuggestedAlbumsWidgetState createState() => _SuggestedAlbumsWidgetState();
}

class _SuggestedAlbumsWidgetState extends State<SongCoverWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5),
        child: Row(children: <Widget>[
          SizedBox(
            height: 80,
            width: 80,
            child: Image.network(
              widget.song.coverImage,
              fit: BoxFit.fitHeight,
              alignment: Alignment.centerLeft,
            ),
          ),
          Container(
            width: 100,
            height: 80,
            color: Colors.grey,
            child: Center(
              child: Text(
                widget.song.caption,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: TextStyle(
                    color: Colors.white.withOpacity(1.0),
                    fontFamily: 'SpotifyFont',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ]));
  }
}
