import 'package:flutter/material.dart';

import 'common.dart';
import 'examples/aligned.dart';
import 'examples/masonry.dart';
import 'examples/quilted.dart';
import 'examples/staggered.dart';
import 'examples/staired.dart';
import 'examples/woven.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Staggered Grid View Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePageStaggeredGridView(),
    );
  }
}

class HomePageStaggeredGridView extends StatelessWidget {
  const HomePageStaggeredGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Staggered Grid View Demo',
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        children: const [
          MenuEntry(
            title: 'Staggered',
            imageName: 'staggered',
            destination: StaggeredPage(),
          ),
          MenuEntry(
            title: 'Masonry',
            imageName: 'masonry',
            destination: MasonryPage(),
          ),
          MenuEntry(
            title: 'Quilted',
            imageName: 'quilted',
            destination: QuiltedPage(),
          ),
          MenuEntry(
            title: 'Woven',
            imageName: 'woven',
            destination: WovenPage(),
          ),
          MenuEntry(
            title: 'Staired',
            imageName: 'staired',
            destination: StairedPage(),
          ),
          MenuEntry(
            title: 'Aligned',
            imageName: 'aligned',
            destination: AlignedPage(),
          ),
        ],
      ),
    );
  }
}

class MenuEntry extends StatelessWidget {
  const MenuEntry({
    Key? key,
    required this.title,
    required this.imageName,
    required this.destination,
  }) : super(key: key);

  final String title;
  final Widget destination;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (context) => destination,
            ),
          );
        },
        child: Stack(
          children: [
            Image.asset(
              'assets/$imageName.png',
              fit: BoxFit.fill,
            ),
            Positioned.fill(
              child: FractionallySizedBox(
                heightFactor: 0.25,
                alignment: Alignment.bottomCenter,
                child: ColoredBox(
                  color: Colors.black.withOpacity(0.75),
                  child: Center(
                    child: Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
