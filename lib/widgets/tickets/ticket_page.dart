import 'package:animated_map/widgets/tickets/ticket_details.dart';
import 'package:flutter/material.dart';

import 'ticket_card.dart';

class TicketPage extends StatefulWidget {
  @override
  _TicketPageState createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            ///Background Color
            color: Colors.red,
            height: double.infinity,
          ),
          SingleChildScrollView(
            child: Column(
              children: _buildTickets().toList(),
            ),
          ),
        ],
      ),
    );
  }

  Iterable<Widget> _buildTickets() {
    return tickets.map(
      (ticket) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          child: TicketCard(
            ticket: ticket,
          ),
        );
      },
    );
  }
}
