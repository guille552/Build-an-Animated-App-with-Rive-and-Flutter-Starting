import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'sign_in_form.dart';

Future<Object?> customSigninDialog(BuildContext context, {required ValueChanged onClosed}) {
    return showGeneralDialog(
      barrierDismissible: true,
      barrierLabel: "Sign in",
      context: context,
      transitionDuration: const Duration(milliseconds: 400),
      transitionBuilder: (_, animation, __, child) {
        Tween<Offset> tween;
        tween = Tween(begin: const Offset(0, -1), end: Offset.zero);
        return SlideTransition(
          position: tween.animate(
            CurvedAnimation(parent: animation, curve: Curves.easeInOut),
          ),
          child: child,
        );
      },
      pageBuilder: (context, _, __) => Center(
        child: Container(
          height: 620,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
          decoration: BoxDecoration(
            color: Colors.white60.withOpacity(0.94),
              borderRadius:
              const BorderRadius.all(Radius.circular(40)
            )
          ),
          
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              clipBehavior: Clip.none,
              children: [
                Column(
                  children: [
                    const Text("Sign in", 
                      style: TextStyle(
                        fontSize: 34, 
                        fontFamily: "Poppins",
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 16),
                      child: Text(
                        "Ullamco irure labore aliqua est dolore ex culpa et. Ut mollit est esse laboris ea sint aute amet commodo elit aute tempor eiusmod aliqua. Amet deserunt id proident qui aute pariatur in. Eu anim mollit do sit sunt non ad anim commodo voluptate. Eiusmod eiusmod anim ad ea ea proident et dolor ut exercitation laboris.",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SignInForm(),
                    Row(
                      children: const [
                        Expanded(child: Divider()),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            "OR", 
                            style: TextStyle(
                              color: Colors.black26
                            ),
                          ),
                        ),
                        Expanded(child: Divider()),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 24),
                      child: Text(
                        "Sign Up with email, apple or google", 
                        style: TextStyle(
                          color: Colors.black54
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: 
                      MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {}, 
                          icon: SvgPicture.asset(
                            "assets/icons/email_box.svg", height: 64, width: 64,
                          ),
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {}, 
                          icon: SvgPicture.asset(
                            "assets/icons/apple_box.svg", height: 64, width: 64,
                          ),
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {}, 
                          icon: SvgPicture.asset(
                            "assets/icons/google_box.svg", height: 64, width: 64,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const Positioned(
                  left: 0,
                  right: 0,
                  bottom: -48,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.close, color: Colors.black,),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ).then(onClosed);
  }