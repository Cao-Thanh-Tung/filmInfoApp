import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/model/cast.dart';
import 'package:my_first_flutter_app/widgets/media_detail/cast_card.dart';

class CastSection extends StatelessWidget {
  final List<Actor> _cast;

  CastSection(this._cast);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          "Cast",
          style: TextStyle(color: Colors.white),
        ),
        Container(
          height: 8.0,
        ),
        SizedBox(
          height: 140.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: _cast
                .map((Actor actor) => Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CastCard(actor),
                    ))
                .toList(),
          ),
        )
      ],
    );
  }
}
