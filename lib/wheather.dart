import 'package:flutter/material.dart';

class WheatherPage extends StatefulWidget {
  @override
  _WheatherPageState createState() => _WheatherPageState();
}

class _WheatherPageState extends State<WheatherPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.cloud,
              size: 100,
              color: Colors.green,
            ),
            SizedBox(height: 20),
            Text(
              'City: New York',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Temperature: 25°C',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Weather: Cloudy',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Fetch weather data or refresh data
              },
              child: Text('Refresh Weather'),
            ),
          ],
        ),
      ),
    );
  }
}
