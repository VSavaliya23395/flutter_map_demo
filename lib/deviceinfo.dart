import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';
import 'package:fluttermapdemo/main.dart';

//void main() => runApp(MyDeviceApp());

class MyDeviceApp extends StatefulWidget {
  @override
  _MyDeviceInfo createState() => _MyDeviceInfo();
}

class _MyDeviceInfo extends State<MyApp> {
  DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  AndroidDeviceInfo androidDeviceInfo;

  String board,
      brand,
      device,
      hardware,
      host,
      id,
      manufacture,
      model,
      product,
      type,
      androidid;
  bool isphysicaldevice;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDeviceInfo();
  }

  void getDeviceInfo() async {
    androidDeviceInfo = await deviceInfoPlugin.androidInfo;
    setState(() {
      board = androidDeviceInfo.board;
      brand = androidDeviceInfo.brand;
      device = androidDeviceInfo.device;
      hardware = androidDeviceInfo.hardware;
      host = androidDeviceInfo.host;
      id = androidDeviceInfo.id;
      manufacture = androidDeviceInfo.manufacturer;
      product = androidDeviceInfo.product;
      model = androidDeviceInfo.model;
      type = androidDeviceInfo.type;
      androidid = androidDeviceInfo.androidId;
      isphysicaldevice = androidDeviceInfo.isPhysicalDevice;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Device Info in Flutter"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                "Welcome to Proto Coders Point",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: Colors.red),
              ),
            ),
            Text(
              "YOUR DEVICE INFORMATION",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Board   : $board",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Brand   : $brand",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Device   : $device",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Hardware  :  $hardware ",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Host  : $host",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "ID   : $id",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Manufacture  : $manufacture",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Model  : $model",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Product  :  $product",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Type   : $type",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Is Physical Device : $isphysicaldevice",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              " Android ID: $androidid ",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
