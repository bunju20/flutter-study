import 'package:flutter/material.dart';
import 'package:sectionone/common/const/colors.dart';
import 'package:sectionone/common/layout/default_layout.dart';

import '../../common/component/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: SafeArea(
                top: true,
                bottom: false,
                child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _Title(),
              _Subtitle(),
              Image.asset(
                'asset/img/misc/logo.png',
                width: MediaQuery.of(context).size.width / 3 * 2,
              ),
              CustomTextFormField(
                hintText: '이메일을 입력해주세요.',
                onChanged: (String value) {},
              ),
              const SizedBox(height: 16.0,),
          
              CustomTextFormField(
                hintText: '비밀번호를 입력해주세요.',
                obscureText: true,
                onChanged: (String value) {},
              ),
              const SizedBox(height: 16.0,),
          
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: PRIMARY_COLOR),
                  child: Text('로그인',
                  style: TextStyle(
                    color: Colors.white,
                  ),)),
              TextButton(onPressed: () {},style: TextButton.styleFrom(
                primary: Colors.black,
              ), child: Text('회원가입'))
            ],
          ),
                ),
              ),
        ));
  }
}

class _Title extends StatelessWidget {
  const _Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '환영합니다!',
      style: TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    );
  }
}

class _Subtitle extends StatelessWidget {
  const _Subtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '이메일과 비밀번호를 입력해서 로그인해주세요! \n오늘도 성공적인 주문이 되길! :)',
      style: TextStyle(
        fontSize: 16,
        color: BODY_TEXT_COLOR,
      ),
    );
  }
}
