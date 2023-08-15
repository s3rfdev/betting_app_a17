import 'package:flutter/material.dart';

import '../../res/styles.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
            hintText: 'Search',
            contentPadding: EdgeInsets.all(10),
            prefixIcon: Icon(Icons.search, color: grey2),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: BorderSide(color: grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: BorderSide(color: grey),
            )),
      ),
    );
  }
}
