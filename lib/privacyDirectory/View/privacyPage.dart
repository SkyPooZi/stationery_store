import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helper/themes.dart';
import '../../routes/route_name.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Privacy & Policy", style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Lato',
          color: primaryTextColor,
        ),
        ),

        titleSpacing: 0,
        elevation: 0,
        foregroundColor: Colors.black87,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.offNamed(RouteName.profile);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(right: 30, left: 30, bottom: 30, top: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Informasi apa yang kami kumpulkan tentang anda?",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                    decoration: TextDecoration.none
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 15,),
              Text(
                "Kami mengumpulkan Informasi Pribadi saat anda menggunakan Aplikasi kami. Kami juga mengumpulkan informasi perangkat dan teknis dari anda, dan informasi lain yang mungkin anda kirimkan saat anda menggunakan Aplikasi kami. Jika anda memilih untuk tidak menyediakan informasi tersebut, kami tidak akan dapat menyediakan Aplikasi kepada anda secara normal",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                    decoration: TextDecoration.none
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 15,),
              Text(
                "Bagaimana kami menggunakan informasi tentang anda?",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                    decoration: TextDecoration.none
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 15,),
              Text(
                "Bagaimana kami menggunakan informasi anda tergantung pada apakah anda seorang Pengguna atau Penyedia Layanan. Jika anda adalah Pengguna, kami menggunakan informasi anda untuk mengatur dan mengelola Akun anda dengan kami, berkomunikasi dengan anda, dan sebaliknya memberi anda berbagai layanan dan fungsi yang tersedia di Aplikasi kami. Jika anda adalah Penyedia Layanan, kami menggunakan informasi anda untuk memverifikasi bahwa anda dapat menyediakan layanan, memungkinkan anda menyediakan layanan kepada Pengguna, mengatur dan mengelola akun anda dengan kami, berkomunikasi dengan anda, dan sebaliknya memberi anda berbagai layanan dan fungsi yang tersedia di Aplikasi kami. Kami juga menggunakan informasi anda untuk melakukan pemeliharaan atas Aplikasi kami, dan untuk menyesuaikan produk dan layanan kami dengan preferensi anda. Selain itu, kami menggunakan informasi anda untuk memasarkan produk dan layanan kami kepada anda, dan dari perusahaan dalam grup kami, mitra, dan agen (dengan persetujuan anda jika diwajibkan oleh Peraturan Perundang-undangan yang Berlaku).",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                    decoration: TextDecoration.none
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 15,),
              Text(
                "Dengan siapa kami membagikan informasi anda?",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                    decoration: TextDecoration.none
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 15,),
              Text(
                "Kami membagikan data anda dengan Pengguna dan Penyedia Layanan (sebagaimana berlaku) untuk memfasilitasi kinerja layanan untuk atau oleh anda, dengan mitra dan pemasok pihak ketiga kami, sejauh yang diperlukan bagi mereka untuk menyediakan layanan mereka, seperti pemrosesan pembayaran, klaim dan verifikasi asuransi. Kami menggunakan layanan pihak ketiga ini semata-mata untuk mengolah atau menyimpan informasi anda untuk tujuan sebagaimana dijelaskan dalam Pemberitahuan Privasi ini. Kami juga membagikan informasi anda dengan Afiliasi kami untuk tujuan yang dijelaskan dalam Pemberitahuan Privasi ini dan dengan lembaga pemerintah dan otoritas pemerintah lainnya sebagaimana diwajibkan oleh Peraturan Perundang-undangan yang Berlaku",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                    decoration: TextDecoration.none
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 15,),
              Text(
                "Dimana kami memproses informasi anda?",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                    decoration: TextDecoration.none
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 15,),
              Text(
                "Server kami mungkin berlokasi di luar Wilayah. Kami juga dapat mentransfer informasi anda pada Afiliasi kami dan pemasok pihak ketiga serta mitra di luar Wilayah untuk tujuan sebagaimana ditetapkan dalam Pemberitahuan Privasi ini.",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                    decoration: TextDecoration.none
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 15,),
              Text(
                "Berapa lama kami menyimpan informasi anda?",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                    decoration: TextDecoration.none
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 15,),
              Text(
                "Kami menyimpan informasi anda selama diperlukan untuk memenuhi tujuan pengumpulannya, atau sebagaimana diwajibkan oleh Peraturan Perundang-undangan yang Berlaku.",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                    decoration: TextDecoration.none
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 15,),
              Text(
                "Bagaimana Saya bisa melaksanakan hak saya atas informasi saya?",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                    decoration: TextDecoration.none
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 15,),
              Text(
                "Anda mungkin memiliki berbagai hak sehubungan dengan data anda berdasarkan Peraturan Perundang-undangan yang Berlaku dan anda dapat menghubungi kami untuk melaksanakan hak anda.",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                    decoration: TextDecoration.none
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 15,),
              Text(
                "Hubungi kami",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                    decoration: TextDecoration.none
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 15,),
              Text(
                "Apabila anda memiliki pertanyaan, perhatian atau keluhan, dapat menghubungi kami melalui rincian kontak yang dapat ditemukan pada bagian Hubungi Kami.",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                    decoration: TextDecoration.none
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 15,),
              Text(
                "Bagaimana kami akan memberitahukan anda terkait perubahan?",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                    decoration: TextDecoration.none
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 15,),
              Text(
                "Kami akan mengubah Pemberitahuan Privasi ini dari waktu ke waktu dan memberitahu anda tentang versi yang diperbarui melalui Aplikasi kami atau email anda yang terdaftar pada kami. Silakan periksa kembali secara berkala untuk melihat pembaruan atau perubahan apapun pada Pemberitahuan Privasi ini.",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                    decoration: TextDecoration.none
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
