import 'package:flutter/material.dart';

class TalkScreen extends StatelessWidget {
  const TalkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Determine which friend screen to show based on route parameters
    final isSartaj = true; // This would be dynamic in a real app

    return Scaffold(
      body: Container(
        //TODO: will replace with a background image of user
        // decoration: BoxDecoration(
        //   color: Colors.black,
        //   image: DecorationImage(
        //     image: NetworkImage(
        //       isSartaj 
        //           ? 'https://hebbkx1anhila5yf.public.blob.vercel-storage.com/IMG_8039.PNG-sTzKfrvchUQ5zAkknfyvL8Ik01Coyl.png' 
        //           : 'https://hebbkx1anhila5yf.public.blob.vercel-storage.com/IMG_8040.PNG-ZRlx7Hy74L6LrYoOnYOI7FeOF7dDqM.png',
        //     ),
        //     fit: BoxFit.cover,
        //     opacity: 0.9,
        //   ),
        // ),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Container(
              width: 40,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.grey.shade700,
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '👋',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(width: 10),
                Text(
                  isSartaj ? 'Sartaj' : 'Angshuman',
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 5),
                const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                  size: 24,
                ),
              ],
            ),
            const SizedBox(height: 20),
            const HoldToTalkButton(),
            const Spacer(),
            const FriendCircles(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class HoldToTalkButton extends StatelessWidget {
  const HoldToTalkButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Text(
        'hold to talk',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
    );
  }
}

class FriendCircles extends StatelessWidget {
  const FriendCircles({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
        const SizedBox(width: 15),
        Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
                image: const DecorationImage(
                  image: NetworkImage('https://hebbkx1anhila5yf.public.blob.vercel-storage.com/IMG_8039.PNG-sTzKfrvchUQ5zAkknfyvL8Ik01Coyl.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 15,
              height: 15,
              decoration: const BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        const SizedBox(width: 15),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey.shade800, width: 2),
            image: const DecorationImage(
              image: NetworkImage('https://hebbkx1anhila5yf.public.blob.vercel-storage.com/IMG_8040.PNG-ZRlx7Hy74L6LrYoOnYOI7FeOF7dDqM.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}