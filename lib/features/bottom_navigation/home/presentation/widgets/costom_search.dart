import 'package:flutter/material.dart';

class CostomSearch extends StatefulWidget {
  const CostomSearch({super.key});

  @override
  State<CostomSearch> createState() => _CostomSearchState();
}

class _CostomSearchState extends State<CostomSearch> {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "search",
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                controller.clear();
              });
            },
            child: Icon(Icons.clear, size: 18, color: Colors.grey),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(24),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(24),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(24),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(24),
          ),
        ),
      ),
    );
  }
}
