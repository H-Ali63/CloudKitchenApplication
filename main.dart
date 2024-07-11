import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food Delivery',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: ''),
      ),
      designSize: const Size(375, 812),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
               Padding(

                 padding:  EdgeInsets.symmetric(vertical: 10.h, horizontal: 140.w),
                 child: const SizedBox(
                  child: Image(
                      image: AssetImage('assets/Checkmark.png')),
                               ),
               ),    //Logo
             SizedBox(height: 10.h),
            SizedBox(
              child: Text(
                'Welcome back!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF324EDF),
                  fontSize: 22.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),    //Welcome back
            SizedBox(height: 35.h),
            Container(
              margin: EdgeInsets.only(right: 245.w),
              child: Text(
                'E-mail / Phone',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFFA8A7A7),
                  fontSize: 12.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),    //Email/Phone Text
            Container(
              margin: EdgeInsets.only(right: 10.w, top: 5.h),
              width: 320.w,
              height: 47.h,
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your Email or Phone',
                  border: InputBorder.none
                ),
              ),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: const Color(0x1A324EDF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFF324EDF)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),    //Email/Phone Input
            SizedBox(height: 25.h),
            Container(
              margin: EdgeInsets.only(top: 20.h, right: 270.w),
              child: Text(
                'Password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFFA8A7A7),
                  fontSize: 12.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),    //Password Text
            Container(
              margin: const EdgeInsets.only(right: 10, top: 5),
              width: 320.w,
              height: 47.h,
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your Password',
                  border: InputBorder.none
                ),
              ),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: const Color(0x1A324EDF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFF324EDF)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),    //Password input
            Container(
              margin: EdgeInsets.only(top: 5.h, left: 230.w),
              child: GestureDetector(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPassword(),));
              },
                child: Text(
                  'Forget Password?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF324EDF),
                    fontSize: 10.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ),    //Forgot Password
            Container(
              margin: EdgeInsets.only(top: 80.h),
              width: 140,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: const Color(0xFF324EDF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: GestureDetector(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => homePage(),),);
              },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Log in',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),    //Log in Button
            Container(
              margin: EdgeInsets.only(top: 25.h),
              child:  SizedBox(
                width: 136.w,
                height: 45.h,
                child: Text(
                  'Or Log in with',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFFA8A7A7),
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ),    //Or Log in With Text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  width: 46,
                  height: 46,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFEF4640),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: const Image(
                    image: AssetImage('assets/Google.png'),
                  ),
                ),
                SizedBox(width: 10.w),
                Container(
                  width: 46,
                  height: 46,
                  decoration: ShapeDecoration(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: const Image(
                    image: AssetImage('assets/AppleLogo.png'),
                  ),
                ),
              ],
            ),    //Google and Apple Logo
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                  'Don’t have an account?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFFA8A7A7),
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(width: 5.w),
                GestureDetector(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()),);
                },
                  child: Text(
                    'Sign up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF324EDF),
                      fontSize: 12.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),    //Don't Have an Account? Sign Up Button
          ],
        ),
      ),
    );
  }
}
class SignUpPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 140.w),
              child: const SizedBox(
                  child: Image(
                      image: AssetImage('assets/Checkmark.png')),
                ),
            ),    //Logo
            SizedBox(height: 10.h),
            Container(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Let’s get started!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF324EDF),
                  fontSize: 22.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),    //Let's Get started Text
            SizedBox(height: 35.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 25.w),

                  child:  Text(
                    'Name',
                    style: TextStyle(
                      color: const Color(0xFFA8A7A7),
                      fontSize: 11.74.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
                ],
            ),    //Name Text
            SizedBox(height: 5.h),
            Container(
              margin: EdgeInsets.only(right: 10.w),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Name',
                  border: InputBorder.none
                ),
              ),
              width: 320.w,
              height: 45.98.h,
              decoration: ShapeDecoration(
                color: const Color(0x1A324EDF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.98, color: Color(0xFF324EDF)),
                  borderRadius: BorderRadius.circular(9.78),
                ),
              ),
            ),    // Name Input
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 25.w, top: 20.h),

                  child: Text(
                    'Email',
                    style: TextStyle(
                      color: const Color(0xFFA8A7A7),
                      fontSize: 11.74.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),    //Email Text
            SizedBox(height: 5.h),
            Container(
              margin: EdgeInsets.only(right: 10.w),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Email',
                    border: InputBorder.none,
                    suffix: GestureDetector(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EmailVerify()),);
                    },
                      child: Padding(
                        padding: EdgeInsets.only(right: 5.w),
                        child: Text(
                          'Verify',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF324EDF),
                            fontSize: 10.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                    )
                ),
              ),
              width: 320.w,
              height: 45.98.h,
              decoration: ShapeDecoration(
                color: const Color(0x1A324EDF),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.98.w, color: const Color(0xFF324EDF)),
                  borderRadius: BorderRadius.circular(9.78),
                ),
              ),
            ),    //Email Input and verify Text
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 25.w, top: 20.h),

                  child: Text(
                    'Phone Number',
                    style: TextStyle(
                      color: const Color(0xFFA8A7A7),
                      fontSize: 11.74.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),    //Phone Number Text
            SizedBox(height: 5.h),
            Container(
              margin: EdgeInsets.only(right: 10.w),
              child: TextField(

                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'Enter Phone Number',
                  border: InputBorder.none,
                  suffix: GestureDetector(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PhoneVerify()),);
                  },
                    child: Padding(
                      padding: EdgeInsets.only(right: 5.w),
                      child: Container(
                        child: Text(
                          'Verify',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF324EDF),
                            fontSize: 10.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        )
                      ),
                    ),
                  )
                ),
              ),
              width: 320.w,
              height: 45.98.h,
              decoration: ShapeDecoration(
                color: const Color(0x1A324EDF),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.98.w, color: const Color(0xFF324EDF)),
                  borderRadius: BorderRadius.circular(9.78),
                ),
              ),
            ),    //Phone Number Input and Verify Text
            SizedBox(height: 10.h),
            Container(
              margin: EdgeInsets.only(top: 30.h),
              width: 130,
              height: 47,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: const Color(0xFF324EDF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Next',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),   //Next Button
            SizedBox(height: 10.h),
            Container(
              margin: EdgeInsets.only(top: 25.h),
              child: SizedBox(
                width: 136.w,
                height: 45.h,
                child: Text(
                  'Or Sign up with',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFFA8A7A7),
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),    //Or SignUp with Text
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  width: 46,
                  height: 46,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFEF4640),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: const Image(
                    image: AssetImage('assets/Google.png'),
                  ),
                ),
                SizedBox(width: 10.w),
                Container(
                  width: 46,
                  height: 46,
                  decoration: ShapeDecoration(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: const Image(
                    image: AssetImage('assets/AppleLogo.png'),
                  ),
                ),
              ],
            ),    //Google and Apple Logo
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                  'Already have an Account?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFFA8A7A7),
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(width: 5.w),
                GestureDetector(onTap: (){
                  Navigator.pop(context, MaterialPageRoute(builder: (context) => const MyHomePage(title:'')),);
                },
                  child: Text(
                    'Log in',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF324EDF),
                      fontSize: 12.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),    //Already Have an Account? Login Button

          ],
        ),
      )
    );
  }
}
class EmailVerify extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
            children: [
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 10.h, horizontal: 140.w),
          child: const Image(
              image: AssetImage('assets/Checkmark.png')),
        ),    //Logo
              SizedBox(height: 15.h),
        Container(
          alignment: AlignmentDirectional.center,
          child: Text(
            'Verify your Email',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xFF324EDF),
              fontSize: 22.sp,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
            ),
          )
        ),    //Verify Your Email Text
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 25.w, top: 20.h),

                      child: Text(
                        'Email',
                        style: TextStyle(
                          color: const Color(0xFFA8A7A7),
                          fontSize: 11.74.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),    //Email Text
              SizedBox(height: 5.h),
              Container(
                margin: EdgeInsets.only(right: 10.w),
                width: 320.w,
                height: 47.h,
                padding: EdgeInsets.only(
                  top: 16.h,
                  left: 15.w,
                  right: 103.h,
                  bottom: 16.h,
                ),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color(0x1A324EDF),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFF324EDF)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'someone@gmail.com',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFA8A7A7),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),   //Email Selected
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 25.w, top: 35.h),

                      child: Text(
                        'OTP',
                        style: TextStyle(
                          color: const Color(0xFFA8A7A7),
                          fontSize: 11.74.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),    //OTP Text
                  ],
                ),
              ),    //OTP Text
              SizedBox(height: 5.h,),
              Container(
                margin: EdgeInsets.only(right: 10.w),
                child: const TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Enter OTP',
                    border: InputBorder.none
                  ),
                ),
                width: 320.w,
                height: 45.98.h,
                decoration: ShapeDecoration(
                  color: const Color(0x1A324EDF),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.98.w, color: const Color(0xFF324EDF)),
                    borderRadius: BorderRadius.circular(9.78),
                  ),
                ),
              ),    //OTP Input
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 30.w, top: 20.h),

                      child: Text(
                        'Resend OTP',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF324EDF),
                          fontSize: 10.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),    //OTP Text
                  ],
                ),
              ),    //Resend OTP Text
              Container(
                margin: const EdgeInsets.only(top: 50),
                width: 130,
                height: 47,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color(0xFF324EDF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: GestureDetector(onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EmailPhoneVerified(),),);
                      },
                        child: const Text(
                          'Verify',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),),
                    )

                  ],
                ),
              ),    //Verify Button
              Container(
                margin: EdgeInsets.only(top: 25.h),
                child: SizedBox(
                  width: 136.w,
                  height: 45.h,
                  child: Text(
                    'Or Sign up with',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFFA8A7A7),
                      fontSize: 12.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),    //Or SignUp with Text
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: 46,
                      height: 46,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFEF4640),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: const Image(
                        image: AssetImage('assets/Google.png'),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 46,
                      height: 46,
                      decoration: ShapeDecoration(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: const Image(
                        image: AssetImage('assets/AppleLogo.png'),
                      ),
                    ),
                  ],
                ),
              ),    //Google and Apple Logo
              SizedBox(height: 40.h),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(
                      'Already have an Account?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFFA8A7A7),
                        fontSize: 12.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 5.w),
                    GestureDetector(onTap: (){
                      Navigator.popUntil(context, ModalRoute.withName('/'),);
                    },
                      child: Text(
                        'Log in',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF324EDF),
                          fontSize: 12.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),    //Already Have an Account? Login Button


    ])
    ));
  }

}
class PhoneVerify extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(),
     body: SingleChildScrollView(
         child: Column(
             children: [
               Container(
                 margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 140.w),
                 child: const Image(
                     image: AssetImage('assets/Checkmark.png')),
               ),    //Logo
               SizedBox(height: 15.h),
               Container(
                   alignment: AlignmentDirectional.center,
                   child: Text(
                     'Verify Your Phone Number',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       color: const Color(0xFF324EDF),
                       fontSize: 22.sp,
                       fontFamily: 'Poppins',
                       fontWeight: FontWeight.w700,
                     ),
                   )
               ),    //Verify Your Phone Number Text
               Container(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Container(
                       padding: EdgeInsets.only(left: 30.w, top: 20.h),

                       child: Text(
                         'Phone Number',
                         style: TextStyle(
                           color: const Color(0xFFA8A7A7),
                           fontSize: 11.74.sp,
                           fontFamily: 'Poppins',
                           fontWeight: FontWeight.w500,
                         ),
                       ),
                     ),
                   ],
                 ),
               ),    //Phone Number Text
               SizedBox(height: 5.h),
               Container(
                 margin: EdgeInsets.only(right: 10.w),
                 width: 320.w,
                 height: 47.h,
                 padding: const EdgeInsets.only(
                   top: 16,
                   left: 15,
                   right: 103,
                   bottom: 16,
                 ),
                 clipBehavior: Clip.antiAlias,
                 decoration: ShapeDecoration(
                   color: const Color(0x1A324EDF),
                   shape: RoundedRectangleBorder(
                     side: const BorderSide(width: 1, color: Color(0xFF324EDF)),
                     borderRadius: BorderRadius.circular(10),
                   ),
                 ),
                 child: const Row(
                   mainAxisSize: MainAxisSize.min,
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text(
                       '+91 8298148455',
                       textAlign: TextAlign.center,
                       style: TextStyle(
                         color: Color(0xFFA8A7A7),
                         fontSize: 10,
                         fontFamily: 'Poppins',
                         fontWeight: FontWeight.w500,
                         height: 0,
                       ),
                     ),
                   ],
                 ),
               ),   //Phone Selected
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Container(
                     padding: EdgeInsets.only(left: 30.w, top: 35.h),

                     child: Text(
                       'OTP',
                       style: TextStyle(
                         color: const Color(0xFFA8A7A7),
                         fontSize: 11.74.sp,
                         fontFamily: 'Poppins',
                         fontWeight: FontWeight.w500,
                       ),
                     ),
                   ),    //OTP Text
                 ],
               ),    //OTP Text
               SizedBox(height: 5.h),
               Container(
                 margin: EdgeInsets.only(right: 10.w),
                 child: const TextField(

                   keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                     hintText: 'Enter OTP',
                     border: InputBorder.none


                   ),
                 ),
                 width: 320.w,
                 height: 45.98.h,
                 decoration: ShapeDecoration(
                   color: const Color(0x1A324EDF),
                   shape: RoundedRectangleBorder(
                     side: BorderSide(width: 0.98.w, color: const Color(
                         0xFF324EDF)),
                     borderRadius: BorderRadius.circular(9.78),
                   ),
                 ),
               ),    //OTP Input
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Container(
                     padding:  EdgeInsets.only(left: 30.w, top: 10.h),

                     child: Text(
                       'Resend OTP',
                       textAlign: TextAlign.center,
                       style: TextStyle(
                         color: const Color(0xFF324EDF),
                         fontSize: 10.sp,
                         fontFamily: 'Poppins',
                         fontWeight: FontWeight.w500,
                       ),
                     ),
                   ),    //OTP Text
                 ],
               ),    //Resend OTP Text
               Container(
                 margin: const EdgeInsets.only(top: 30),
                 width: 130,
                 height: 47,
                 padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                 clipBehavior: Clip.antiAlias,
                 decoration: ShapeDecoration(
                   color: const Color(0xFF324EDF),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10),
                   ),
                 ),
                 child: GestureDetector(onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => PhoneVerified(),),);
                 },
                   child: const Row(
                     mainAxisSize: MainAxisSize.min,
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Text(
                         'Next',
                         textAlign: TextAlign.center,
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 18,
                           fontFamily: 'Poppins',
                           fontWeight: FontWeight.w500,
                           height: 0,
                         ),
                       ),
                     ],
                   ),
                 ),
               ),   //Next Button
               SizedBox(height: 10.h),
               Container(
                 margin: EdgeInsets.only(top: 25.h),
                 child: SizedBox(
                   width: 136.w,
                   height: 45.h,
                   child: Text(
                     'Or Sign up with',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       color: const Color(0xFFA8A7A7),
                       fontSize: 12.sp,
                       fontFamily: 'Poppins',
                       fontWeight: FontWeight.w500,
                     ),
                   ),
                 ),
               ),    //Or SignUp with Text
               Container(
                 margin: const EdgeInsets.only(top: 30),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                       margin: const EdgeInsets.all(5),
                       width: 46,
                       height: 46,
                       decoration: ShapeDecoration(
                         color: const Color(0xFFEF4640),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(50),
                         ),
                       ),
                       child: const Image(
                         image: AssetImage('assets/Google.png'),
                       ),
                     ),
                     const SizedBox(width: 10),
                     Container(
                       width: 46,
                       height: 46,
                       decoration: ShapeDecoration(
                         color: Colors.black,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(50),
                         ),
                       ),
                       child: const Image(
                         image: AssetImage('assets/AppleLogo.png'),
                       ),
                     ),
                   ],
                 ),
               ),    //Google and Apple Logo
               SizedBox(height: 40.h),
               Container(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                      Text(
                       'Already have an Account?',
                       textAlign: TextAlign.center,
                       style: TextStyle(
                         color: const Color(0xFFA8A7A7),
                         fontSize: 12.sp,
                         fontFamily: 'Poppins',
                         fontWeight: FontWeight.w500,
                       ),
                     ),
                      const SizedBox(width: 5),
                     GestureDetector(onTap: (){
                       Navigator.popUntil(context, ModalRoute.withName('/'),);
                     },
                       child: Text(
                         'Log in',
                         textAlign: TextAlign.center,
                         style: TextStyle(
                           color: const Color(0xFF324EDF),
                           fontSize: 12.sp,
                           fontFamily: 'Poppins',
                           fontWeight: FontWeight.w500,
                         ),
                       ),
                     ),
                   ],
                 ),
               ),    //Already Have an Account? Login Button


             ])
     ),
   );
  }

}
class EmailPhoneVerified extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 140.w),
              child: const Image(
                  image: AssetImage('assets/Checkmark.png')),
            ),    //Logo
            SizedBox(height: 10.h),
            Container(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Let’s get started!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF324EDF),
                  fontSize: 22.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),    //Let's Get started Text
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 25.w, top: 60.h),

                  child: Text(
                    'Name',
                    style: TextStyle(
                      color: const Color(0xFFA8A7A7),
                      fontSize: 11.74.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),    //Name Text
            SizedBox(height: 5.h),
            Container(
              margin: EdgeInsets.only(right: 10.h),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Name',
                  border: InputBorder.none
                ),
              ),
              width: 320.w,
              height: 45.h,
              decoration: ShapeDecoration(
                color: const Color(0x1A324EDF),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.98.w, color: const Color(0xFF324EDF)),
                  borderRadius: BorderRadius.circular(9.78),
                ),
              ),
            ),    // Name Input
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 25.w, top: 20.h),

                  child: Text(
                    'Email',
                    style: TextStyle(
                      color: const Color(0xFFA8A7A7),
                      fontSize: 11.74.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),    //Email Text
            SizedBox(height: 5.h),
            Container(
              margin: EdgeInsets.only(right: 10.w),
              width: 320.w,
              height: 45.h,
              padding: const EdgeInsets.only(
                top: 16,
                left: 15,
                right: 15, // Adjusted to allow space for the image
                bottom: 16,
              ),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: const Color(0x1A324EDF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFF324EDF)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'someone@gmail.com',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFA8A7A7),
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  Container(
                    decoration: const ShapeDecoration(
                      color: Color(0xFF003C43),
                      shape: OvalBorder(),
                    ),
                    child: Image.asset(
                      'assets/Done.png', // Replace with your actual asset path
                      width: 20, // Adjust the width as needed
                      height: 20, // Adjust the height as needed
                    ),
                  ),
                ],
              ),
            ),    //Email  Verified
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 25.w, top: 20.h),

                    child: Text(
                      'Phone Number',
                      style: TextStyle(
                        color: const Color(0xFFA8A7A7),
                        fontSize: 11.74.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),    //Phone no text

            SizedBox(height: 5.h),
            Container(
              margin: EdgeInsets.only(right: 10.w),
              child: TextField(

                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'Enter Phone Number',
                    border: InputBorder.none,
                    suffix: GestureDetector(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PhoneVerify()),);
                    },
                      child: Padding(
                        padding:  EdgeInsets.only(right: 5.w),
                        child: Container(
                            child:  Text(
                              'Verify',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color(0xFF324EDF),
                                fontSize: 10.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                        ),
                      ),
                    )

                ),
              ),
              width: 320.w,
              height: 45.h,
              decoration: ShapeDecoration(
                color: const Color(0x1A324EDF),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.98.w, color: const Color(0xFF324EDF)),
                  borderRadius: BorderRadius.circular(9.78),
                ),
              ),
            ),    //Phone no input and verify text
            Container(
              margin: const EdgeInsets.only(top: 30),
              width: 130,
              height: 47,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: const Color(0xFF324EDF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Next',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ],
                ),

            ),    //Next Button

            Container(
              margin: EdgeInsets.only(top: 25.h),
              child: SizedBox(
                width: 136.w,
                height: 45.h,
                child: Text(
                  'Or Sign up with',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFFA8A7A7),
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),    //Or SignUp with Text
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    width: 46,
                    height: 46,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFEF4640),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Image(
                      image: AssetImage('assets/Google.png'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 46,
                    height: 46,
                    decoration: ShapeDecoration(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Image(
                      image: AssetImage('assets/AppleLogo.png'),
                    ),
                  ),
                ],
              ),
            ),    ////Google and Apple Logo
            SizedBox(height: 20.h),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
                    'Already have an Account?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFFA8A7A7),
                      fontSize: 12.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(onTap: (){
                    Navigator.pop(context, MaterialPageRoute(builder: (context) => const MyHomePage(title:'')),);
                  },
                    child: Text(
                      'Log in',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF324EDF),
                        fontSize: 12.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),    //Already Have an Account? Login Button

          ],
        ),
      ),
    );
  }
}
class PhoneVerified extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 140.w),
              child: const Image(
                  image: AssetImage('assets/Checkmark.png')),
            ),    //Logo
            SizedBox(height: 10.h),
            Container(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Let’s get started!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF324EDF),
                  fontSize: 22.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),    //Let's Get started Text
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding:  EdgeInsets.only(left: 25.w, top: 60.h),

                    child: Text(
                      'Name',
                      style: TextStyle(
                        color: const Color(0xFFA8A7A7),
                        fontSize: 11.74.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),    //Name Text
            SizedBox(height: 5.h),
            Container(
              margin: EdgeInsets.only(right: 10.w),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Name'
                ),
              ),
              width: 320.w,
              height: 45.h,
              decoration: ShapeDecoration(
                color: const Color(0x1A324EDF),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.98.w, color: const Color(0xFF324EDF)),
                  borderRadius: BorderRadius.circular(9.78),
                ),
              ),
            ),    // Name Input
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 25.w, top: 20),

                    child: Text(
                      'Email',
                      style: TextStyle(
                        color: const Color(0xFFA8A7A7),
                        fontSize: 11.74.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),    //Email Text
            SizedBox(height: 5.h),
            Container(
              margin: EdgeInsets.only(right: 10.w),
              width: 320.w,
              height: 45.h,
              padding: const EdgeInsets.only(
                top: 16,
                left: 15,
                right: 15, // Adjusted to allow space for the image
                bottom: 16,
              ),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: const Color(0x1A324EDF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFF324EDF)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'someone@gmail.com',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFA8A7A7),
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    decoration: const ShapeDecoration(
                      color: Color(0xFF003C43),
                      shape: OvalBorder(),
                    ),
                    child: Image.asset(
                      'assets/Done.png', // Replace with your actual asset path
                      width: 20, // Adjust the width as needed
                      height: 20, // Adjust the height as needed
                    ),
                  ),
                ],
              ),
            ),    //Email E Verified
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 25.w, top: 20.h),

                    child: Text(
                      'Phone Number',
                      style: TextStyle(
                        color: const Color(0xFFA8A7A7),
                        fontSize: 11.74.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),    //Phone no text

            SizedBox(height: 5.h),
            Container(
              margin: EdgeInsets.only(right: 10.w),
              width: 320.w,
              height: 45.h,
              padding: const EdgeInsets.only(
                top: 16,
                left: 15,
                right: 15, // Adjusted to allow space for the image
                bottom: 16,
              ),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: const Color(0x1A324EDF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFF324EDF)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    '+91 1000-2000-30',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFA8A7A7),
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    decoration: const ShapeDecoration(
                      color: Color(0xFF003C43),
                      shape: OvalBorder(),
                    ),
                    child: Image.asset(
                      'assets/Done.png', // Replace with your actual asset path
                      width: 20, // Adjust the width as needed
                      height: 20, // Adjust the height as needed
                    ),
                  ),
                ],
              ),
            ),    //Phone Verified
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: 130,
              height: 47,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: const Color(0xFF324EDF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              child: GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CreatPassword()));
              },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Next',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),

            ),    //Next Button

            Container(
              margin: EdgeInsets.only(top: 20.h),
              child:  SizedBox(
                width: 136.w,
                height: 45,
                child: Text(
                  'Or Sign up with',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFFA8A7A7),
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),    //Or SignUp with Text
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    width: 46,
                    height: 46,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFEF4640),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Image(
                      image: AssetImage('assets/Google.png'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 46,
                    height: 46,
                    decoration: ShapeDecoration(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Image(
                      image: AssetImage('assets/AppleLogo.png'),
                    ),
                  ),
                ],
              ),
            ),    //Google and Apple Logo
            SizedBox(height: 30.h),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
                    'Already have an Account?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFFA8A7A7),
                      fontSize: 12.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(onTap: (){
                    Navigator.pop(context, MaterialPageRoute(builder: (context) => const MyHomePage(title:'')),);
                  },
                    child: Text(
                      'Log in',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF324EDF),
                        fontSize: 12.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),    //Already Have an Account? Login Button

          ],
        ),
      ),
    );
  }
}
class homePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Deliver to',
                style: TextStyle(
                  color: const Color(0x80324EDF),
                  fontSize: 12.87.sp,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),    //Deliver to Text
              GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Location(),));
              },
                //width: 160.74.w,
                //height: 19.31.h,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Select Your Location',
                      style: TextStyle(
                        color: const Color(0xFF989DA3),
                        fontSize: 14.48.sp,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 2.w),
                    GestureDetector(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Location(),));
                    },
                      child: Container(
                        width: 25.31.w,
                        height: 25.31.h,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(),
                        child: SvgPicture.asset('assets/svg/ArrowDown.svg'),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 140.w)),
                        Container(
                          width: 24,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          ),
                          child: SvgPicture.asset('assets/svg/Bell.svg'),
                        )
                      ],
                    )   //Notification Icon
                  ],
                ),),    //Select Location Text, ArrowDown SVG and Notification SVG
              SizedBox(height: 19.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 270.w,
                        height: 50.h,
                        child: const TextField(
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage('assets/Search.png'),
                              ),
                            ),
                            hintText: 'Search',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(color: Color(0x7F676767)),
                            ),
                          ),
                        ),
                      ),    //Search Box and Search Icon
                      SizedBox(width: 10.w),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 54.w,
                            height: 54.h,
                            padding: const EdgeInsets.all(16),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: const Color(0xFF324EDF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 22,
                                  height: 22,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/Slider.png'),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )   //Slider Button
                    ],
                  ),
                ],
              ),
              SizedBox(height: 13.w),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  padding: EdgeInsets.only(right: 40),
                  width: 370.w,
                  height: 204.h,
                  color: Color(0xD2000000),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/Banner.png'))
                    ],
                  ),
                ),
              ),    //Banner 25% OF
              SizedBox(height: 13.h),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 10.w)),
                  Text(
                    'Today’s Special',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23.50.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 108.w),
                  Text(
                    'See All',
                    style: TextStyle(
                      color: Color(0xFF324EDF),
                      fontSize: 12.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  )
                ],
              ),    //Today's Special
              SizedBox(height: 12.h), // SizedBox(height: 11.h),
              Row(
                children: [
                  Container(
                    width: 160.21.w,
                    height: 212.15.h,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.07, color: Colors.white),
                        borderRadius: BorderRadius.circular(10.68),
                      ),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          child:
                          Image(image: AssetImage('assets/Pizza.png')),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                        ), // Image
                        Positioned(
                          left: 12.82.w,
                          top: 105.35.h,
                          child: Text(
                            'Veg thali',
                            style: TextStyle(
                              color: Color(0xFF1F1F1F),
                              fontSize: 16.02.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 12.82.w,
                          top: 180.11.h,
                          child: Text(
                            'Rs. 140.0',
                            style: TextStyle(
                              color: Color(0xFF1F1F1F),
                              fontSize: 13.88.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 12.82.w,
                          top: 130.18.h,
                          child: SizedBox(
                            width: 134.57.w,
                            child: Text(
                              'Veg thali is a very delicious dish of rice. Veg thali is a very delicious dish of rice.',
                              style: TextStyle(
                                color: Color(0xFF1F1F1F),
                                fontSize: 7.48.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 126.03.w, top: 180.11.h),
                          child: Container(
                            padding: const EdgeInsets.all(5.34),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Color(0xFF324DDE),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3.20),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset('assets/svg/Plus.svg'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 14.w),
                  Row(
                    children: [
                      Container(
                        width: 160.21.w,
                        height: 212.15.h,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1.07, color: Colors.white),
                            borderRadius: BorderRadius.circular(10.68),
                          ),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              child:
                              Image(image: AssetImage('assets/Pizza.png')),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                            ), // Image
                            Positioned(
                              left: 12.82.w,
                              top: 105.35.h,
                              child: Text(
                                'Veg thali',
                                style: TextStyle(
                                  color: Color(0xFF1F1F1F),
                                  fontSize: 16.02.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 12.82.w,
                              top: 180.11.h,
                              child: Text(
                                'Rs. 140.0',
                                style: TextStyle(
                                  color: Color(0xFF1F1F1F),
                                  fontSize: 13.88.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 12.82.w,
                              top: 130.18.h,
                              child: SizedBox(
                                width: 134.57.w,
                                child: Text(
                                  'Veg thali is a very delicious dish of rice. Veg thali is a very delicious dish of rice.',
                                  style: TextStyle(
                                    color: Color(0xFF1F1F1F),
                                    fontSize: 7.48.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 126.03.w, top: 180.11.h),
                              child: Container(
                                padding: const EdgeInsets.all(5.34),
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF324DDE),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3.20),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset('assets/svg/Plus.svg'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )],),    //Veg thali Images, SVG and Texts
              SizedBox(height: 10.h),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 10.w),
                    child: Text(
                      'Popular Food',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23.50,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(width: 145.w),
                  Text(
                    'See All',
                    style: TextStyle(
                      color: Color(0xFF324EDF),
                      fontSize: 12.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  )
                ],
              ),    //Popular Food
              SizedBox(height: 12.h),
              Row(
                children: [
                  Container(
                    width: 160.21.w,
                    height: 212.15.h,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.07, color: Colors.white),
                        borderRadius: BorderRadius.circular(10.68),
                      ),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          child:
                          Image(image: AssetImage('assets/Pizza.png')),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                        ), // Image
                        Positioned(
                          left: 12.82.w,
                          top: 105.35.h,
                          child: Text(
                            'Veg thali',
                            style: TextStyle(
                              color: Color(0xFF1F1F1F),
                              fontSize: 16.02.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 12.82.w,
                          top: 180.11.h,
                          child: Text(
                            'Rs. 140.0',
                            style: TextStyle(
                              color: Color(0xFF1F1F1F),
                              fontSize: 13.88.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 12.82.w,
                          top: 130.18.h,
                          child: SizedBox(
                            width: 134.57.w,
                            child: Text(
                              'Veg thali is a very delicious dish of rice. Veg thali is a very delicious dish of rice.',
                              style: TextStyle(
                                color: Color(0xFF1F1F1F),
                                fontSize: 7.48.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 126.03.w, top: 180.11.h),
                          child: Container(
                            padding: const EdgeInsets.all(5.34),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Color(0xFF324DDE),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3.20),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset('assets/svg/Plus.svg'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 14.w),
                  Row(
                    children: [
                      Container(
                        width: 160.21.w,
                        height: 212.15.h,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1.07, color: Colors.white),
                            borderRadius: BorderRadius.circular(10.68),
                          ),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              child:
                              Image(image: AssetImage('assets/Pizza.png')),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                            ), // Image
                            Positioned(
                              left: 12.82.w,
                              top: 105.35.h,
                              child: Text(
                                'Veg thali',
                                style: TextStyle(
                                  color: Color(0xFF1F1F1F),
                                  fontSize: 16.02.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 12.82.w,
                              top: 180.11.h,
                              child: Text(
                                'Rs. 140.0',
                                style: TextStyle(
                                  color: Color(0xFF1F1F1F),
                                  fontSize: 13.88.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 12.82.w,
                              top: 130.18.h,
                              child: SizedBox(
                                width: 134.57.w,
                                child: Text(
                                  'Veg thali is a very delicious dish of rice. Veg thali is a very delicious dish of rice.',
                                  style: TextStyle(
                                    color: Color(0xFF1F1F1F),
                                    fontSize: 7.48.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 126.03.w, top: 180.11.h),
                              child: Container(
                                padding: const EdgeInsets.all(5.34),
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF324DDE),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3.20),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset('assets/svg/Plus.svg'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )],),   //Veg thali Images, SVG and Texts
              Row(
                children: [
                  Container(
                    width: 160.21.w,
                    height: 212.15.h,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.07, color: Colors.white),
                        borderRadius: BorderRadius.circular(10.68),
                      ),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          child:
                          Image(image: AssetImage('assets/Pizza.png')),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                        ), // Image
                        Positioned(
                          left: 12.82.w,
                          top: 105.35.h,
                          child: Text(
                            'Veg thali',
                            style: TextStyle(
                              color: Color(0xFF1F1F1F),
                              fontSize: 16.02.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 12.82.w,
                          top: 180.11.h,
                          child: Text(
                            'Rs. 140.0',
                            style: TextStyle(
                              color: Color(0xFF1F1F1F),
                              fontSize: 13.88.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 12.82.w,
                          top: 130.18.h,
                          child: SizedBox(
                            width: 134.57.w,
                            child: Text(
                              'Veg thali is a very delicious dish of rice. Veg thali is a very delicious dish of rice.',
                              style: TextStyle(
                                color: Color(0xFF1F1F1F),
                                fontSize: 7.48.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 126.03.w, top: 180.11.h),
                          child: Container(
                            padding: const EdgeInsets.all(5.34),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Color(0xFF324DDE),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3.20),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset('assets/svg/Plus.svg'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 14.w),
                  Row(
                    children: [
                      Container(
                        width: 160.21.w,
                        height: 212.15.h,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1.07, color: Colors.white),
                            borderRadius: BorderRadius.circular(10.68),
                          ),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              child:
                              Image(image: AssetImage('assets/Pizza.png')),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                            ), // Image
                            Positioned(
                              left: 12.82.w,
                              top: 105.35.h,
                              child: Text(
                                'Veg thali',
                                style: TextStyle(
                                  color: Color(0xFF1F1F1F),
                                  fontSize: 16.02.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 12.82.w,
                              top: 180.11.h,
                              child: Text(
                                'Rs. 140.0',
                                style: TextStyle(
                                  color: Color(0xFF1F1F1F),
                                  fontSize: 13.88.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 12.82.w,
                              top: 130.18.h,
                              child: SizedBox(
                                width: 134.57.w,
                                child: Text(
                                  'Veg thali is a very delicious dish of rice. Veg thali is a very delicious dish of rice.',
                                  style: TextStyle(
                                    color: Color(0xFF1F1F1F),
                                    fontSize: 7.48.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 126.03.w, top: 180.11.h),
                              child: Container(
                                padding: const EdgeInsets.all(5.34),
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF324DDE),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3.20),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset('assets/svg/Plus.svg'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )],),   //Veg thali Images, SVG and Texts
              Row(
                children: [
                  Container(
                    width: 160.21.w,
                    height: 212.15.h,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.07, color: Colors.white),
                        borderRadius: BorderRadius.circular(10.68),
                      ),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          child:
                          Image(image: AssetImage('assets/Pizza.png')),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                        ), // Image
                        Positioned(
                          left: 12.82.w,
                          top: 105.35.h,
                          child: Text(
                            'Veg thali',
                            style: TextStyle(
                              color: Color(0xFF1F1F1F),
                              fontSize: 16.02.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 12.82.w,
                          top: 180.11.h,
                          child: Text(
                            'Rs. 140.0',
                            style: TextStyle(
                              color: Color(0xFF1F1F1F),
                              fontSize: 13.88.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 12.82.w,
                          top: 130.18.h,
                          child: SizedBox(
                            width: 134.57.w,
                            child: Text(
                              'Veg thali is a very delicious dish of rice. Veg thali is a very delicious dish of rice.',
                              style: TextStyle(
                                color: Color(0xFF1F1F1F),
                                fontSize: 7.48.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 126.03.w, top: 180.11.h),
                          child: Container(
                            padding: const EdgeInsets.all(5.34),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Color(0xFF324DDE),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3.20),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset('assets/svg/Plus.svg'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 14.w),
                  Row(
                    children: [
                      Container(
                        width: 160.21.w,
                        height: 212.15.h,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1.07, color: Colors.white),
                            borderRadius: BorderRadius.circular(10.68),
                          ),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              child:
                              Image(image: AssetImage('assets/Pizza.png')),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                            ), // Image
                            Positioned(
                              left: 12.82.w,
                              top: 105.35.h,
                              child: Text(
                                'Veg thali',
                                style: TextStyle(
                                  color: Color(0xFF1F1F1F),
                                  fontSize: 16.02.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 12.82.w,
                              top: 180.11.h,
                              child: Text(
                                'Rs. 140.0',
                                style: TextStyle(
                                  color: Color(0xFF1F1F1F),
                                  fontSize: 13.88.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 12.82.w,
                              top: 130.18.h,
                              child: SizedBox(
                                width: 134.57.w,
                                child: Text(
                                  'Veg thali is a very delicious dish of rice. Veg thali is a very delicious dish of rice.',
                                  style: TextStyle(
                                    color: Color(0xFF1F1F1F),
                                    fontSize: 7.48.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 126.03.w, top: 180.11.h),
                              child: Container(
                                padding: const EdgeInsets.all(5.34),
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF324DDE),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3.20),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset('assets/svg/Plus.svg'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )],),   //Veg thali Images, SVG and Texts

            ] ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(backgroundColor: Colors.transparent,
       color: Color(0xFF324EDF),
        animationDuration: Duration(milliseconds: 200),
        items: [
        SvgPicture.asset('assets/svg/Home.svg'),
        Image.asset('assets/Slider.png'),
        Image.asset('assets/Shopping.png'),
        Image.asset('assets/Account.png'),

      ],),
    );
  }
}
class ForgetPassword extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
              child: const Image(
                  image: AssetImage('assets/Checkmark.png')),
            ),    //Logo
            SizedBox(height: 10.h),
            Container(
              alignment: AlignmentDirectional.center,
              child:  Text(
                'Verify Your Email/Phone',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF324EDF),
                  fontSize: 22.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),    //Verify your email/phone Text
            SizedBox(height: 35.h),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding:  EdgeInsets.only(left: 25.w),

                    child:  Text(
                      'Email/Phone',
                      style: TextStyle(
                        color: const Color(0xFFA8A7A7),
                        fontSize: 11.74.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),    //Email/Phone Text
            SizedBox(height: 5.h),
            Container(
              margin:  EdgeInsets.only(right: 10.w),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Email/Phone',
                    suffix: Container(
                        child:  Padding(
                          padding: EdgeInsets.only(right: 5.w),
                          child: Text(
                            'Send',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color(0xFF324EDF),
                              fontSize: 10.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),

                    ),border: InputBorder.none
                ),
              ),
              width: 320.w,
              height: 45.h,
              decoration: ShapeDecoration(
                color: const Color(0x1A324EDF),
                shape: RoundedRectangleBorder(
                  side:  BorderSide(width: 0.98.w, color: const Color(0xFF324EDF)),
                  borderRadius: BorderRadius.circular(9.78),
                ),
              ),
            ),    //Email/Phone Input and Send button
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding:  EdgeInsets.only(left: 25.w, top: 20.h),

                    child: Text(
                      'OTP',
                      style: TextStyle(
                        color: const Color(0xFFA8A7A7),
                        fontSize: 11.74.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),    //OTP Text
            SizedBox(height: 5.h),
            Container(
              margin: EdgeInsets.only(right: 10.w),
              child: const TextField(

                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'Enter OTP',
                  border: InputBorder.none
                ),
              ),
              width: 320.w,
              height: 45.h,
              decoration: ShapeDecoration(
                color: const Color(0x1A324EDF),
                shape: RoundedRectangleBorder(
                  side:  BorderSide(width: 0.98.w, color: const Color(0xFF324EDF)),
                  borderRadius: BorderRadius.circular(9.78),
                ),
              ),
            ),    //OTP input
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 25.w, top: 10.h),

                    child: Text(
                      'Resend OTP',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF324EDF),
                        fontSize: 10.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),    //OTP Text
                ],
              ),
            ),    //Resend OTP
            SizedBox(height: 25.h),
            Container(
              margin: const EdgeInsets.only(top: 30),
              width: 130,
              height: 47,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: const Color(0xFF324EDF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: GestureDetector(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CreatPassword()));
              },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Submit',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ),   //Submit Button
            Container(
              margin: EdgeInsets.only(top: 25.h),
              child: SizedBox(
                width: 136.w,
                height: 45.h,
                child: Text(
                  'Or Sign up with',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFFA8A7A7),
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),    //Or SignUp with Text
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    width: 46,
                    height: 46,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFEF4640),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Image(
                      image: AssetImage('assets/Google.png'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 46,
                    height: 46,
                    decoration: ShapeDecoration(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Image(
                      image: AssetImage('assets/AppleLogo.png'),
                    ),
                  ),
                ],
              ),
            ),    //Google and Apple Logo
            SizedBox(height: 30.h),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
                    'Already have an Account?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFFA8A7A7),
                      fontSize: 12.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 5.w),
                  GestureDetector(onTap: (){
                    Navigator.pop(context, MaterialPageRoute(builder: (context) => const MyHomePage(title:'')),);
                  },
                    child: Text(
                      'Log in',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF324EDF),
                        fontSize: 12.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),    //Already Have an Account? Login Button

          ],
        ),
      ),
    );
  }
}
class CreatPassword extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin:  EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
              child: const Image(
                  image: AssetImage('assets/Checkmark.png')),
            ),    //Logo
            SizedBox(height: 10.h),
            Container(
              child: Text(
                'Create Password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF324EDF),
                  fontSize: 22.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),    //Create Password
            Container(
              margin:  EdgeInsets.only(top: 80.h, right: 210.w),
              child:  Text(
                'Create new password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFFA8A7A7),
                  fontSize: 12.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),    //Create new password Text
            Container(
              margin: EdgeInsets.only(right: 10.w, top: 5.h),
              width: 320.w,
              height: 45.h,
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  border: InputBorder.none
                ),
              ),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: const Color(0x1A324EDF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFF324EDF)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),    //Password Input
            Container(
              margin: EdgeInsets.only(top: 20.h, right: 225.w),
              child:  Text(
                'Confirm Password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFFA8A7A7),
                  fontSize: 12.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),    //Confirm Password Text
            Container(
              margin: EdgeInsets.only(right: 10.w, top: 5.h),
              width: 320.w,
              height: 45.h,
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Re-Enter Password',
                  border: InputBorder.none
                ),
              ),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: const Color(0x1A324EDF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFF324EDF)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),    //Re-Enter Password input
            Container(
              margin: const EdgeInsets.only(top: 80),
              width: 130,
              height: 47,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: const Color(0xFF324EDF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: GestureDetector(onTap: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Next',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ),    //Next Button
            Container(
              margin:  EdgeInsets.only(top: 25.h),
              child: SizedBox(
                width: 136.w,
                height: 45.h,
                child: Text(
                  'Or Log in with',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFFA8A7A7),
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),    //Or Log in With Text
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    width: 46,
                    height: 46,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFEF4640),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Image(
                      image: AssetImage('assets/Google.png'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 46,
                    height: 46,
                    decoration: ShapeDecoration(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Image(
                      image: AssetImage('assets/AppleLogo.png'),
                    ),
                  ),
                ],
              ),
            ),    //Google and Apple Logo
            SizedBox(height: 30.h),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
                    'Already have an Account?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFFA8A7A7),
                      fontSize: 12.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()),);
                  },
                    child: Text(
                      'Log in',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF324EDF),
                        fontSize: 12.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),    //Already have an Account? Log in Button
          ],
        ),
      ),
    );
  }
}
class Location extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Locations',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF0D1217),
            fontSize: 22,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 12.w),
            width: 345.w,
            height: 96.h,
            padding: const EdgeInsets.only(
              top: 16,
              left: 24,
              right: 16,
              bottom: 16,
            ),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFE9EAEB)),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding:  EdgeInsets.only(left: 12.w),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Office',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF0D1217),
                              fontSize: 16.sp,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          SizedBox(
                            width: double.infinity,
                            child: Text(
                              '221B Baker Street, London, United Kingdom',
                              style: TextStyle(
                                color: Color(0xFF0D1217),
                                fontSize: 12.sp,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Icon(Icons.radio_button_unchecked),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            margin: EdgeInsets.only(left: 12.w),
            width: 345.w,
            height: 96.h,
            padding: const EdgeInsets.only(
              top: 16,
              left: 24,
              right: 16,
              bottom: 16,
            ),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFE9EAEB)),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding:  EdgeInsets.only(left: 12.w),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Office',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF0D1217),
                              fontSize: 16.sp,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          SizedBox(
                            width: double.infinity,
                            child: Text(
                              '221B Baker Street, London, United Kingdom',
                              style: TextStyle(
                                color: Color(0xFF0D1217),
                                fontSize: 12.sp,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Icon(Icons.radio_button_checked),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.h),
          GestureDetector( onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => AddNewLocation(),));
          },
            child: Container(
              margin: EdgeInsets.only(left: 12.w),
              width: 345.w,
              height: 56.h,
              padding: const EdgeInsets.only(
                top: 16,
                left: 24,
                right: 16,
                bottom: 16,
              ),
              decoration: ShapeDecoration(
                color: Color(0x23324EDF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Icon(Icons.add, color: Color(0xFF324EDF),),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 50.w,
                      child: Text(
                        'Add New Location',
                        style: TextStyle(
                          color: Color(0xFF324EDF),
                          fontSize: 18.sp,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 375.h,left: 12.w),
            child: Container(

              width: 345,
              height: 53,
              padding: const EdgeInsets.symmetric(horizontal: 22),
              decoration: ShapeDecoration(
                color: Color(0x4C324EDF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x0F000000),
                    blurRadius: 12,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Apply',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
class AddNewLocation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add New Location',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF0D1217),
            fontSize: 22.sp,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 6.5.h),
                      width: 370.w,
                      height: 400.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Map.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20.w,
                        top: 30.h,
                        child: Container(
                          width: 40.w,
                          height: 40.h,
                          padding: const EdgeInsets.all(10),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            shadows: [
                              BoxShadow(
                                color: Color(0x14000000),
                                blurRadius: 60,
                                offset: Offset(6, 6),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 20.w,
                                height: 20.h,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: SvgPicture.asset('assets/svg/Location.svg')
                              ),
                            ],
                          ),
                        )
                    )
                  ]
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10.h),
              width: 345.w,
              height: 24.h,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Opacity(
                      opacity: 0.10,
                      child: Container(
                        width: 345.w,
                        height: 24.h,
                        decoration: BoxDecoration(color: Color(0x00C4C4C4)),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 141.83,
                    top: 10,
                    child: Container(
                      width: 61.33.w,
                      height: 4.h,
                      decoration: ShapeDecoration(
                        color: Colors.black.withOpacity(0.20000000298023224),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.h),
              width: 345.w,
              height: 56.h,
              padding: const EdgeInsets.all(16),
              decoration: ShapeDecoration(
                color: Color(0x0C1F2A37),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFE9EAEB)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Your Location',
                          hintStyle: TextStyle(
                            color: Color(0x990D1217),
                            fontSize: 16.sp,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400
                          ),
                        border: InputBorder.none
                      ),
                    )
                  ),
                  GestureDetector(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SelectLocation(),));
                  },
                    child: Container(
                      width: 24.w,
                      height: 24.h,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Icon(Icons.add_location_alt_outlined, color: Color(0x990D1217),),
                    ),
                  ),
                ],
              ),
            ),   //Your Location input and location icon
            Container(
              margin: EdgeInsets.only(top: 16.h),
              width: 345.w,
              height: 56.h,
              padding: const EdgeInsets.all(16),
              decoration: ShapeDecoration(
                color: Color(0x0C1F2A37),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFE9EAEB)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Location Name',
                          hintStyle: TextStyle(
                              color: Color(0x990D1217),
                              fontSize: 16.sp,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400
                          ),
                          border: InputBorder.none
                      ),
                    )
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 60.h),
              width: 345.w,
              height: 53.h,
              padding: const EdgeInsets.symmetric(horizontal: 22),
              decoration: ShapeDecoration(
                color: Color(0x4C324EDF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x0F000000),
                    blurRadius: 12,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Save',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
class SelectLocation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add New Location',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF0D1217),
            fontSize: 22.sp,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 6.5.h),
                        width: 370.w,
                        height: 400.h,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/Map.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                          right: 20.w,
                          top: 30.h,
                          child: Container(
                            width: 40.w,
                            height: 40.h,
                            padding: const EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x14000000),
                                  blurRadius: 60,
                                  offset: Offset(6, 6),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width: 20.w,
                                    height: 20.h,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: SvgPicture.asset('assets/svg/Location.svg')
                                ),
                              ],
                            ),
                          )
                      )
                    ]
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10.h),
              width: 345.w,
              height: 24.h,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Opacity(
                      opacity: 0.10,
                      child: Container(
                        width: 345.w,
                        height: 24.h,
                        decoration: BoxDecoration(color: Color(0x00C4C4C4)),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 141.83,
                    top: 10,
                    child: Container(
                      width: 61.33.w,
                      height: 4.h,
                      decoration: ShapeDecoration(
                        color: Colors.black.withOpacity(0.20000000298023224),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.h),
              width: 345.w,
              height: 56.h,
              padding: const EdgeInsets.all(16),
              decoration: ShapeDecoration(
                color: Color(0x0C1F2A37),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFE9EAEB)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Text(
                        '110 Baker Street, London, United Kingdom',
                        style: TextStyle(
                          color: Color(0xFF0D1217),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      )
                  ),
                  Container(
                    width: 24.w,
                    height: 24.h,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Icon(Icons.add_location_alt_outlined, color: Color(0x990D1217),),
                  ),
                ],
              ),
            ),   //Your Location input and location icon
            Container(
              margin: EdgeInsets.only(top: 16.h),
              width: 345.w,
              height: 56.h,
              padding: const EdgeInsets.all(16),
              decoration: ShapeDecoration(
                color: Color(0x0C1F2A37),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFE9EAEB)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Text(
                        'Office',
                        style: TextStyle(
                          color: Color(0xFF0D1217),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 60.h),
              width: 345.w,
              height: 53.h,
              padding: const EdgeInsets.symmetric(horizontal: 22),
              decoration: ShapeDecoration(
                color: Color(0x4C324EDF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x0F000000),
                    blurRadius: 12,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Save',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}