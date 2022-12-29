import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EventsCardWidget extends StatefulWidget {
  const EventsCardWidget({super.key});

  @override
  State<EventsCardWidget> createState() => _EventsCardWidgetState();
}

class _EventsCardWidgetState extends State<EventsCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Container(
          height: 112,
          width: 200,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 4,
                    offset: Offset(4, 4),
                    color: Color(0xff0B0A0A).withOpacity(0.25))
              ],
              borderRadius: BorderRadius.circular(12),
              color: Color(0xff0B0A0A40)),
        ),
      ),
    ]);
  }
}
