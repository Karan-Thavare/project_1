import 'dart:ui';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'About Nagpur',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: Stack(
        children: [
          // Background gradient
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF0f0c29), Color(0xFF302b63), Color(0xFF24243e)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          // Frosted glass content
          SingleChildScrollView(
            padding:  EdgeInsets.only(top: 100, left: 16, right: 16, bottom: 32),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white.withOpacity(0.2)),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Hero Image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/2/23/Zero_mile_nagpur.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 20),

                      const Text(
                        'Nagpur – The Orange City 🍊',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.orangeAccent,
                        ),
                      ),
                      const SizedBox(height: 10),

                      const Text(
                        'Nagpur, located in the heart of India, is the third-largest city in Maharashtra. It is famously known as the Orange City due to its trade of high-quality oranges. It also holds historical and political importance as the geographical center of India (Zero Mile Stone).',
                        style: TextStyle(fontSize: 16, color: Colors.white70, height: 1.5),
                      ),

                      const SizedBox(height: 24),

                      const Text(
                        '🔹 Key Highlights:',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      const SizedBox(height: 10),

                      ...[
                        "Known as the 'Orange City' of India.",
                        "Home to the Zero Mile Stone – center of India.",
                        "Major center for tiger tourism (near Pench & Tadoba).",
                        "Host to the winter session of Maharashtra Legislature.",
                        "Ranked among the cleanest cities in India.",
                        "Hub for education and IT industries."
                      ].map((item) => infoBullet(item)).toList(),

                      const SizedBox(height: 24),

                      const Text(
                        '🧠 Did You Know?',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Nagpur has one of the highest literacy rates in India and is one of the fastest-growing smart cities.',
                        style: TextStyle(fontSize: 16, color: Colors.white70, height: 1.5),
                      ),

                      const SizedBox(height: 30),

                      const Center(
                        child: Text(
                          '🌆 Experience Culture, Nature & Progress – All in One City!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            color: Colors.orangeAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget infoBullet(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("• ", style: TextStyle(fontSize: 18, color: Colors.white)),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 16, color: Colors.white70))),
        ],
      ),
    );
  }
}
