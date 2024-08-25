import 'package:flutter/cupertino.dart';

class FlexibleDash extends StatelessWidget {
  final String text;

  const FlexibleDash({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: Container(
                color: const Color(0xFF525560),
                height: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                text,
                style: const TextStyle(
                  color: Color(0xFFA0A0A0),
                  fontSize: 14,
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: const Color(0xFF525560),
                height: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
