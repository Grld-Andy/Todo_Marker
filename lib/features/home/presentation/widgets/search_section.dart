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
              prefixIcon: Icon(Icons.search, color: Colors.deepOrange,),
              filled: true,
              fillColor: Colors.amber[100],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none
              )
            ),
          ),
        ),
        Material(
          color: Colors.amber[100],
          borderRadius: BorderRadius.circular(12),
          child: InkWell(
            borderRadius: BorderRadius.circular(12), // ripple matches rectangle
            onTap: () {},
            child: Container(
              width: 48,
              height: 48,
              alignment: Alignment.center,
              child: Icon(Icons.filter_alt, color: Colors.deepOrange,),
            ),
          )
        )
      ],
    );
  }
}