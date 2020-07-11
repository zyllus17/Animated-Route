import 'package:animated_map/widgets/tickets/ticket_details.dart';
import 'package:flutter/material.dart';

class TicketCard extends StatelessWidget {
  final TicketDetails ticket;

  const TicketCard({this.ticket});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TicketClipper(10.0),
      child: Material(
        elevation: 4.0,
        shadowColor: Color(0x30E5E5E5),
        color: Colors.transparent,
        child: ClipPath(
          clipper: TicketClipper(12.0),
          child: Card(
            elevation: 2.0,
            margin: const EdgeInsets.all(2.0),
            child: _buildCardContent(),
          ),
        ),
      ),
    );
  }

  Container _buildCardContent() {
    TextStyle placeNameStyle =
        new TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600);
    TextStyle timeNumberStyle =
        new TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500);
    IconTheme destinationIcon = IconTheme(
      data: IconThemeData(color: Colors.redAccent, size: 35.0),
      child: Icon(Icons.account_balance),
    );

    return Container(
      height: 104.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Icon(
                      Icons.train,
                      size: 35.0,
                    ),
                  ),
                  Text(ticket.from, style: placeNameStyle),

                  //*Text(ticket.fromIcon, style: airportShortNameStyle),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Icon(
                  Icons.directions_bus,
                  color: Colors.red,
                ),
              ),
              Text(ticket.time, style: timeNumberStyle),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Icon(
                      Icons.account_balance,
                      size: 35.0,
                    ),
                  ),
                  Text(ticket.to, style: placeNameStyle),
                  //* Text(ticket.toShort, style: airportShortNameStyle),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TicketClipper extends CustomClipper<Path> {
  final double radius;

  TicketClipper(this.radius);

  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.addOval(
        Rect.fromCircle(center: Offset(0.0, size.height / 2), radius: radius));
    path.addOval(Rect.fromCircle(
        center: Offset(size.width, size.height / 2), radius: radius));
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
