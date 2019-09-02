import 'package:flutter/material.dart';
import 'package:marcador_truco/models/player.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildPlayerBoard(),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Text('Marcador de Truco'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () {},
        )
      ],
    );
  }

  var _playerOne = Player(name: 'Nós');
  var _playerTwo = Player(name: 'Eles');

  Widget _buildPlayerBoard() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _buildBoard(player: _playerOne),
        _buildBoard(player: _playerTwo),
      ],
    );
  }

  Widget _buildBoard({Player player}) {
    return Column(
      children: <Widget>[
        _showPlayerName(name: player.name),
        _showPlayerScore(score: player.score),
        _showPlayerVictories(victories: player.victories),
      ],
    );
  }

  Widget _showPlayerName({String name}) {
    return Text(
      name.toUpperCase(),
      style: TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.w500,
        color: Colors.deepOrange  
      ),
    );
  }

  Widget _showPlayerScore({int score}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 52.0),
      child: Text(
        '$score',
        style: TextStyle(
          fontSize: 120.0,
        ),
      ),
    );
  }

  Widget _showPlayerVictories({int victories}) {
    return Text(
      'Vitórias ( $victories )',
      style: TextStyle(
        fontWeight: FontWeight.w300,
      ),
    );
  }

} // Close Class
