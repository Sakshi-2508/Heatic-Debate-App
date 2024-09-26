import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              color: Colors.white,
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/profile_picture.png'),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Username',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Short bio or tagline goes here.',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to Edit Profile Page
                    },
                    child: const Text('Edit Profile'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Skills Section
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Skills',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 10.0,
                    runSpacing: 5.0,
                    children: [
                      _buildSkillChip('Critical Thinking'),
                      _buildSkillChip('Public Speaking'),
                      _buildSkillChip('Research'),
                      _buildSkillChip('Logical Reasoning'),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Badges Section
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Badges',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 15.0,
                    children: [
                      _buildBadgeIcon(Icons.verified_user, 'Verified'),
                      _buildBadgeIcon(Icons.shield, 'Protector'),
                      _buildBadgeIcon(Icons.book, 'Scholar'),
                      _buildBadgeIcon(Icons.public, 'Global Debater'),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Friends List Section

            const SizedBox(height: 10),

            // Content Section: Recent Activity
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Recent Activity',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const Icon(Icons.chat_bubble_outline),
                        title: Text('Participated in Debate #$index'),
                        subtitle: Text('Topic: Example Topic #$index'),
                        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                        onTap: () {
                          // Navigate to Debate Details
                        },
                      );
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Achievements Section
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Achievements',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildAchievementIcon(Icons.star, 'Rising Star'),
                      _buildAchievementIcon(Icons.leaderboard, 'Top Debater'),
                      _buildAchievementIcon(Icons.mic, 'Master Speaker'),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Pinned Debates Section
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Pinned Debates',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    leading: const Icon(Icons.push_pin, color: Colors.redAccent),
                    title: const Text('Debate Topic #1'),
                    subtitle: const Text('Description of the pinned debate'),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // Navigate to Pinned Debate Details
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.push_pin, color: Colors.redAccent),
                    title: const Text('Debate Topic #2'),
                    subtitle: const Text('Description of the pinned debate'),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // Navigate to Pinned Debate Details
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillChip(String label) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.blue[100],
      avatar: const Icon(Icons.check_circle, color: Colors.blue),
    );
  }

  Widget _buildBadgeIcon(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 40, color: Colors.amber),
        const SizedBox(height: 5),
        Text(label),
      ],
    );
  }

  Widget _buildAchievementIcon(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 40, color: Colors.amber),
        const SizedBox(height: 5),
        Text(label),
      ],
    );
  }
}
