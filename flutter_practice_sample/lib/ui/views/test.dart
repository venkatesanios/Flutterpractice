import 'package:flutter/material.dart';
import 'package:text_scroll/text_scroll.dart';

class MarqueeView extends StatefulWidget {
  const MarqueeView({super.key});

  @override
  State<MarqueeView> createState() => _MarqueeViewState();
}

class _MarqueeViewState extends State<MarqueeView> {
  bool _clicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('marquee')),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text("Normal"),
                TextScroll(
                    ' Flutter TextScroll widget This is the sample text for Flutter TextScroll widget Flutter TextScroll widget. '),
                Text("bouncing"),
                TextScroll(
                  'This is the sample text for Flutter TextScroll widget.  Flutter TextScroll widget This is the sample text for Flutter TextScroll widget Flutter TextScroll widget ',
                  mode: TextScrollMode.bouncing,
                  velocity: Velocity(pixelsPerSecond: Offset(150, 0)),
                  delayBefore: Duration(seconds: 5),
                  numberOfReps: 5,
                  pauseBetween: Duration(milliseconds: 500),
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                  selectable: true,
                ),
                Text(""),
                Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: const [
                            Flexible(
                              child: TextScroll(
                                'This is the sample text for Flutter TextScroll widget.',
                                intervalSpaces: 10,
                                velocity:
                                    Velocity(pixelsPerSecond: Offset(50, 0)),
                              ),
                            ),
                            SizedBox(width: 4),
                            Expanded(
                              child: SizedBox(),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: const [
                            Expanded(flex: 2, child: Text('Static text')),
                            Flexible(
                              flex: 1,
                              child: TextScroll(
                                'This is the sample text for Flutter TextScroll widget. ',
                                velocity:
                                    Velocity(pixelsPerSecond: Offset(50, 0)),
                                pauseBetween: Duration(milliseconds: 1000),
                                mode: TextScrollMode.bouncing,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Text("data reapeat 20 "),
                        const TextScroll(
                          'This is the sample text for Flutter TextScroll widget. '
                          'This is the sample text for Flutter TextScroll widget.',
                          mode: TextScrollMode.bouncing,
                          numberOfReps: 20,
                          delayBefore: Duration(milliseconds: 2000),
                          pauseBetween: Duration(milliseconds: 1000),
                          velocity: Velocity(pixelsPerSecond: Offset(10, 0)),
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                          textAlign: TextAlign.right,
                          selectable: true,
                        ),
                        const SizedBox(height: 20),
                        Text("data  RTL  "),
                        const TextScroll(
                          'Hey! I\'m a  text, check me out. Hey! I\'m a RTL text, check me out. Hey! I\'m a RTL text, check me out. ',
                          textDirection: TextDirection.rtl,
                        ),
                        const SizedBox(height: 20),
                        Text("data  FadeBorderSide  "),
                        const TextScroll(
                          'This is the sample text for Flutter TextScroll widget with faded border.',
                          intervalSpaces: 10,
                          velocity: Velocity(pixelsPerSecond: Offset(50, 0)),
                          fadedBorder: true,
                          fadeBorderVisibility: FadeBorderVisibility.auto,
                          fadeBorderSide: FadeBorderSide.both,
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            // print(_clicked);
                            _clicked == true
                                ? setState(() => _clicked = false)
                                : setState(() => _clicked = true);
                            print(_clicked);

                            // setState(() => _clicked ? true : false);
                          },
                          child: TextScroll(
                            'Click me to start scrollingscrolling. Click me to start scrolling. ',
                            velocity: Velocity(
                              pixelsPerSecond: Offset(_clicked ? 50 : 0, 0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
