
import 'package:flutter/material.dart';
import '../../common/string/app_color.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {Key? key,
        required this.controller,
        this.hint,
        this.icon,
        required this.inputType,
        this.line,
        this.length,
        this.onChange,
        this.borderColor})
      : super(key: key);
  final TextEditingController controller;
  final String? hint;
  final IconData? icon;
  final TextInputType inputType;
  final ValueChanged<String>? onChange;
  final int? line;
  final int? length;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: icon != null
          ? const EdgeInsets.only(left: 6.0)
          : const EdgeInsets.only(left: 6.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(width: 1.0, color: AppColors.amberColor)),
      height: 45.0,
      width: double.infinity,
      child: Row(
        children: [
          icon != null
              ? Icon(
            icon,
            color: AppColors.titleBlack,
          )
              : SizedBox(),
          Expanded(
            child: TextField(
              maxLength: length,
              onChanged: onChange,
              keyboardType: inputType,
              scrollPhysics: const BouncingScrollPhysics(),
              controller: controller,
              decoration: InputDecoration(
                  counterText: '',
                  contentPadding: const EdgeInsets.only(
                      left: 4.0, right: 8.0, top: 14.0, bottom: 12.0),
                  isDense: true,
                  // enabledBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(6.0),
                  //   borderSide: const BorderSide(color: AppColors.amberColor),
                  // ),
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(6.0),
                  //   borderSide: const BorderSide(color: AppColors.amberColor),
                  // ),
                  // focusedBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(6.0),
                  //   borderSide: const BorderSide(color: AppColors.amberColor),
                  // ),

                  border: InputBorder.none,
                  hoverColor: AppColors.amberColor,
                  focusColor: AppColors.amberColor,
                  disabledBorder: InputBorder.none,
                  hintText: hint),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchingWidget extends StatelessWidget {
  const SearchingWidget(
      {Key? key,
        required this.controller,
        this.hint,
        this.icon,
        required this.inputType,
        this.line,
        this.length,
        this.onChange,
        this.borderColor})
      : super(key: key);
  final TextEditingController controller;
  final String? hint;
  final IconData? icon;
  final TextInputType inputType;
  final ValueChanged<String>? onChange;
  final int? line;
  final int? length;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(width: 1.0, color: AppColors.whiteColor)),
      height: 32,
      width: w * 0.6,
      child: TextField(
        onChanged: onChange,
        keyboardType: inputType,
        scrollPhysics: const BouncingScrollPhysics(),
        controller: controller,
        decoration: InputDecoration(
          counterText: '',
          contentPadding: const EdgeInsets.only(
              left: 2.0, right: 2.0, top: 2.0, bottom: 2.0),
          isDense: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: const BorderSide(color: AppColors.whiteColor),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: const BorderSide(color: AppColors.whiteColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: const BorderSide(color: AppColors.whiteColor),
          ),
          hoverColor: AppColors.whiteColor,
          focusColor: AppColors.whiteColor,
          disabledBorder: InputBorder.none,
          hintText: hint,
          fillColor: AppColors.whiteColor,
          filled: true,
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.titleBlack,
            size: 18,
          ),
        ),
        maxLength: length,
        maxLines: line,
      ),
    );
  }
}

class TextFieldLTDWidget extends StatelessWidget {
  const TextFieldLTDWidget(
      {Key? key,
        required this.controller,
        this.hint,
        this.icon,
        required this.inputType,
        this.line,
        this.length,
        this.onChange,
        this.borderColor})
      : super(key: key);
  final TextEditingController controller;
  final String? hint;
  final IconData? icon;
  final TextInputType inputType;
  final ValueChanged<String>? onChange;
  final int? line;
  final int? length;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: icon != null
          ? const EdgeInsets.only(left: 6.0)
          : const EdgeInsets.only(left: 6.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(width: 1.0, color: AppColors.amberColor)),
      height: 45.0,
      width: double.infinity,
      child: Row(
        children: [
          icon != null
              ? Icon(
            icon,
            color: AppColors.titleBlack,
          )
              : SizedBox(),
          Expanded(
            child: TextField(
              maxLength: length,
              onChanged: onChange,
              keyboardType: inputType,
              scrollPhysics: const BouncingScrollPhysics(),
              controller: controller,
              maxLines: line,
              decoration: InputDecoration(
                counterText: '',
                contentPadding: const EdgeInsets.only(
                    left: 4.0, right: 3.0, top: 3.0, bottom: 3.0),
                isDense: true,
                // enabledBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(6.0),
                //   borderSide: const BorderSide(color: AppColors.amberColor),
                // ),
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(6.0),
                //   borderSide: const BorderSide(color: AppColors.amberColor),
                // ),
                // focusedBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(6.0),
                //   borderSide: const BorderSide(color: AppColors.amberColor),
                // ),

                border: InputBorder.none,
                hoverColor: AppColors.amberColor,
                focusColor: AppColors.amberColor,
                disabledBorder: InputBorder.none,
                hintText: hint,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextFieldLTD extends StatelessWidget {
  const TextFieldLTD(
      {Key? key,
        required this.controller,
        this.hint,
        this.icon,
        required this.inputType,
        this.line,
        this.length,
        this.onChange,
        this.borderColor,
        this.width,
        this.height})
      : super(key: key);
  final TextEditingController controller;
  final String? hint;
  final IconData? icon;
  final TextInputType inputType;
  final ValueChanged<String>? onChange;
  final int? line;
  final int? length;
  final Color? borderColor;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 38.0,
      width: width ?? 210.0,
      margin: EdgeInsets.only(left: 12.0, top: 3.0, bottom: 5.0),
      child: Container(
        padding: icon != null
            ? const EdgeInsets.only(left: 6.0)
            : const EdgeInsets.only(left: 6.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(
                width: 1.0, color: AppColors.titleBlack.withOpacity(0.3))),
        height: 45.0,
        width: double.infinity,
        child: Row(
          children: [
            icon != null
                ? Icon(
              icon,
              color: AppColors.titleBlack,
            )
                : SizedBox(),
            Expanded(
              child: TextField(
                style: TextStyle(fontSize: 14),
                maxLength: length ?? 25,
                showCursor: true,
                onChanged: onChange,
                keyboardType: inputType,
                scrollPhysics: const BouncingScrollPhysics(),
                controller: controller,
                maxLines: line ?? 1,
                decoration: InputDecoration(
                  counterText: '',
                  contentPadding: const EdgeInsets.only(
                      left: 2.0, right: 1.5, top: 1.5, bottom: 1.5),
                  isDense: true,
                  // enabledBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(6.0),
                  //   borderSide: const BorderSide(color: AppColors.amberColor),
                  // ),
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(6.0),
                  //   borderSide: const BorderSide(color: AppColors.amberColor),
                  // ),
                  // focusedBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(6.0),
                  //   borderSide: const BorderSide(color: AppColors.amberColor),
                  // ),

                  border: InputBorder.none,
                  hoverColor: AppColors.titleBlack.withOpacity(0.3),
                  focusColor: AppColors.titleBlack.withOpacity(0.3),
                  disabledBorder: InputBorder.none,
                  hintText: hint,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}