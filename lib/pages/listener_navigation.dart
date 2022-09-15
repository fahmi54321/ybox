import 'package:cloud_storage/main.dart';
import 'package:flutter/material.dart';

class ListenerNavigation extends StatefulWidget {
  final Widget child;
  bool isFromDialog;

  final Function({
    required bool isDidPushNext,
    required bool isDidPop,
    required bool isDidPopNext,
  })? onKeluarPage;

  final Function({
    required bool isDidPush,
  })? onMasukPage;
  final String routeName;

  ListenerNavigation({
    required this.child,
    required this.routeName,
    this.onKeluarPage,
    this.onMasukPage,
    this.isFromDialog = false,
  });

  @override
  State<StatefulWidget> createState() {
    return ListenerNavigationState();
  }
}

class ListenerNavigationState extends State<ListenerNavigation>
    with RouteAware {
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  void onKeluarPage({
    required bool isDidPushNext,
    required bool isDidPop,
    required bool isDidPopNext,
  }) {
    bool didPop = false;
    bool didPopNext = false;
    bool didPushNext = false;
    if (widget.onKeluarPage != null) {
      didPop = isDidPop;
      didPopNext = isDidPopNext;
      didPushNext = isDidPushNext;
      widget.onKeluarPage!(
        isDidPop: didPop,
        isDidPopNext: didPopNext,
        isDidPushNext: didPushNext,
      );
    }
  }

  void onMasukPage({
    required bool isDidPush,
    bool isFromDialog = false,
  }) {
    bool didPush = false;
    if (widget.onMasukPage != null) {
      didPush = isDidPush;
      widget.onMasukPage!(
        isDidPush: didPush,
      );
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void dispose() {
    super.dispose();
    routeObserver.unsubscribe(this);
  }

  @override
  void didPush() {
    print('Masuk page: ${widget.routeName}');
    onMasukPage(isDidPush: true);
  }

  void didPushNext() {
    print('Keluar Page: ${widget.routeName}');
    onKeluarPage(
      isDidPushNext: true,
      isDidPopNext: false,
      isDidPop: false,
    );
  }

  @override
  void didPop() {
    print('Pop dari current page, dan keluar dari page: ${widget.routeName}');
    onKeluarPage(
      isDidPop: true,
      isDidPopNext: false,
      isDidPushNext: false,
    );
  }

  @override
  void didPopNext() {

    print('Pop dari page lain ke halaman current page: ${widget.routeName}');
    onKeluarPage(
      isDidPopNext: true,
      isDidPushNext: false,
      isDidPop: false,
    );
  }
}
