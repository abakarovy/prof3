import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:profe/presentation/uikit/app_theme.dart';
import 'package:profe/presentation/uikit/widgets/border_button.dart';
import 'package:profe/presentation/uikit/widgets/shallow_button.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<StatefulWidget> createState() => _ImagePickerWidgetState();
}


class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImageFromGallery() async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
        image: _image != null ?
          DecorationImage(
            image: Image.file(_image!).image,
            fit: BoxFit.cover
          ) : null
      ),
      child:  BorderButton(
        onPressed: _pickImageFromGallery,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: AppColors.accent)
          ),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          overlayColor: AppColors.accentInactive,
          fixedSize: Size(100, 200),
          disabledBackgroundColor: AppColors.accentInactive
        ),
        child: const Text("choose"),
      )
    );
  }
}