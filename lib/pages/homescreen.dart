import 'package:waveui/waveui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return WaveScaffold(
      appBar: WaveAppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(FluentIcons.navigation_24_regular),
        ),
        title: "Wallet",
        actions: [
          SizedBox(
            width: 30,
            child: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.3),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/image1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _heroCard(balance: "8,458.00"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  _menuItem(
                    color: Colors.blue,
                    icon: FluentIcons.send_28_filled,
                    title: "Send",
                  ),
                  const SizedBox(width: 12),
                  _menuItem(
                    color: Colors.red,
                    icon: FluentIcons.calendar_work_week_28_filled,
                    title: "Activities",
                  ),
                  const SizedBox(width: 12),
                  _menuItem(
                    color: Colors.cyan,
                    icon: FluentIcons.chart_multiple_24_filled,
                    title: "Stats",
                  ),
                  const SizedBox(width: 12),
                  _menuItem(
                    color: Colors.purple,
                    icon: FluentIcons.wallet_28_filled,
                    title: "Payment",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            _transactions(),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _heroCard({required String balance}) {
    return GestureDetector(
      onTap: () {
        isExpanded = !isExpanded;
        setState(() {});
      },
      child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
              color: Get.theme.primaryColor,
              image: const DecorationImage(
                image: NetworkImage(
                    "https://img.freepik.com/free-vector/gradient-smooth-blue-lines-background_23-2148964962.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(WaveConstants.radius)),
          child: !isExpanded
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\$$balance",
                      style: const TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Total balance",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Md Waliul Islam Alif",
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      "Flutter Platinum Card",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "2134 **** **** 0505",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Text(
                          "\$$balance",
                          style: const TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "Flutter",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
    );
  }

  Widget _menuItem({
    Color color = Colors.red,
    String title = '',
    IconData icon = FluentIcons.wallet_28_filled,
  }) {
    return Expanded(
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1 / 1,
            child: WaveContainer(
              color: color.withOpacity(0.3),
              child: Icon(
                icon,
                color: color,
                size: 32,
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(title),
        ],
      ),
    );
  }

  Widget _transactions() {
    return WaveCard(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Transactions",
                style: Get.textTheme.bodyMedium!.copyWith(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: const Text("View all"),
              ),
            ],
          ),
          const ListTile(
            title: Text("Electric bill"),
            subtitle: Text("Today at 0:40"),
            trailing: Text("-\$40"),
          ),
          const ListTile(
            title: Text("Salary"),
            subtitle: Text("Yesterday at 12:20"),
            trailing: Text("+\$11,250"),
          ),
          const ListTile(
            title: Text("New pc build"),
            subtitle: Text("12 Aug 2023 at 04:12"),
            trailing: Text("-\$4,490"),
          ),
          const ListTile(
            title: Text("Water bill"),
            subtitle: Text("10 Aug 2023 at 0:40"),
            trailing: Text("-\$83.43"),
          )
        ],
      ),
    );
  }
}
