import 'package:bornomala/app/widgets/helper_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:just_audio/just_audio.dart';

class Player extends StatefulWidget {
  final String audioPath;

  const Player({
    super.key,
    required this.audioPath,
  });
  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  bool stopBtnFlag = false;
  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _audioPlayer.setAsset(widget.audioPath);
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder<PlayerState>(
        stream: _audioPlayer.playerStateStream,
        builder: (context, snapshot) {
          final playerState = snapshot.data;
          return _playerButton(playerState);
        },
      ),
    );
  }

  Widget _playerButton(PlayerState? playerState) {
    if (playerState == null) {
      return addW(0);
    }
    // 1
    final processingState = playerState.processingState;
    if (processingState == ProcessingState.loading ||
        processingState == ProcessingState.buffering) {
      // 2
      return Container(
        margin: EdgeInsets.only(top: 10.h, right: 50.w),
        width: 60.w,
        height: 50.h,
        child: CircularProgressIndicator(),
      );
    } else if (_audioPlayer.playing != true) {
      // 3
      return Row(
        children: [
          IconButton(
            icon: Icon(Icons.play_arrow),
            onPressed: () {
              _audioPlayer.play();
              stopBtnFlag = true;
            },
          ),
          // stop btn
          if (stopBtnFlag)
            IconButton(
              icon: Icon(Icons.stop),
              onPressed: () {
                stopBtnFlag = false;
                _audioPlayer.seek(
                  Duration.zero,
                  index: _audioPlayer.effectiveIndices?.first,
                );
                _audioPlayer.stop();
              },
            ),
        ],
      );
    } else if (processingState != ProcessingState.completed) {
      // 4
      return Row(
        children: [
          IconButton(
            icon: Icon(Icons.pause),
            onPressed: _audioPlayer.pause,
          ),
          // stop btn
          if (stopBtnFlag)
            IconButton(
              icon: Icon(Icons.stop),
              onPressed: () {
                stopBtnFlag = false;
                _audioPlayer.seek(
                  Duration.zero,
                  index: _audioPlayer.effectiveIndices?.first,
                );
                _audioPlayer.stop();
              },
            ),
        ],
      );
    } else {
      // 5
      return IconButton(
        icon: Icon(
          Icons.replay,
        ),
        onPressed: () => _audioPlayer.seek(
          Duration.zero,
          index: _audioPlayer.effectiveIndices?.first,
        ),
      );
    }
  }
}
