import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        height: 40,
        child: TextField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            hintText: "Search",
            prefixIcon: const Icon(Icons.search),
            fillColor: Colors.grey[300],
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(20),
            ),
            filled: true,
          ),
        ),
      ),
    );
  }
}
