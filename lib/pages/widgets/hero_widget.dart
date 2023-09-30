import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

String _capText = 'The hero widget Animates this image when changing screens. Other widgets (Not only images) can be used as heroes';

class HeroWidgetExample extends StatelessWidget {
  const HeroWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 150,
            height: 100,
            child: MaterialButton(
              child: Hero(tag: 'pic1',
              child: Image.asset('assets/images/pic1.jpg')),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HeroWidgetScreen(image: 'assets/images/pic1.jpg', caption: _capText, tag: 'pic1')));
              },
            ),
          ),
          const SizedBox(width: 10.0,),
          SizedBox(
            width: 150,
            height: 100,
            child: MaterialButton(
              child: Hero(tag: 'mypic',
              child: Image.asset('assets/images/mypic.jpg')),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HeroWidgetScreen(image: 'assets/images/mypic.jpg', caption: _capText, tag: 'mypic')));
              },
            ),
          ),
        ],
      ),
    );
  }

}

class HeroWidgetScreen extends StatelessWidget {
  const HeroWidgetScreen({super.key, required this.image, this.caption = '', required this.tag});
  final String image;
  final String caption;
  final dynamic tag;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              Expanded(child: Hero(tag: tag,
              child: Image.asset(image))),
              const SizedBox(height: 20.0,),
              Text(caption, textAlign: TextAlign.center,),
              TextButton.icon(onPressed: (){context.pop();}, icon: const Icon(Icons.arrow_back_outlined), label: const Text('Back'))
            ],
          ),
        ),
    );
  }

}