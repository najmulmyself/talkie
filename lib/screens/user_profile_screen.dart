import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.search, size: 30),
                  const Icon(Icons.settings, size: 30),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const ProfileSection(),
            const SizedBox(height: 20),
            const SilentModeToggle(),
            const SizedBox(height: 20),
            const AddFriendsButton(),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: const [
                  FriendItem(name: 'Sartaj'),
                  SizedBox(height: 15),
                  FriendItem(name: 'Angshuman'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey.shade800, width: 2),
            image: const DecorationImage(
              image: NetworkImage(
                'https://hebbkx1anhila5yf.public.blob.vercel-storage.com/IMG_8041.PNG-guBSAV6m5Ul4kTUMGzKQcAdKHBIGMN.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 15),
        const Text(
          'Najmul',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade800),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text(
            'PIN: i2k3131',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}

class SilentModeToggle extends StatefulWidget {
  const SilentModeToggle({super.key});

  @override
  State<SilentModeToggle> createState() => _SilentModeToggleState();
}

class _SilentModeToggleState extends State<SilentModeToggle> {
  bool isSilent = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const Text('🤫', style: TextStyle(fontSize: 24)),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'silent mode',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'your friends won\'t be able to talk to you',
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade500),
                ),
              ],
            ),
          ),
          Switch(
            value: isSilent,
            onChanged: (value) {
              setState(() {
                isSilent = value;
              });
            },
            activeColor: Colors.white,
            activeTrackColor: Colors.grey.shade700,
          ),
        ],
      ),
    );
  }
}

class AddFriendsButton extends StatelessWidget {
  const AddFriendsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.add, color: Colors.white, size: 24),
          ),
          const SizedBox(width: 15),
          const Text(
            'add friends',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          const Text('👱‍♀️👨🏾‍🦱', style: TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}

class FriendItem extends StatelessWidget {
  final String name;

  const FriendItem({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey.shade800, width: 2),
            image: DecorationImage(
              image: NetworkImage(
                name == 'Sartaj'
                    ? 'https://hebbkx1anhila5yf.public.blob.vercel-storage.com/IMG_8039.PNG-sTzKfrvchUQ5zAkknfyvL8Ik01Coyl.png'
                    : 'https://hebbkx1anhila5yf.public.blob.vercel-storage.com/IMG_8040.PNG-ZRlx7Hy74L6LrYoOnYOI7FeOF7dDqM.png',
              ),
            ),
          ),
        ),
        const SizedBox(width: 15),
        Text(
          name,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const Spacer(),
        const Icon(Icons.more_horiz, color: Colors.grey, size: 24),
      ],
    );
  }
}
