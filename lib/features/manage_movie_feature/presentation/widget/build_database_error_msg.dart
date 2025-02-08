import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BuildDataBaseErrorMsg extends ConsumerWidget {
  const BuildDataBaseErrorMsg({super.key, required this.errorMsg});
  final String errorMsg;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Text(errorMsg),
    );
  }
}
