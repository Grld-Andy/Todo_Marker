import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    super.key,
    required TextEditingController controller,
  }) : _controller = controller;

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Expanded(
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: "Search by title or description",
              border: OutlineInputBorder()
            ),
          ),
        ),
        Container(
          // padding: EdgeInsets.all(2),
          width: 50,
          height: 48,
          decoration: BoxDecoration(
            border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(5), // ripple matches rectangle
            onTap: () {},
            child: Center(
              child: Icon(Icons.filter_alt),
            ),
          )
        )
      ],
    );
  }
}