import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/empty_state_illustration.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F7),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F5F7),
        elevation: 0,
        scrolledUnderElevation: 0,
        titleSpacing: 16,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Q',
                style: GoogleFonts.inter(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: const Color(0xFF4285F4),
                ),
              ),
              TextSpan(
                text: 'w',
                style: GoogleFonts.inter(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: const Color(0xFFEA4335),
                ),
              ),
              TextSpan(
                text: 'i',
                style: GoogleFonts.inter(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: const Color(0xFFFBBC05),
                ),
              ),
              TextSpan(
                text: 'k',
                style: GoogleFonts.inter(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: const Color(0xFF34A853),
                ),
              ),
              TextSpan(
                text: ' Messages',
                style: GoogleFonts.inter(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF1A1A2E),
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Color(0xFF1A1A2E),
              size: 26,
            ),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              icon: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFF1A1A2E),
                    width: 1.5,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(4),
                  child: Icon(
                    Icons.person_outline,
                    color: Color(0xFF1A1A2E),
                    size: 20,
                  ),
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 260,
                      height: 260,
                      child: EmptyStateIllustration(),
                    ),
                    const SizedBox(height: 28),
                    Text(
                      'Once you start a new conversation,\nyou\'ll see it listed here',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontSize: 15,
                        color: const Color(0xFF6B7280),
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: const Color(0xFFDDE8FF),
        elevation: 2,
        icon: const Icon(
          Icons.chat_bubble_outline,
          color: Color(0xFF3D5A99),
          size: 20,
        ),
        label: Text(
          'Start chat',
          style: GoogleFonts.inter(
            color: const Color(0xFF3D5A99),
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
