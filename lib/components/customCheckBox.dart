import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class customCheckBox extends StatefulWidget {
  const customCheckBox({super.key, this.checkValue, this.onChanged});
  final bool? checkValue;
  final Function(bool?)? onChanged;

  @override
  State<customCheckBox> createState() => _customCheckBoxState();
}

class _customCheckBoxState extends State<customCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 2,
      child: Checkbox(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide.none,
        ),
        
        checkColor: Color(0xffECF0F1),
        activeColor: Color(0xffD35400),
        value: widget.checkValue!,
        onChanged: widget.onChanged,
      ),
    );
  }
}
