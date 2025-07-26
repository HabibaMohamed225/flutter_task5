import 'package:flutter/material.dart';
import '../resources/strings.dart';
import '../utils/constants.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: AppStrings.search,
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: AppConstants.defaultPadding,
        ),
        hintStyle: TextStyle(
          color: Colors.grey[600],
        ),
      ),
      style: const TextStyle(
        fontSize: 14,
      ),
    );
  }
}
