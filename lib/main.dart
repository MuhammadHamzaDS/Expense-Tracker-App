// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: Scaffold(
// //         body: SafeArea(
// //           child: Container(
// //             height: 100.0,
// //             width: 450.0,
// //             color: Colors.green,
// //             // padding: EdgeInsets.all(10.0),
// //             padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 5.0),
// //             // margin: EdgeInsets.all(30.0),
// //             margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 40.0),
// //             child: Text('Hello World'),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// // lib/main.dart
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Expense Tracker Login',
//       theme: ThemeData(primarySwatch: Colors.deepPurple, useMaterial3: true),
//       home: const LoginPage(),
//     );
//   }
// }

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage>
//     with SingleTickerProviderStateMixin {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _emailCtrl = TextEditingController();
//   final TextEditingController _passCtrl = TextEditingController();
//   bool _obscure = true;
//   late final AnimationController _animCtrl;
//   late final Animation<double> _cardAnim;

//   @override
//   void initState() {
//     super.initState();
//     _animCtrl = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 700),
//     );
//     _cardAnim = CurvedAnimation(parent: _animCtrl, curve: Curves.easeOutBack);
//     _animCtrl.forward();
//   }

//   @override
//   void dispose() {
//     _animCtrl.dispose();
//     _emailCtrl.dispose();
//     _passCtrl.dispose();
//     super.dispose();
//   }

//   void _tryLogin() {
//     if (_formKey.currentState!.validate()) {
//       // Demo: show snackbar — replace with real auth.
//       ScaffoldMessenger.of(
//         context,
//       ).showSnackBar(const SnackBar(content: Text('Login successful (demo)!')));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;

//     return Scaffold(
//       // Gradient background with subtle shapes for "zalim" vibe
//       body: Stack(
//         children: [
//           Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Color(0xFF0F172A), Color(0xFF4C1D95)],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//               ),
//             ),
//           ),

//           // Decorative glowing circles
//           Positioned(
//             top: -size.width * .2,
//             left: -size.width * .15,
//             child: Container(
//               width: size.width * .6,
//               height: size.width * .6,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 gradient: RadialGradient(
//                   colors: [Colors.purple.withOpacity(.25), Colors.transparent],
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             bottom: -size.width * .25,
//             right: -size.width * .2,
//             child: Container(
//               width: size.width * .7,
//               height: size.width * .7,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 gradient: RadialGradient(
//                   colors: [
//                     Colors.deepPurpleAccent.withOpacity(.18),
//                     Colors.transparent,
//                   ],
//                 ),
//               ),
//             ),
//           ),

//           // Center card
//           Center(
//             child: ScaleTransition(
//               scale: _cardAnim,
//               child: Container(
//                 width: size.width * (size.width > 500 ? .45 : .9),
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 28,
//                   vertical: 28,
//                 ),
//                 decoration: BoxDecoration(
//                   // glassmorphism effect
//                   color: Colors.white.withOpacity(0.06),
//                   borderRadius: BorderRadius.circular(22),
//                   border: Border.all(color: Colors.white.withOpacity(0.08)),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.35),
//                       blurRadius: 20,
//                       offset: const Offset(0, 8),
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     // Header
//                     Row(
//                       children: [
//                         Container(
//                           padding: const EdgeInsets.all(12),
//                           decoration: BoxDecoration(
//                             color: Colors.white.withOpacity(0.08),
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: const Icon(
//                             Icons.lock_outline,
//                             color: Colors.white,
//                             size: 28,
//                           ),
//                         ),
//                         const SizedBox(width: 12),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: const [
//                             Text(
//                               'Welcome back,',
//                               style: TextStyle(
//                                 color: Colors.white70,
//                                 fontSize: 14,
//                               ),
//                             ),
//                             SizedBox(height: 4),
//                             Text(
//                               'Zalim Login',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 22,
//                                 fontWeight: FontWeight.w700,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),

//                     const SizedBox(height: 20),

//                     // Form
//                     Form(
//                       key: _formKey,
//                       child: Column(
//                         children: [
//                           // Email
//                           TextFormField(
//                             controller: _emailCtrl,
//                             style: const TextStyle(color: Colors.white),
//                             keyboardType: TextInputType.emailAddress,
//                             decoration: _inputDecoration(
//                               hint: 'Email',
//                               icon: Icons.email_outlined,
//                             ),
//                             validator: (v) {
//                               if (v == null || v.trim().isEmpty)
//                                 return 'Please enter email';
//                               final emailRegex = RegExp(
//                                 r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
//                               );
//                               if (!emailRegex.hasMatch(v.trim()))
//                                 return 'Sahi email do';
//                               return null;
//                             },
//                           ),
//                           const SizedBox(height: 12),

//                           // Password
//                           TextFormField(
//                             controller: _passCtrl,
//                             obscureText: _obscure,
//                             style: const TextStyle(color: Colors.white),
//                             decoration: _inputDecoration(
//                               hint: 'Password',
//                               icon: Icons.lock_outline,
//                               suffix: IconButton(
//                                 onPressed: () =>
//                                     setState(() => _obscure = !_obscure),
//                                 icon: Icon(
//                                   _obscure
//                                       ? Icons.visibility_off
//                                       : Icons.visibility,
//                                   color: Colors.white70,
//                                 ),
//                               ),
//                             ),
//                             validator: (v) {
//                               if (v == null || v.isEmpty)
//                                 return 'Password daal bhai';
//                               if (v.length < 6)
//                                 return 'Kam se kam 6 characters';
//                               return null;
//                             },
//                           ),

//                           // Forgot & Remember row
//                           const SizedBox(height: 8),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Row(
//                                 children: [
//                                   Checkbox(
//                                     value: true,
//                                     onChanged: (_) {},
//                                     activeColor: Colors.deepPurpleAccent,
//                                   ),
//                                   const Text(
//                                     'Remember',
//                                     style: TextStyle(color: Colors.white70),
//                                   ),
//                                 ],
//                               ),
//                               TextButton(
//                                 onPressed: () {
//                                   // forgot flow
//                                   ScaffoldMessenger.of(context).showSnackBar(
//                                     const SnackBar(
//                                       content: Text(
//                                         'Reset password flow (demo)',
//                                       ),
//                                     ),
//                                   );
//                                 },
//                                 child: const Text(
//                                   'Forgot?',
//                                   style: TextStyle(
//                                     color: Colors.deepPurpleAccent,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),

//                           const SizedBox(height: 10),

//                           // Login button
//                           SizedBox(
//                             width: double.infinity,
//                             height: 52,
//                             child: ElevatedButton(
//                               onPressed: _tryLogin,
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.deepPurpleAccent,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(14),
//                                 ),
//                                 elevation: 6,
//                               ),
//                               child: const Text(
//                                 'Login',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                             ),
//                           ),

//                           const SizedBox(height: 14),

//                           // OR divider
//                           Row(
//                             children: const [
//                               Expanded(child: Divider(color: Colors.white12)),
//                               Padding(
//                                 padding: EdgeInsets.symmetric(horizontal: 8),
//                                 child: Text(
//                                   'OR',
//                                   style: TextStyle(color: Colors.white54),
//                                 ),
//                               ),
//                               Expanded(child: Divider(color: Colors.white12)),
//                             ],
//                           ),

//                           const SizedBox(height: 12),

//                           // Social buttons
//                           Row(
//                             children: [
//                               Expanded(
//                                 child: OutlinedButton.icon(
//                                   onPressed: () {},
//                                   icon: const Icon(
//                                     Icons.apple,
//                                     color: Colors.white,
//                                   ),
//                                   label: const Text(
//                                     'Apple',
//                                     style: TextStyle(color: Colors.white),
//                                   ),
//                                   style: OutlinedButton.styleFrom(
//                                     side: const BorderSide(
//                                       color: Colors.white12,
//                                     ),
//                                     backgroundColor: Colors.white.withOpacity(
//                                       0.02,
//                                     ),
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(12),
//                                     ),
//                                     padding: const EdgeInsets.symmetric(
//                                       vertical: 12,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(width: 10),
//                               Expanded(
//                                 child: OutlinedButton.icon(
//                                   onPressed: () {},
//                                   icon: const Icon(
//                                     Icons.login,
//                                     color: Colors.white,
//                                   ),
//                                   label: const Text(
//                                     'Google',
//                                     style: TextStyle(color: Colors.white),
//                                   ),
//                                   style: OutlinedButton.styleFrom(
//                                     side: const BorderSide(
//                                       color: Colors.white12,
//                                     ),
//                                     backgroundColor: Colors.white.withOpacity(
//                                       0.02,
//                                     ),
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(12),
//                                     ),
//                                     padding: const EdgeInsets.symmetric(
//                                       vertical: 12,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),

//                           const SizedBox(height: 14),

//                           // Sign up hint
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               const Text(
//                                 "Don't have an account? ",
//                                 style: TextStyle(color: Colors.white70),
//                               ),
//                               GestureDetector(
//                                 onTap: () {
//                                   ScaffoldMessenger.of(context).showSnackBar(
//                                     const SnackBar(
//                                       content: Text('Sign up flow (demo)'),
//                                     ),
//                                   );
//                                 },
//                                 child: const Text(
//                                   'Sign up',
//                                   style: TextStyle(
//                                     color: Colors.deepPurpleAccent,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   InputDecoration _inputDecoration({
//     required String hint,
//     required IconData icon,
//     Widget? suffix,
//   }) {
//     return InputDecoration(
//       hintText: hint,
//       hintStyle: TextStyle(color: Colors.white.withOpacity(0.65)),
//       prefixIcon: Icon(icon, color: Colors.white70),
//       suffixIcon: suffix,
//       filled: true,
//       fillColor: Colors.white.withOpacity(0.03),
//       contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(14),
//         borderSide: BorderSide(color: Colors.white.withOpacity(0.04)),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(14),
//         borderSide: BorderSide(color: Colors.deepPurpleAccent.withOpacity(0.9)),
//       ),
//       errorStyle: const TextStyle(color: Colors.orangeAccent),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage());
  }
}
