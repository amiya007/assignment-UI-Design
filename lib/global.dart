import 'package:flutter/material.dart';

const String programApiUrl =
    'https://632017e19f82827dcf24a655.mockapi.io/api/programs';
const String lessonApiUrl =
    'https://632017e19f82827dcf24a655.mockapi.io/api/lessons';

ButtonStyle textButtonWithImageStyle = ButtonStyle(
  shape: const MaterialStatePropertyAll(StadiumBorder()),
  visualDensity: VisualDensity.compact, // Adjust the button density
  overlayColor: MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return Colors.grey
            .withOpacity(0.2); // Change the overlay color when pressed
      }
      return Colors.grey.withOpacity(0.2); // Use the default overlay color
    },
  ),
  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
);

ButtonStyle commonButtonStyle = ButtonStyle(
  shape: MaterialStatePropertyAll(
    RoundedRectangleBorder(
      side: const BorderSide(
        width: 1,
        color: Colors.blue,
      ),
      borderRadius: BorderRadius.circular(15),
    ),
  ),
);
TextStyle commonHeadingText = const TextStyle(
  color: Color(0xFF6D747A),
  fontSize: 15,
  fontWeight: FontWeight.bold,
);
