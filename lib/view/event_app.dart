import 'package:flutter/material.dart';
import 'package:event_app/view/login_screen.dart';

class EventApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: "Nosso Evento",
            home: LoginScreen(),
        );
    }
}
