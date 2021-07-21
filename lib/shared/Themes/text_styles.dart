import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_collors.dart';

class TextStyles {
  static final bold = GoogleFonts.openSans(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static final buttonGrey = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.grey,
  );

  static final title = GoogleFonts.raleway(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    color: AppColors.black,
  );
  static final bannerTitle = GoogleFonts.raleway(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    color: AppColors.white,
  );
  static final bannerDescription = GoogleFonts.raleway(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    color: Color(0xFFD7D7D7),
  );

  static final loginSub = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    color: AppColors.stroke,
  );

  static final loginTitle = GoogleFonts.inter(
    fontSize: 34,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    color: Color(0xFF000000),
  );
}
