import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: const [Icon(Icons.search, size: 30)],
          title: const Text("For You Today"),
          backgroundColor: Colors.white,
        ),
        body: const InvestmentDashboard(),
      ),
    );
  }
}

class InvestmentDashboard extends StatelessWidget {
  const InvestmentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Stable Income",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Low risk\n10,982 participants",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "6.24% ",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "per year",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 200),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    ),
                    child: const Text("View"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Investing Strategies",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                const InvestmentCard(
                    "The Big Long", "15.16%   per year", Colors.purple),
                InvestmentCard("Aggressive Growth", "159%   per year",
                    Colors.lightGreenAccent[600]),
                InvestmentCard(
                    "Best Projects", "46.22%   per year", Colors.yellowAccent),
                InvestmentCard(
                    "Strategy 2022", "26.08%   per year", Colors.blue)
              ],
            ),


const SizedBox(height: 24),
    const Text(
    "Coin Lists",
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    ),
    ),
    const SizedBox(height: 16),
     CoinListTile("Bitcoin", "BTCB", "\$16,963.58", "-0.12%"),
     CoinListTile("Ethereum", "ETH", "\$1,259.10", "+1.15%"),
    const CoinListTile("Tether", "USDT", "\$1.01", "+0.01%"),
    const CoinListTile("Binance Coin", "BNB", "\$288.01", "+0.76%"),
    const CoinListTile("USD Coin",  "USDC", "\$0.9999", "-0.02%"),
    const CoinListTile("Binance USD",  "BUSD", "\$1.00", "-0.01%"),
    const CoinListTile("XRP",  "XRP", "\$0.3891", "+2.54%"),
    const CoinListTile("Dogecoin",  "DOGE", "\$0.1012", "-0.17%"),
    const CoinListTile("Cardano",  "ADA", "\$0.3196", "+0.09%"),
            const CoinListTile("Polygon",  "MATIC", "\$0.9082", "+2.18%")

          ],
        ),
      ),
    );
  }
}
