import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Welcome back: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                Text(
                  'Peter',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Column(
        children: [
          _buildButtonColumn('Stats'),
          _buildButtonColumn('Info&Goals'),
          _buildButtonColumn('Tips'),
          _buildButtonColumn('Settings'),
        ],
      ),
    );


    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
            'More than 16 million Americans are living with a disease caused by smoking. For'
            'every person who dies because of smoking, at least 30 people live with a serious'
            'smoking-related illness. Smoking causes cancer, heart disease, stroke, lung diseases,'
            'diabetes, and chronic obstructive pulmonary disease (COPD), which includes emphysema '
            'and chronic bronchitis. Smoking also increases risk for tuberculosis, certain eye diseases,'
            'and problems of the immune system, including rheumatoid arthritis.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Smoking Cessation App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Smoking Cessation App'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/quit.jpeg',
              width: 600,
              height: 200,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  RaisedButton _buildButtonColumn(String label) {
    return RaisedButton(
      color: Colors.amberAccent,
      onPressed: () {},
      child: Text(label),
    );
  }

}