import 'package:flutter/material.dart';

class KeyboardVisibilityDetector extends StatefulWidget {
  final Widget child;
  final Widget Function(BuildContext context, Widget child, bool isKeyboardVisible)
      builder;

  const KeyboardVisibilityDetector({required this.builder, required this.child, Key? key})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<KeyboardVisibilityDetector> with WidgetsBindingObserver {
  double? bottomPadding = WidgetsBinding.instance?.window.viewInsets.bottom;
  late bool _isKeyboardVisible = bottomPadding! > 0.0;

  @override
  void initState() {
    WidgetsBinding.instance?.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    final bottomInset = WidgetsBinding.instance?.window.viewInsets.bottom;
    final newValue = bottomInset! > 0.0;
    if (newValue != _isKeyboardVisible) {
      setState(() {
        _isKeyboardVisible = newValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) =>
      widget.builder(context, widget.child, _isKeyboardVisible);
}
