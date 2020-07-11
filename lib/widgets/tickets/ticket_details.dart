import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// *Ticket Data it takes

class TicketDetails {
  String from;
  Icon fromIcon;
  String to;
  Icon toIcon;
  String time;

  TicketDetails(this.from, this.fromIcon, this.to, this.toIcon, this.time);
}

// *To add more tickets, add TicketDetails here

List<TicketDetails> tickets = [
  TicketDetails("Howrah Station", Icon(Icons.train), "Aliah University",
      Icon(Icons.account_balance), "1hr 55mins"),
  TicketDetails("Sealdah Station", Icon(Icons.train), "Aliah University",
      Icon(Icons.account_balance), "1hr 40mins"),
  TicketDetails("Dumdum Station", Icon(Icons.train), "Aliah University",
      Icon(Icons.account_balance), "1hr 25mins"),
  TicketDetails("Airport", Icon(Icons.airplanemode_active), "Aliah University",
      Icon(Icons.account_balance), "1hr 10mins"),
  TicketDetails("Park Circus", Icon(Icons.room), "Aliah University",
      Icon(Icons.account_balance), "1hr 40mins"),
  TicketDetails("Bally Station", Icon(Icons.train), "Aliah University",
      Icon(Icons.account_balance), "1hr 50mins"),
  TicketDetails("Dakshineswar", Icon(Icons.room), "Aliah University",
      Icon(Icons.account_balance), "1hr 40mins"),
];
