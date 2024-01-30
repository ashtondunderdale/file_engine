import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../data.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    NumberFormat currencyFormat = NumberFormat.currency(symbol: '£', locale: 'en_GB');

    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        width: 280,
        height: 160,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 208, 208, 208),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16, top: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "FUNDS",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  profiles.isEmpty
                      ? activeProfile?.balance != null
                          ? currencyFormat.format(activeProfile!.balance)
                          : "None"
                      : currencyFormat.format(profiles.first.balance),  
                    style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 118, 118, 118),
                    letterSpacing: 1
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 48),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  profiles.isEmpty ? "None" : activeProfile!.name,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 118, 118, 118),
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}