import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sreeselvavinayagartemple/src/mvc/controller/pooja_time/pooja_time_controller.dart';

class AddTimings extends StatefulWidget {
  const AddTimings({super.key});

  @override
  State<AddTimings> createState() => _AddTimingsState();
}

class _AddTimingsState extends State<AddTimings> {
  TextEditingController image = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController order = TextEditingController();
  TextEditingController time = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<PoojaTimeController>(builder: (controller) {
        return Scaffold(
          body: Column(
            children: [
              SizedBox(
                height: 6,
              ),
              Text("Image"),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                controller: image,
              ),
              SizedBox(
                height: 6,
              ),
              Text("Name"),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                controller: name,
              ),
              SizedBox(
                height: 6,
              ),
              Text("order"),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                controller: order,
              ),
              SizedBox(
                height: 6,
              ),
              Text("Time"),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                controller: time,
              ),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  onPressed: () {
                    controller
                        .addTimigs(image.text.trim(), name.text.trim(),
                            order.text.trim(), time.text.trim())
                        .then((value) {
                      image.text = '';
                      name.text = '';

                      order.text = '';

                      time.text = '';
                      setState(() {});
                    });
                  },
                  child: Text("Add Timing"))
            ],
          ),
        );
      }),
    );
  }
}
