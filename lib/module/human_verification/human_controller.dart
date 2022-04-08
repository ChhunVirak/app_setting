import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HumanController extends GetxController {
  ///
  var listVerify = <HumanVerification>[
    HumanVerification(
        humanVerify: true,
        img:
            "https://scontent.fpnh16-1.fna.fbcdn.net/v/t1.6435-9/69870639_2464164277242068_5729313367286349824_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=174925&_nc_eui2=AeFimMqwnDODMdoON5r1qNPRaTS2-UcVQeBpNLb5RxVB4AQwR0CLC5tPkBWRAgc237YcuddCjkbK-zGb9ncZGCjg&_nc_ohc=1-ldn0w5i8UAX8hXpJl&_nc_ht=scontent.fpnh16-1.fna&oh=00_AT-vnxuy48stZN4BG4qpjGxPhmuhhREvGJbMXMAYPMMA4g&oe=62761E85"),
    HumanVerification(
        img:
            "https://scontent.fpnh16-1.fna.fbcdn.net/v/t1.6435-9/75481636_747812309050360_4140518042947813376_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=174925&_nc_eui2=AeGYNeUCCvUYnLte3i4PMetNfzSIbgrH3UZ_NIhuCsfdRnveYamzAQrxpOiStshyPpLPcI9xmZB9lCXylnt2ZTM9&_nc_ohc=TAzLG_0Z-r8AX9tgW-V&_nc_ht=scontent.fpnh16-1.fna&oh=00_AT9-xdgXHBGzsTKBkvnEYBHyBI4IYYpD0ksd044NK_dpfw&oe=62748B30"),
    HumanVerification(
        img:
            "https://scontent.fpnh16-1.fna.fbcdn.net/v/t1.6435-9/59701442_835715493474569_4575979928071176192_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeETPnGUSKkd0ALJfnwGaz0FA-WB_ViVdJQD5YH9WJV0lJ2wvpTRRywLMeuF4rf-zH4BgqdCKPKlRg_Ld7AvGpTS&_nc_ohc=nOUd0ZqqjgoAX-eN5b7&_nc_ht=scontent.fpnh16-1.fna&oh=00_AT-BWDBAdEeVysPvIRNQrDdU1tSpFKjZl4bUrnB1IU1ENg&oe=6275CE3E"),
    HumanVerification(
        img:
            "https://scontent.fpnh16-1.fna.fbcdn.net/v/t39.30808-6/271977032_3166170017042321_8756770110419821149_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGcpE39w7d42HRkHhsMtpJVwb1gUoxsKtLBvWBSjGwq0jd8wwF50RO_1RbYSpf2uBGS1C-nmpKGY76CFS_urmmj&_nc_ohc=1pvsRw3-R98AX834tte&_nc_ht=scontent.fpnh16-1.fna&oh=00_AT-lXgLqdDkg_Kji10dXPlLlYGx5rj-ZeI-Tjs27SqJqxA&oe=6254A05E"),
    HumanVerification(
        humanVerify: true,
        img:
            "https://scontent.fpnh16-1.fna.fbcdn.net/v/t31.18172-8/19453211_145976729307197_1239885904549651820_o.jpg?_nc_cat=108&ccb=1-5&_nc_sid=19026a&_nc_eui2=AeGorwMP0hFOX13pDni9vgDVMA2-v-hcz3EwDb6_6FzPcaFMGOVnjtCZkQj5L1I-ebb9qk6C1OVajyAualqOmMH1&_nc_ohc=U3lRghf4n_AAX_RxZwV&_nc_ht=scontent.fpnh16-1.fna&oh=00_AT8BV0XbH4TGL4CJQLviNlHAsjeO6n7YaqBTugBlPqfx5Q&oe=6273E4DA"),
    HumanVerification(
        img:
            "https://scontent.fpnh16-1.fna.fbcdn.net/v/t39.30808-6/271186469_1373682469754967_1215220761307181389_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=174925&_nc_eui2=AeGLEeoA6aOuMY8UK55IqmT2ZI9RI3BMG7Bkj1EjcEwbsHxiDrjFoedQqrNGvfwfX532vQHSSlSbmirt_LNm8bLq&_nc_ohc=M1dbZ8UrzhEAX_luE-3&_nc_ht=scontent.fpnh16-1.fna&oh=00_AT8R0jdEWq1kfK8_IdQSW-IyOLSUxP4lly8AqTtkDrvgEg&oe=6255A76D"),
    HumanVerification(
        humanVerify: true,
        img:
            "https://scontent.fpnh16-1.fna.fbcdn.net/v/t39.30808-6/273531972_1623325058013472_5607729056911462860_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEzIU2aX00gpGIW3MrKCWWMDPbombcHfP8M9uiZtwd8_7p7L04JgilKY7ybgNwGScFtHtRwy3uVm2qjrA_-xr1e&_nc_ohc=GwzwBNwqXAcAX-Wxw_l&_nc_ht=scontent.fpnh16-1.fna&oh=00_AT8xLiIe62YkLPZ1dWm_chPVev3ZihKt4vmA4dCni_-IFQ&oe=62558CDC"),
    HumanVerification(
        img:
            "https://scontent.fpnh16-1.fna.fbcdn.net/v/t1.6435-9/162165829_854343371814899_4225560572414397063_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeGAwSjgFG3TnoEJQFc6zcJl73q_GRr7Bv3ver8ZGvsG_aAmcbwD2lPvw3EBE2SwRRSqFLUe62HGWpWCgBaCaFcI&_nc_ohc=JS3vvsh-VN4AX_LugWT&tn=3yJS_P3m0d1XRndL&_nc_ht=scontent.fpnh16-1.fna&oh=00_AT-O8kcVrrvyeSi6fdrJ0AXwmVpkIdEqe1bRf-YV0803IQ&oe=627650A5"),
    HumanVerification(
        img:
            "https://scontent.fpnh16-1.fna.fbcdn.net/v/t1.6435-1/149687471_740705029913816_2864999728830629469_n.jpg?stp=dst-jpg_p480x480&_nc_cat=102&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeFOuSldv6NiFTrE78e_rAZBGH0eZf65oWAYfR5l_rmhYBKj8YaRUPMCcOpE6Qg79PZd8Yn0z65tweWm_VKno_Ue&_nc_ohc=Xw2PVBVUqhMAX_xnE7o&tn=3yJS_P3m0d1XRndL&_nc_ht=scontent.fpnh16-1.fna&oh=00_AT9X-32oQWFremEkgBNzR2wsLMno6TJYDPPkqqMMYtzb5g&oe=627608B4"),
  ].obs;

  ///
  var smos = true.obs;

  checkCorret() {
    for (HumanVerification e in listVerify) {
      if (e.humanVerify == true) {
        smos.value = false;
        listVerify.value = <HumanVerification>[
          HumanVerification(
              humanVerify: true,
              img:
                  "https://scontent.fpnh16-1.fna.fbcdn.net/v/t1.6435-9/69870639_2464164277242068_5729313367286349824_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=174925&_nc_eui2=AeFimMqwnDODMdoON5r1qNPRaTS2-UcVQeBpNLb5RxVB4AQwR0CLC5tPkBWRAgc237YcuddCjkbK-zGb9ncZGCjg&_nc_ohc=1-ldn0w5i8UAX8hXpJl&_nc_ht=scontent.fpnh16-1.fna&oh=00_AT-vnxuy48stZN4BG4qpjGxPhmuhhREvGJbMXMAYPMMA4g&oe=62761E85"),
          HumanVerification(
              img:
                  "https://scontent.fpnh16-1.fna.fbcdn.net/v/t1.6435-9/75481636_747812309050360_4140518042947813376_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=174925&_nc_eui2=AeGYNeUCCvUYnLte3i4PMetNfzSIbgrH3UZ_NIhuCsfdRnveYamzAQrxpOiStshyPpLPcI9xmZB9lCXylnt2ZTM9&_nc_ohc=TAzLG_0Z-r8AX9tgW-V&_nc_ht=scontent.fpnh16-1.fna&oh=00_AT9-xdgXHBGzsTKBkvnEYBHyBI4IYYpD0ksd044NK_dpfw&oe=62748B30"),
          HumanVerification(
              img:
                  "https://scontent.fpnh16-1.fna.fbcdn.net/v/t1.6435-9/59701442_835715493474569_4575979928071176192_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeETPnGUSKkd0ALJfnwGaz0FA-WB_ViVdJQD5YH9WJV0lJ2wvpTRRywLMeuF4rf-zH4BgqdCKPKlRg_Ld7AvGpTS&_nc_ohc=nOUd0ZqqjgoAX-eN5b7&_nc_ht=scontent.fpnh16-1.fna&oh=00_AT-BWDBAdEeVysPvIRNQrDdU1tSpFKjZl4bUrnB1IU1ENg&oe=6275CE3E"),
          HumanVerification(
              img:
                  "https://scontent.fpnh16-1.fna.fbcdn.net/v/t39.30808-6/271977032_3166170017042321_8756770110419821149_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGcpE39w7d42HRkHhsMtpJVwb1gUoxsKtLBvWBSjGwq0jd8wwF50RO_1RbYSpf2uBGS1C-nmpKGY76CFS_urmmj&_nc_ohc=1pvsRw3-R98AX834tte&_nc_ht=scontent.fpnh16-1.fna&oh=00_AT-lXgLqdDkg_Kji10dXPlLlYGx5rj-ZeI-Tjs27SqJqxA&oe=6254A05E"),
          HumanVerification(
              humanVerify: true,
              img:
                  "https://scontent.fpnh16-1.fna.fbcdn.net/v/t31.18172-8/19453211_145976729307197_1239885904549651820_o.jpg?_nc_cat=108&ccb=1-5&_nc_sid=19026a&_nc_eui2=AeGorwMP0hFOX13pDni9vgDVMA2-v-hcz3EwDb6_6FzPcaFMGOVnjtCZkQj5L1I-ebb9qk6C1OVajyAualqOmMH1&_nc_ohc=U3lRghf4n_AAX_RxZwV&_nc_ht=scontent.fpnh16-1.fna&oh=00_AT8BV0XbH4TGL4CJQLviNlHAsjeO6n7YaqBTugBlPqfx5Q&oe=6273E4DA"),
          HumanVerification(
              img:
                  "https://scontent.fpnh16-1.fna.fbcdn.net/v/t39.30808-6/271186469_1373682469754967_1215220761307181389_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=174925&_nc_eui2=AeGLEeoA6aOuMY8UK55IqmT2ZI9RI3BMG7Bkj1EjcEwbsHxiDrjFoedQqrNGvfwfX532vQHSSlSbmirt_LNm8bLq&_nc_ohc=M1dbZ8UrzhEAX_luE-3&_nc_ht=scontent.fpnh16-1.fna&oh=00_AT8R0jdEWq1kfK8_IdQSW-IyOLSUxP4lly8AqTtkDrvgEg&oe=6255A76D"),
          HumanVerification(
              humanVerify: true,
              img:
                  "https://scontent.fpnh16-1.fna.fbcdn.net/v/t39.30808-6/273531972_1623325058013472_5607729056911462860_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEzIU2aX00gpGIW3MrKCWWMDPbombcHfP8M9uiZtwd8_7p7L04JgilKY7ybgNwGScFtHtRwy3uVm2qjrA_-xr1e&_nc_ohc=GwzwBNwqXAcAX-Wxw_l&_nc_ht=scontent.fpnh16-1.fna&oh=00_AT8xLiIe62YkLPZ1dWm_chPVev3ZihKt4vmA4dCni_-IFQ&oe=62558CDC"),
          HumanVerification(
              img:
                  "https://scontent.fpnh16-1.fna.fbcdn.net/v/t1.6435-9/162165829_854343371814899_4225560572414397063_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeGAwSjgFG3TnoEJQFc6zcJl73q_GRr7Bv3ver8ZGvsG_aAmcbwD2lPvw3EBE2SwRRSqFLUe62HGWpWCgBaCaFcI&_nc_ohc=JS3vvsh-VN4AX_LugWT&tn=3yJS_P3m0d1XRndL&_nc_ht=scontent.fpnh16-1.fna&oh=00_AT-O8kcVrrvyeSi6fdrJ0AXwmVpkIdEqe1bRf-YV0803IQ&oe=627650A5"),
          HumanVerification(
              img:
                  "https://scontent.fpnh16-1.fna.fbcdn.net/v/t1.6435-1/149687471_740705029913816_2864999728830629469_n.jpg?stp=dst-jpg_p480x480&_nc_cat=102&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeFOuSldv6NiFTrE78e_rAZBGH0eZf65oWAYfR5l_rmhYBKj8YaRUPMCcOpE6Qg79PZd8Yn0z65tweWm_VKno_Ue&_nc_ohc=Xw2PVBVUqhMAX_xnE7o&tn=3yJS_P3m0d1XRndL&_nc_ht=scontent.fpnh16-1.fna&oh=00_AT9X-32oQWFremEkgBNzR2wsLMno6TJYDPPkqqMMYtzb5g&oe=627608B4"),
        ];
        listVerify.shuffle();
        listVerify.refresh();
        Get.snackbar("សូមព្យាយាមម្ដងទៀត", "ប្រុសដែលបានជ្រើសរេីសមិនស្មោះទេ",
            backgroundColor: Colors.red, colorText: Colors.white);
        break;
      } else {
        smos.value = true;
      }
    }
    if (smos.value) {
      Get.snackbar("ជោគជ័យ", "ប្រុសដែលបានជ្រើសរេីសសុទ្ធតែស្មោះ",
          backgroundColor: Colors.green[700], colorText: Colors.white);
    }
  }
}

class HumanVerification {
  String img;
  bool humanVerify, select;

  HumanVerification(
      {this.img = "", this.humanVerify = false, this.select = false});
}
