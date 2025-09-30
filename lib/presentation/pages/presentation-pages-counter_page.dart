import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:namah_counter/core/theme/core-theme-app_theme.dart';
import 'package:namah_counter/presentation/providers/presentation-providers-counter_provider.dart';
import 'package:namah_counter/presentation/widgets/presentation-widgets-counter_display.dart';
import 'package:namah_counter/presentation/widgets/presentation-widgets-increment_button.dart';
import 'package:namah_counter/presentation/widgets/presentation-widgets-reset_confirmation_dialog.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterAsync = ref.watch(counterProvider);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppTheme.cream,
              Color(0xFFFFF8F0),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header
              _buildHeader(context, ref),

              // Main Content
              Expanded(
                child: counterAsync.when(
                  data: (counter) =>
                      _buildCounterContent(context, ref, counter.value),
                  loading: () => const Center(
                    child: CircularProgressIndicator(
                      color: AppTheme.primaryOrange,
                    ),
                  ),
                  error: (error, stack) => Center(
                    child: Text(
                      'Error loading counter',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // App Title
          Text(
            'नमः',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: AppTheme.primaryOrange,
                fontWeight: FontWeight.w800,
                fontSize: 40),
          ),

          // Reset Button
          ElevatedButton.icon(
            onPressed: () => _showResetDialog(context, ref),
            icon: const Icon(Icons.refresh, size: 20),
            label: const Text('Reset'),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.secondaryOrange,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCounterContent(
      BuildContext context, WidgetRef ref, int counterValue) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),

        // Counter Display
        CounterDisplay(value: counterValue),

        const SizedBox(height: 80),

        // Increment Button
        IncrementButton(
          onPressed: () => ref.read(counterProvider.notifier).increment(),
        ),

        const SizedBox(height: 40),

        // Info Text
        Text(
          'Tap to increment your count',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.black54,
                fontSize: 16,
              ),
        ),

        const Spacer(),
      ],
    );
  }

  void _showResetDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => ResetConfirmationDialog(
        onConfirm: () {
          ref.read(counterProvider.notifier).reset();
          Navigator.of(context).pop();
        },
        onCancel: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
