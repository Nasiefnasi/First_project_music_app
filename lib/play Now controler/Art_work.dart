import 'package:flutter/material.dart';



import 'package:on_audio_query/on_audio_query.dart';
import 'package:song_m_app/play%20Now%20controler/Now_play.dart';

class ArtworkWidget extends StatelessWidget {
  final Now_Play widget;
  final int currentindex;
  const ArtworkWidget(
      {super.key, required this.widget, required this.currentindex});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.transparent,
        shadowColor: Colors.transparent,
        child: QueryArtworkWidget(
          keepOldArtwork: true,
          id: widget.songModel[currentindex].id,
          type: ArtworkType.AUDIO,
          artworkWidth: 250,
          artworkHeight: 250,
          artworkFit: BoxFit.cover,
          artworkBorder: const BorderRadius.all(
            Radius.circular(30),
          ),
          nullArtworkWidget: Container(
              height: 250,
              width: 250,
              decoration: const BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: const Icon(
                Icons.music_note,
                size: 120,
                color: Colors.white60,
              )),
        ),
      ),
    );
  }
}
