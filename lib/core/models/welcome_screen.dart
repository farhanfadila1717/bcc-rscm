class WelcomeScreen {
  final String title;
  final String description;
  final String image;
  final double scale;

  const WelcomeScreen({
    required this.title,
    required this.description,
    required this.image,
    required this.scale,
  });
}

const List<WelcomeScreen> welcomeScreens = [
  WelcomeScreen(
    title: 'Cleft Coach',
    description:
        'Panduan lengkap & dukungan untuk pasien dengan bibir sumbing. Dapatkan tips, dan bimbingan  dalam satu tempat!',
    image: 'assets/images/img_welcome_1.png',
    scale: .8,
  ),
  WelcomeScreen(
    title: 'Cleft Tracker',
    description:
        'Pasien dan tenaga medis dapat melacak jadwal konsultasi, operasi, dan event penting lainnya terkait perawatan bibir sumbing.',
    image: 'assets/images/img_welcome_2.png',
    scale: 1,
  ),
  WelcomeScreen(
    title: 'Cleft Connect',
    description:
        'Hubungkan diri Anda langsung dengan tenaga medis. Untuk konsultasi yang lebih mudah dan efisien.',
    image: 'assets/images/img_welcome_3.png',
    scale: .7,
  ),
];
