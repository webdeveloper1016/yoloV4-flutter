import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:object_detection/ui/pages/detector_page.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.black,
        ),
        backgroundColor: Colors.white,
        leading: Container(),
        title: Text(
          "Classificação de Rebit",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Image.asset(
              "assets/embraer-logo.png",
              height: 160,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            height: MediaQuery.of(context).size.height * 0.36,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  color: Colors.grey,
                  offset: Offset(-2, -2),
                ),
                BoxShadow(
                  blurRadius: 2,
                  color: Colors.grey,
                  offset: Offset(2, 2),
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Informações",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text(
                      "Mais informações sobre o projeto:",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.snackbar(
                        "Erro",
                        "Link indisponível!",
                        borderRadius: 0,
                        colorText: Colors.white,
                        backgroundColor: Colors.black,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.zero,
                        snackPosition: SnackPosition.TOP,
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 26, 27, 51),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: 36,
                      alignment: Alignment.center,
                      child: Text(
                        "Acessar o link",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 26.0),
                    child: Text(
                      "Mais informações sobre a empresa:",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (!await launchUrl(
                        Uri.parse('https://embraer.com/global/en'),
                        mode: LaunchMode.externalApplication,
                      )) {
                        throw 'Could not launch https://embraer.com/global/en';
                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 26, 27, 51),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: 36,
                      alignment: Alignment.center,
                      child: Text(
                        "Acessar o link",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
      margin: const EdgeInsets.only(bottom: 20),
        child: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 9, 13, 90),
          onPressed: () => Get.to(() => DetectorPage()),
          child: Icon(
            Icons.camera,
            color: Colors.white,
            size: 44,
          ),
        ),
      ),
      // bottomNavigationBar: GestureDetector(
      //   onTap: () {
      //     Get.to(() => DetectorPage());
      //   },
      //   child: Container(
      //     margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      //     decoration: BoxDecoration(
      //       color: Color.fromARGB(255, 9, 13, 90),
      //       borderRadius: BorderRadius.circular(6),
      //     ),
      //     height: 45,
      //     alignment: Alignment.center,
      //     child: Text(
      //       "Começar a classificar",
      //       style: TextStyle(color: Colors.white, fontSize: 16),
      //     ),
      //   ),
      // ),
    );
  }
}
