import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FeaturedLinkCard extends StatelessWidget {
  final String image;
  const FeaturedLinkCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
          margin: const EdgeInsets.only(right: 16),
          height: 112,
          width: 100,
          child: Image(image: NetworkImage(image)),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  offset: Offset(0, 3),
                  color: Colors.black.withOpacity(0.25))
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ],
    );
    ;
  }
}
