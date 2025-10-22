import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CostomTextFormField extends StatefulWidget {
  String? labelText;
  TextEditingController? controller;
  bool isPass;
  TextInputType? keyboardType;
  String? Function(String?)? validator;
  CostomTextFormField({
    super.key,
    required this.labelText,
    this.controller,
    this.isPass = false,
    this.keyboardType,
    this.validator,
  });

  @override
  State<CostomTextFormField> createState() => _CostomTextFormFieldState();
}

class _CostomTextFormFieldState extends State<CostomTextFormField> {
  bool isvisi = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: widget.validator,
        keyboardType: widget.keyboardType,
        controller: widget.controller,
        decoration: InputDecoration(
          labelText: widget.labelText,
          suffixIcon:
              widget.isPass
                  ? GestureDetector(
                    onTap: () {
                      setState(() {
                        isvisi = !isvisi;
                      });
                    },
                    child:
                        isvisi
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                  )
                  : SizedBox.shrink(),
          labelStyle: TextStyle(fontSize: 14, color: Colors.grey),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
