import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  const ButtonComponent({
    Key? key,
    required this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            onPrimary: Theme.of(context).colorScheme.onPrimary,
            primary: Theme.of(context).colorScheme.primary),
        child: Text(buttonText),
      ),
    );
  }
}
