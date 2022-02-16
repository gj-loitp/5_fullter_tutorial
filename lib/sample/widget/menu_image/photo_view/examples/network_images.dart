import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/sample/widget/menu_image/photo_view/common/common_example_wrapper.dart';
import 'package:hello_word/sample/widget/menu_image/photo_view/common/example_button.dart';

class NetworkExamples extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "NetworkExamples",
        () {
          Get.back();
        },
        null,
      ),
      body: CupertinoScrollbar(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            ExampleButtonNode(
              title: "Image from the internet (with custom loader)",
              onPressed: () {
                Get.to(CommonExampleRouteWrapper(
                  imageProvider: const NetworkImage(
                    "https://source.unsplash.com/1900x3600/?camera,paper",
                  ),
                  loadingBuilder: (context, event) {
                    if (event == null) {
                      return const Center(
                        child: Text("Loading"),
                      );
                    }

                    final value = event.cumulativeBytesLoaded /
                        (event.expectedTotalBytes ??
                            event.cumulativeBytesLoaded);

                    final percentage = (100 * value).floor();
                    return Center(
                      child: Text("$percentage%"),
                    );
                  },
                ));
              },
            ),
            ExampleButtonNode(
              title: "Error image",
              onPressed: () {
                Get.to(CommonExampleRouteWrapper(
                  imageProvider: const NetworkImage(
                    "https://pudim.com.br/sss.jpg",
                  ),
                  backgroundDecoration: BoxDecoration(
                    color: Color(0xffa1a1a1),
                  ),
                ));
              },
            ),
            ExampleButtonNode(
              title: "Error image with custom error screen",
              onPressed: () {
                Get.to(CommonExampleRouteWrapper(
                  imageProvider: const NetworkImage(
                    "https://pudim.com.br/sss.jpg",
                  ),
                  errorBuilder: (_, __, ___) {
                    return Container(
                      child: Column(
                        children: [
                          Image.asset("assets/images/neat.gif"),
                          const Text("well, that went badly"),
                        ],
                      ),
                    );
                  },
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
