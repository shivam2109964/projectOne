import 'package:flutter/material.dart';

class AnimatedIconHome extends StatefulWidget {
  const AnimatedIconHome({super.key});

  @override
  State<AnimatedIconHome> createState() => _AnimatedIconHomeState();
}

class _AnimatedIconHomeState extends State<AnimatedIconHome>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late AnimationController _animationControllerOne;
  late AnimationController _animationControllerTwo;
  late AnimationController _animationControllerThree;
  late AnimationController _animationControllerFour;

  bool isPlaying = true;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 300,
      ),
    );
    _animationControllerOne = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 300,
      ),
    );
    _animationControllerTwo = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 300,
      ),
    );
    _animationControllerThree = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 300,
      ),
    );
    _animationControllerFour = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 300,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    _animationControllerOne.dispose();
    _animationControllerTwo.dispose();
    _animationControllerThree.dispose();
    _animationControllerFour.dispose();
    super.dispose();
  }

  void handleAnimation() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying
          ? _animationController.forward()
          : _animationController.reverse();
    });
  }

  void handleAnimationOne() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying
          ? _animationControllerOne.forward()
          : _animationControllerOne.reverse();
    });
  }

  void handleAnimationTwo() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying
          ? _animationControllerTwo.forward()
          : _animationControllerTwo.reverse();
    });
  }

  void handleAnimationThree() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying
          ? _animationControllerThree.forward()
          : _animationControllerThree.reverse();
    });
  }

  void handleAnimationFour() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying
          ? _animationControllerFour.forward()
          : _animationControllerFour.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Animated Icons",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Click here on Icons",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              IconButton(
                iconSize: 50,
                onPressed: () {
                  handleAnimation();
                },
                icon: AnimatedIcon(
                  color: Colors.blue,
                  icon: AnimatedIcons.play_pause,
                  progress: _animationController,
                ),
              ),
              IconButton(
                iconSize: 50,
                onPressed: () {
                  handleAnimationOne();
                },
                icon: AnimatedIcon(
                  color: Colors.redAccent,
                  icon: AnimatedIcons.ellipsis_search,
                  progress: _animationControllerOne,
                ),
              ),
              IconButton(
                iconSize: 50,
                onPressed: () {
                  handleAnimationTwo();
                },
                icon: AnimatedIcon(
                  color: Colors.amber,
                  icon: AnimatedIcons.arrow_menu,
                  progress: _animationControllerTwo,
                ),
              ),
              IconButton(
                iconSize: 50,
                onPressed: () {
                  handleAnimationThree();
                },
                icon: AnimatedIcon(
                  color: Colors.cyanAccent,
                  icon: AnimatedIcons.menu_close,
                  progress: _animationControllerThree,
                ),
              ),
              IconButton(
                iconSize: 50,
                onPressed: () {
                  handleAnimationFour();
                },
                icon: AnimatedIcon(
                    color: Colors.brown,
                    icon: AnimatedIcons.view_list,
                    progress: _animationControllerFour),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
