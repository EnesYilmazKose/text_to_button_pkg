library text_to_button_pkg;

import 'package:flutter/material.dart';

class TextToButton extends StatefulWidget {
  const TextToButton({Key? key, required this.title,}) : super(key: key);
  final String title;
  @override
  State<TextToButton> createState() => _TextToButtonState();
}

class _TextToButtonState extends State<TextToButton> {
    bool _clicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_clicked)
              const Text(
                'Hello ',
                textScaleFactor: 6.0,
              ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _clicked = true;
              });
            },
            tooltip: 'Putting text on screen',
            child: const Icon(Icons.extension_rounded),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _clicked = false;
              });
            },
            tooltip: 'Putting text away from screen',
            child: const Icon(Icons.extension_off_rounded),
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}