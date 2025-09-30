import 'package:flutter/material.dart';
import 'package:namah_counter/core/theme/core-theme-app_theme.dart';

class ResetConfirmationDialog extends StatelessWidget {
  final VoidCallback onConfirm;
  final VoidCallback onCancel;

  const ResetConfirmationDialog({
    super.key,
    required this.onConfirm,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Icon
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: AppTheme.primaryOrange.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.refresh,
                size: 40,
                color: AppTheme.primaryOrange,
              ),
            ),

            const SizedBox(height: 24),

            // Title
            Text(
              'Reset Counter',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.black87,
                    fontWeight: FontWeight.w700,
                  ),
            ),

            const SizedBox(height: 16),

            // Message
            Text(
              'Are you really want to reset?',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
            ),

            const SizedBox(height: 32),

            // Buttons
            Row(
              children: [
                // No Button
                Expanded(
                  child: OutlinedButton(
                    onPressed: onCancel,
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      side: const BorderSide(
                        color: AppTheme.primaryOrange,
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'No',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: AppTheme.primaryOrange,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),

                const SizedBox(width: 16),

                // Yes Button
                Expanded(
                  child: ElevatedButton(
                    onPressed: onConfirm,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: AppTheme.primaryOrange,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 0,
                    ),
                    child: Text(
                      'Yes',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
