import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BuildServerErrorMsg extends ConsumerWidget {
  const BuildServerErrorMsg({super.key, required this.errorMsg});
  final String errorMsg;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const String internetFailure = 'Verify your internet connection';
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Container(
        constraints: const BoxConstraints.expand(height: 500),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              errorMsg == internetFailure
                  ? const Icon(Icons.signal_wifi_off_sharp,
                      size: 50, color: Colors.blue)
                  : const Icon(Icons.error_outline,
                      size: 50, color: Colors.blue),
              const SizedBox(
                height: 20,
              ),
              Text(
                errorMsg,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
