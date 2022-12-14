import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plj_absensi_mobile/constants/colors.dart';
import 'package:plj_absensi_mobile/modules/kontak/widgets/kontak_item.dart';
import 'package:url_launcher/url_launcher_string.dart';

class KontakScreen extends StatefulWidget {
  const KontakScreen({Key? key}) : super(key: key);

  @override
  State<KontakScreen> createState() => _KontakScreenState();
}

class _KontakScreenState extends State<KontakScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainLayerColor,
      appBar: AppBar(
        title: const Text('Kontak Kami'),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            KontakItem(
              onTap: () => launchUrlString('tel:62331482700'),
              icon: 'assets/icons/call-center.svg',
              label: 'Call Center',
              description: '+62895387228138',
            ),
            const SizedBox(height: 8),
            KontakItem(
              onTap: () => launchUrlString(
                'https://wa.me/62895387228138',
                mode: LaunchMode.externalApplication,
              ),
              icon: 'assets/icons/whatsapp.svg',
              label: 'Whatsapp Center',
              description: '+6282245824282',
            ),
            const SizedBox(height: 8),
            KontakItem(
              onTap: () => launchUrlString('mailto:absensi@pljabsensi.com'),
              icon: 'assets/icons/email.svg',
              label: 'Email',
              description: 'absensi@pljabsensi.com',
            ),
            const SizedBox(height: 8),
            // KontakItem(
            //   onTap: () => launchUrlString('mailto:admin@tirtapandalungan.com'),
            //   icon: 'assets/icons/email.svg',
            //   label: 'Email',
            //   description: 'admin@tirtapandalungan.com',
            // ),
            const SizedBox(height: 8),
            KontakItem(
              onTap: () => launchUrlString(
                'https://maps.google.com/maps?daddr=-8.1575886,113.722782',
                mode: LaunchMode.externalApplication,
              ),
              icon: 'assets/icons/alamat-pin.svg',
              label: 'Alamat',
              description: 'Jl. Mastrip No.164, Lingkungan Panji, Tegalgede, Kec. Sumbersari, Kabupaten Jember, Jawa Timur 68121',
            ),
          ],
        ),
      ),
    );
  }
}
