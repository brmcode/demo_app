import 'package:demo_app/common/exception/failure.dart';
import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  final Failure failure;
  final VoidCallback? onRetry;

  const ErrorView({super.key, required this.failure, this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(_iconFor(failure), size: 64, color: Theme.of(context).colorScheme.error),
            const SizedBox(height: 16),
            Text(failure.message, style: Theme.of(context).textTheme.bodyLarge, textAlign: TextAlign.center),
            if (onRetry != null) ...[
              const SizedBox(height: 24),
              FilledButton.icon(onPressed: onRetry, icon: const Icon(Icons.refresh), label: const Text('Try Again')),
            ],
          ],
        ),
      ),
    );
  }

  IconData _iconFor(Failure f) => switch (f) {
    NetworkFailure() => Icons.wifi_off,
    NotFoundFailure() => Icons.search_off,
    ServerFailure() => Icons.cloud_off,
    _ => Icons.error_outline,
  };
}

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) => const Center(child: CircularProgressIndicator());
}
