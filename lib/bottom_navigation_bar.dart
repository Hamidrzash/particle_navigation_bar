import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:particle_navigation_bar/particle/widget.dart';
import 'package:path_drawing/path_drawing.dart';

class MainBottomSheet extends StatelessWidget {
  final PageController pageController;
  final ValueNotifier<int> pageIndex;
  MainBottomSheet({super.key, required this.pageController, required this.pageIndex});
  final pages = [
    'home',
    'courses',
    'support',
    'user',
  ];
  final pagesNames = [
    'Home',
    'Courses',
    'Support',
    'User',
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: pageIndex,
      builder: (context, value, child) => Container(
        height: 75,
        decoration: const BoxDecoration(
          color: Colors.transparent,
          boxShadow: [
            BoxShadow(
              color: Color(0x196E315B),
              blurRadius: 8,
              offset: Offset(0, -3),
              spreadRadius: 0,
            )
          ],
        ),
        child: SizedBox(
          height: 75,
          child: Stack(
            children: [
              Container(color: const Color(0xffece8eb)),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 600),
                bottom: 20,
                left: MediaQuery.of(context).size.width / 9.5,
                child: SizedBox(
                  width: 34,
                  height: 34,
                  child: FloatingParticleWidget(
                    colorList: const [
                      Color(0xffbf72df),
                      Color(0xfffa9fbf),
                      Color(0xfffeddd2),
                      Color(0xfff68bda),
                    ],
                    particleCount: 60,
                    leftPadding: (pageIndex.value * MediaQuery.of(context).size.width / 4),
                  ),
                ),
              ),
              SizedBox(
                height: 75,
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          pageIndex.value = 0;
                          pageController.jumpToPage(0);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0,
                              color: Colors.white,
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Transform.translate(
                                offset: const Offset(-1, 0),
                                child: ImageFiltered(
                                  imageFilter: ImageFilter.blur(sigmaY: 1, sigmaX: 1, tileMode: TileMode.decal),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.transparent,
                                        width: 0,
                                      ),
                                    ),
                                    child: Opacity(
                                      opacity: 1,
                                      child: ColorFiltered(
                                        colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcATop),
                                        child: SvgPicture.asset(
                                          'assets/images/home.svg',
                                          colorFilter:
                                              ColorFilter.mode(Colors.black.withValues(alpha: 0.04), BlendMode.srcIn),
                                          width: 38,
                                          height: 38,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              ClipPath(
                                clipper: HomeClipper(),
                                child: const ColoredBox(
                                  color: Colors.white,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: SizedBox(
                                          height: 75,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          pageIndex.value = 1;
                          pageController.jumpToPage(1);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0,
                              color: Colors.white,
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Transform.translate(
                                offset: const Offset(-1, 0),
                                child: ImageFiltered(
                                  imageFilter: ImageFilter.blur(sigmaY: 1, sigmaX: 1, tileMode: TileMode.decal),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.transparent,
                                        width: 0,
                                      ),
                                    ),
                                    child: Opacity(
                                      opacity: 1,
                                      child: ColorFiltered(
                                        colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcATop),
                                        child: SvgPicture.asset(
                                          'assets/images/home.svg',
                                          colorFilter:
                                              ColorFilter.mode(Colors.black.withValues(alpha: 0.04), BlendMode.srcIn),
                                          width: 38,
                                          height: 38,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              ClipPath(
                                clipper: CourseClipper(),
                                child: const ColoredBox(
                                  color: Colors.white,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: SizedBox(
                                          height: 75,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          pageIndex.value = 2;
                          pageController.jumpToPage(2);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0,
                              color: Colors.white,
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Transform.translate(
                                offset: const Offset(-1, 0),
                                child: ImageFiltered(
                                  imageFilter: ImageFilter.blur(sigmaY: 1, sigmaX: 1, tileMode: TileMode.decal),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.transparent,
                                        width: 0,
                                      ),
                                    ),
                                    child: Opacity(
                                      opacity: 1,
                                      child: ColorFiltered(
                                        colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcATop),
                                        child: SvgPicture.asset(
                                          'assets/images/home.svg',
                                          colorFilter:
                                              ColorFilter.mode(Colors.black.withValues(alpha: 0.04), BlendMode.srcIn),
                                          width: 38,
                                          height: 38,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              ClipPath(
                                clipper: SupportClipper(),
                                child: const ColoredBox(
                                  color: Colors.white,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: SizedBox(
                                          height: 75,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          pageIndex.value = 3;
                          pageController.jumpToPage(3);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0,
                              color: Colors.white,
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Transform.translate(
                                offset: const Offset(-1, 0),
                                child: ImageFiltered(
                                  imageFilter: ImageFilter.blur(sigmaY: 1, sigmaX: 1, tileMode: TileMode.decal),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.transparent,
                                        width: 0,
                                      ),
                                    ),
                                    child: Opacity(
                                      opacity: 1,
                                      child: ColorFiltered(
                                        colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcATop),
                                        child: SvgPicture.asset(
                                          'assets/images/home.svg',
                                          colorFilter:
                                              ColorFilter.mode(Colors.black.withValues(alpha: 0.04), BlendMode.srcIn),
                                          width: 38,
                                          height: 38,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              ClipPath(
                                clipper: UserClipper(),
                                child: const ColoredBox(
                                  color: Colors.white,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: SizedBox(
                                          height: 75,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeClipper extends CustomClipper<Path> {
  Path scaleAndTranslatePath(Path originalPath, double scale, Offset offset) {
    final Matrix4 matrix = Matrix4.identity()
      ..scale(scale, scale)
      ..setTranslationRaw(offset.dx, offset.dy, 0);

    return originalPath.transform(matrix.storage);
  }

  final String homeIcon =
      'M9.27605 4.49128C10.9116 3.34641 13.0884 3.34641 14.7239 4.49128L19.7239 7.99128C20.9937 8.88014 21.75 10.3326 21.75 11.8826V17.5C21.75 20.1234 19.6234 22.25 17 22.25H15C14.5858 22.25 14.25 21.9142 14.25 21.5V17.5C14.25 16.8096 13.6904 16.25 13 16.25H11C10.3096 16.25 9.75 16.8096 9.75 17.5V21.5C9.75 21.9142 9.41421 22.25 9 22.25H7C4.37665 22.25 2.25 20.1234 2.25 17.5V11.8826C2.25 10.3326 3.00625 8.88014 4.27605 7.99128L9.27605 4.49128Z';

  @override
  Path getClip(Size size) {
    final path = Path();
    final Offset translation = Offset(
      (size.width - 24 * 1.7) / 2,
      (size.height - 25 * 1.7) / 2,
    );
    path.addPath(scaleAndTranslatePath(parseSvgPathData(homeIcon), 1.7, translation), Offset.zero);

    path.fillType = PathFillType.evenOdd;
    path.addRect(Rect.fromLTWH(0, 0, size.width, size.height));

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class CourseClipper extends CustomClipper<Path> {
  Path scaleAndTranslatePath(Path originalPath, double scale, Offset offset) {
    final Matrix4 matrix = Matrix4.identity()
      ..scale(scale, scale)
      ..setTranslationRaw(offset.dx, offset.dy, 0);

    return originalPath.transform(matrix.storage);
  }

  final String courseIcon1 =
      'M16.6667 2.75C15.1479 2.75 13.9167 3.98122 13.9167 5.5V8.5C13.9167 10.0188 15.1479 11.25 16.6667 11.25H19.6667C21.1854 11.25 22.4167 10.0188 22.4167 8.5V5.5C22.4167 3.98122 21.1854 2.75 19.6667 2.75H16.6667Z';
  final String courseIcon2 =
      'M5.66666 2.75C4.14787 2.75 2.91666 3.98122 2.91666 5.5V8.5C2.91666 10.0188 4.14787 11.25 5.66666 11.25H8.66666C10.1854 11.25 11.4167 10.0188 11.4167 8.5V5.5C11.4167 3.98122 10.1854 2.75 8.66666 2.75H5.66666Z';
  final String courseIcon3 =
      'M5.66666 13.75C4.14787 13.75 2.91666 14.9812 2.91666 16.5V19.5C2.91666 21.0188 4.14787 22.25 5.66666 22.25H8.66666C10.1854 22.25 11.4167 21.0188 11.4167 19.5V16.5C11.4167 14.9812 10.1854 13.75 8.66666 13.75H5.66666Z';
  final String courseIcon4 =
      'M16.6667 13.75C15.1479 13.75 13.9167 14.9812 13.9167 16.5V19.5C13.9167 21.0188 15.1479 22.25 16.6667 22.25H19.6667C21.1854 22.25 22.4167 21.0188 22.4167 19.5V16.5C22.4167 14.9812 21.1854 13.75 19.6667 13.75H16.6667Z';
  @override
  Path getClip(Size size) {
    final path = Path();
    final Offset translation = Offset(
      (size.width - 25 * 1.7) / 2,
      (size.height - 25 * 1.7) / 2,
    );
    final path1 = scaleAndTranslatePath(parseSvgPathData(courseIcon1), 1.7, translation);
    final path2 = scaleAndTranslatePath(parseSvgPathData(courseIcon2), 1.7, translation);
    final path3 = scaleAndTranslatePath(parseSvgPathData(courseIcon3), 1.7, translation);
    final path4 = scaleAndTranslatePath(parseSvgPathData(courseIcon4), 1.7, translation);

    path.addPath(path1, Offset.zero);
    path.addPath(path2, Offset.zero);
    path.addPath(path3, Offset.zero);
    path.addPath(path4, Offset.zero);

    path.fillType = PathFillType.evenOdd;
    path.addRect(Rect.fromLTWH(0, 0, size.width, size.height));

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class SupportClipper extends CustomClipper<Path> {
  Path scaleAndTranslatePath(Path originalPath, double scale, Offset offset) {
    final Matrix4 matrix = Matrix4.identity()
      ..scale(scale, scale)
      ..setTranslationRaw(offset.dx, offset.dy, 0);

    return originalPath.transform(matrix.storage);
  }

  final String supportIcon =
      'M6.12944 8.867C6.49831 6.34446 9.04091 4.25 12.3333 4.25C15.6257 4.25 18.1683 6.34446 18.5372 8.867C17.4066 9.20838 16.5833 10.258 16.5833 11.5V15.5C16.5833 16.7588 17.4291 17.82 18.5833 18.1465V18.5C18.5833 19.7426 17.576 20.75 16.3333 20.75H12.3333C11.9191 20.75 11.5833 21.0858 11.5833 21.5C11.5833 21.9142 11.9191 22.25 12.3333 22.25H16.3333C18.4044 22.25 20.0833 20.5711 20.0833 18.5V18.1465C21.2376 17.82 22.0833 16.7588 22.0833 15.5V11.5C22.0833 10.2284 21.2202 9.15832 20.0479 8.84374C19.6664 5.33959 16.2595 2.75 12.3333 2.75C8.40712 2.75 5.00025 5.33959 4.6188 8.84375C3.44644 9.15832 2.58333 10.2284 2.58333 11.5V15.5C2.58333 17.0188 3.81454 18.25 5.33333 18.25C6.85211 18.25 8.08333 17.0188 8.08333 15.5V11.5C8.08333 10.258 7.26004 9.20838 6.12944 8.867Z';

  @override
  Path getClip(Size size) {
    final path = Path();
    final Offset translation = Offset(
      (size.width - 24 * 1.7) / 2,
      (size.height - 25 * 1.7) / 2,
    );
    path.addPath(scaleAndTranslatePath(parseSvgPathData(supportIcon), 1.7, translation), Offset.zero);

    path.fillType = PathFillType.evenOdd;
    path.addRect(Rect.fromLTWH(0, 0, size.width, size.height));

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class UserClipper extends CustomClipper<Path> {
  Path scaleAndTranslatePath(Path originalPath, double scale, Offset offset) {
    final Matrix4 matrix = Matrix4.identity()
      ..scale(scale, scale)
      ..setTranslationRaw(offset.dx, offset.dy, 0);

    return originalPath.transform(matrix.storage);
  }

  final String userIcon =
      'M7.25 7.5C7.25 4.87665 9.37665 2.75 12 2.75C14.6234 2.75 16.75 4.87665 16.75 7.5C16.75 10.1234 14.6234 12.25 12 12.25C9.37665 12.25 7.25 10.1234 7.25 7.5Z';
  final String userIcon2 =
      'M9.03419 14.3399C9.97446 13.9505 10.9822 13.75 12 13.75C13.0177 13.75 14.0255 13.9505 14.9658 14.3399C15.9061 14.7294 16.7604 15.3003 17.4801 16.0199C18.1997 16.7396 18.7706 17.5939 19.1601 18.5342C19.4079 19.1326 19.5792 19.7584 19.671 20.3966C19.8252 21.4681 18.9322 22.25 18 22.25H5.99998C5.06775 22.25 4.17481 21.4681 4.32893 20.3966C4.42074 19.7584 4.59205 19.1326 4.83992 18.5342C5.22939 17.5939 5.80025 16.7396 6.51991 16.0199C7.23956 15.3003 8.09391 14.7294 9.03419 14.3399Z';

  @override
  Path getClip(Size size) {
    final path = Path();
    final Offset translation = Offset(
      (size.width - 25 * 1.7) / 2,
      (size.height - 25 * 1.7) / 2,
    );

    path.addPath(scaleAndTranslatePath(parseSvgPathData(userIcon), 1.7, translation), Offset.zero);
    path.addPath(scaleAndTranslatePath(parseSvgPathData(userIcon2), 1.7, translation), Offset.zero);

    path.fillType = PathFillType.evenOdd;
    path.addRect(Rect.fromLTWH(0, 0, size.width, size.height));

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
