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
    title: " Découvrez les Causes",
    image: "assets/onb/image1.png",
    desc: "Explorez des causes inspirantes! Faites glisser pour découvrir des projets caritatifs et apprenez comment chaque don contribue à un changement positif.",
  ),
  OnboardingContents(
    title: "Choisissez Votre Cause",
    image: "assets/onb/image2.png",
    desc:
        "Choisissez les causes qui vous tiennent à cœur. Faites glisser votre écran pour sélectionner une cause qui mérite votre soutien.",
  ),
  OnboardingContents(
    title: " Suivez l'Impact de Vos Dons",
    image: "assets/onb/image3.png",
    desc:
        "Suivez l'impact de vos dons en temps réel. Découvrez comment votre contribution change des vies et contribue à des causes qui comptent.",
  ),
];
