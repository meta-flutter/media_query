import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'MediaQuery Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: _MediaQueryWidget(),
      );
}

class _MediaQueryWidgetState extends State<_MediaQueryWidget> {
//  late MediaQueryData media;
  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMediaQuery(context));
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'MediaQuery Widget',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: Text(
                'Device Info',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          _text('Height: ${MediaQuery.maybeOf(context)?.size.height}'),
          _text('Width: ${MediaQuery.maybeOf(context)?.size.width}'),
          _text('Device Pixel Ratio: ${MediaQuery.maybeOf(context)?.devicePixelRatio}'),
          _text('Scale Factor: ${MediaQuery.textScaleFactorOf(context)}'),
          _text('Brightness: ${MediaQuery.platformBrightnessOf(context)}'),
          _text('System View Insets: ${MediaQuery.maybeOf(context)?.viewInsets}'),
          _text('System Padding: ${MediaQuery.maybeOf(context)?.padding}'),
          _text('System View Padding: ${MediaQuery.maybeOf(context)?.viewPadding}'),
          _text('System Gesture Insets: ${MediaQuery.maybeOf(context)?.systemGestureInsets}'),
          _text('Always 24 Hours: ${MediaQuery.maybeOf(context)?.alwaysUse24HourFormat}'),
          _text('Accessible Navigation: ${MediaQuery.maybeOf(context)?.accessibleNavigation}'),
          _text('Inverting Colors: ${MediaQuery.maybeOf(context)?.invertColors}'),
          _text('In High Contrast: ${MediaQuery.highContrastOf(context)}'),
          _text('Disable Animation: ${MediaQuery.maybeOf(context)?.disableAnimations}'),
          _text('In Bold Text: ${MediaQuery.boldTextOverride(context)}'),
          _text('Navigation Mode: ${MediaQuery.maybeOf(context)?.navigationMode}'),
          _text('Orientation: ${MediaQuery.maybeOf(context)?.orientation}'),
        ],
      ),
    );
  }

  /// Text widget
  Widget _text(String text) => Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 14.0,
            color: Colors.black,
          ),
        ),
      );

}

class _MediaQueryWidget extends StatefulWidget {
  @override
  State createState() => _MediaQueryWidgetState();
}
