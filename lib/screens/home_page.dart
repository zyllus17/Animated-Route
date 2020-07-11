import 'package:animated_map/widgets/tickets/ticket_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Maps'),
      ),
      body: SafeArea(
        child: Stack(
          children: [TicketPage()],
        ),
      ),
    );
  }
}
