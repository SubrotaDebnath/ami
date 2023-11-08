import 'package:flutter/material.dart';

class StaticDesktopContactScreen extends StatefulWidget {
  const StaticDesktopContactScreen({super.key});

  @override
  State<StaticDesktopContactScreen> createState() => _StaticDesktopContactScreenState();
}

class _StaticDesktopContactScreenState extends State<StaticDesktopContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade50,
      height: 1080,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 500,
            maxWidth: 400,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "- LET'S CONNECT",
                style:
                    Theme.of(context).textTheme.bodyLarge?.copyWith(height: 4),
              ),
              Text(
                'Get in touch',
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(height: 2),
              ),
              Text(
                "I'm currently available to take on new projects, so feel free to send me a message about anything that you want to run past me. You can contact anytime at 24/7",
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.justify,
              ),
              // SizedBox(height: 12,),
              Text(
                'Dhaka, Bangladesh.',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(height: 2),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
