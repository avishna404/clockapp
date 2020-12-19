import 'package:flutter/material.dart';
import 'package:analog_clock/analog_clock.dart';

class secondPage extends StatefulWidget {
  @override
  _secondPageState createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  double _red_clr_value = 255.0;
  double _green_clr_value = 255.0;
  double _blue_clr_value = 255.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 80.0, 30.0, 30.0),
              child: AnalogClock(
                decoration: BoxDecoration(
                    border: Border.all(width: 15.0, color: Colors.white),
                    color: Color.fromRGBO(_red_clr_value.round(),
                        _green_clr_value.round(), _blue_clr_value.round(), 1.0),
                    shape: BoxShape.circle,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(0.0, 8.0),
                          blurRadius: 30.0)
                    ]),
                width: 250.0,
                height: 250,
              ),
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.red.withOpacity(0.7),
                  inactiveTrackColor: Colors.red.withOpacity(0.1),
                  trackShape: RectangularSliderTrackShape(),
                  trackHeight: 4.0,
                  thumbColor: Colors.red,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                  overlayColor: Colors.red.withAlpha(32),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0)),
              child: Slider(
                value: _red_clr_value,
                min: 0,
                max: 255,
                onChanged: (value) {
                  setState(() {
                    _red_clr_value = value;
                    print(_red_clr_value);
                  });
                },
              ),
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.green.withOpacity(0.7),
                  inactiveTrackColor: Colors.green.withOpacity(0.1),
                  trackShape: RectangularSliderTrackShape(),
                  trackHeight: 4.0,
                  thumbColor: Colors.green,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                  overlayColor: Colors.green.withAlpha(32),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0)),
              child: Slider(
                value: _green_clr_value,
                min: 0,
                max: 255,
                onChanged: (value) {
                  setState(() {
                    _green_clr_value = value;
                    print(_green_clr_value);
                  });
                },
              ),
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.blue.withOpacity(0.7),
                  inactiveTrackColor: Colors.blue.withOpacity(0.1),
                  trackShape: RectangularSliderTrackShape(),
                  trackHeight: 4.0,
                  thumbColor: Colors.blue,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                  overlayColor: Colors.blue.withAlpha(32),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0)),
              child: Slider(
                value: _blue_clr_value,
                min: 0,
                max: 255,
                onChanged: (value) {
                  setState(() {
                    _blue_clr_value = value;
                    print(_blue_clr_value);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
