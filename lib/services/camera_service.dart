import 'package:camera/camera.dart';

class CameraService {
  CameraController? controller;

  Future<void> initializeCamera(List<CameraDescription> cameras) async {
    controller = CameraController(
      cameras[0],
      ResolutionPreset.high,
      enableAudio: false,
    );
    await controller!.initialize();
  }

  void dispose() {
    controller?.dispose();
  }
}
