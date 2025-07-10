import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

enum NetworkImageShape { rectangle, circle }

class NetworkImageWidget extends StatelessWidget {
  const NetworkImageWidget._({
    required this.shape,
    required this.url,
    this.width,
    this.height,
    this.radius,
    this.fit,
  });

  factory NetworkImageWidget.rectangle(
    String url, {
    double? width,
    double? height,
    Radius? radius,
    BoxFit? fit,
  }) {
    return NetworkImageWidget._(
      shape: NetworkImageShape.rectangle,
      url: url,
      width: width,
      height: height,
      radius: radius,
      fit: fit,
    );
  }

  factory NetworkImageWidget.circle(
    String url, {
    double? width,
    double? height,
    BoxFit fit = BoxFit.cover,
  }) {
    return NetworkImageWidget._(
      shape: NetworkImageShape.circle,
      url: url,
      width: width,
      height: height,
      fit: fit,
    );
  }

  static Future<void> preload({
    required BuildContext context,
    required List<String> urls,
  }) async {
    for (final url in urls) {
      await precacheImage(CachedNetworkImageProvider(url), context);
    }
  }

  final NetworkImageShape shape;
  final String url;
  final double? width;
  final double? height;
  final Radius? radius;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    Widget childDefault;
    switch (shape) {
      case NetworkImageShape.circle:
        childDefault = _CircleDefaultWidget(width: width, height: height);
        break;
      case NetworkImageShape.rectangle:
        childDefault = _RectangleDefaultWidget(
          borderRadius: borderRadius,
          width: width,
          height: height,
        );
        break;
    }

    if (url.isEmpty) {
      return childDefault;
    }
    return CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: height,
      placeholder: (context, url) => childDefault,
      errorWidget: (context, url, error) => childDefault,
      imageBuilder:
          (context, imageProvider) => ClipRRect(
            borderRadius: borderRadius,
            child: Image(
              image: imageProvider,
              fit: fit,
              width: width,
              height: height,
            ),
          ),
    );
  }

  BorderRadius get borderRadius {
    switch (shape) {
      case NetworkImageShape.circle:
        return const BorderRadius.all(Radius.circular(200));
      case NetworkImageShape.rectangle:
        return BorderRadius.all(radius ?? Radius.zero);
    }
  }
}

class _CircleDefaultWidget extends StatelessWidget {
  const _CircleDefaultWidget({this.width, this.height});

  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

class _RectangleDefaultWidget extends StatelessWidget {
  const _RectangleDefaultWidget({
    this.width,
    this.height,
    required this.borderRadius,
  });

  final double? width, height;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(color: Colors.grey.shade300),
        ),
      ),
    );
  }
}
