class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Track Your Money and get the result",
    image: "assets/images/image1.png",
    desc: "Remember to keep track of your money and it's lifetime",
  ),
  OnboardingContents(
    title: "Stay organized with Money",
    image: "assets/images/image2.png",
    desc: "It will always makes your money organized for the future",
  ),
  OnboardingContents(
    title: "Get notified when Money finished",
    image: "assets/images/image3.png",
    desc: "Take control of money.",
  ),
];
