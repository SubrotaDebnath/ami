import 'package:flutter/material.dart';

class StaticDesktopBlogScreen extends StatefulWidget {
  const StaticDesktopBlogScreen({super.key});

  @override
  State<StaticDesktopBlogScreen> createState() =>
      _StaticDesktopBlogScreenState();
}

class _StaticDesktopBlogScreenState extends State<StaticDesktopBlogScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1080,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 9,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisExtent: 1020 / 3,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemBuilder: (context, index) => index == 8
            ? InkWell(
                onTap: () {
                  print('Tapped On See More');
                },
                child: Card(
                  surfaceTintColor: Colors.indigo.shade100,
                  color: Colors.green.shade50,
                  shadowColor: Colors.green,
                  child: Center(
                      child: Text(
                    'See more ...',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.indigo),
                  )),
                ),
              )
            : Card(
                color: Colors.indigo.shade50,
                shadowColor: Colors.indigo,
              ),
      ),
    );
  }
}
