import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension ContextExtensions on BuildContext {
  /// Pops the current route if possible.
  void pop() => GoRouter.maybeOf(this)?.pop();

  /// Pops until the named route is found.
  void popUntilNamed(String name) => Navigator.of(this).popUntil(ModalRoute.withName(name));

  /// Pops the current route only if possible.
  Future<bool> maybePop() => Navigator.of(this).maybePop();

  /// Checks if the navigator can pop.
  bool get canPop => Navigator.of(this).canPop();

  /// Push a new route onto the stack.
  void push(String path, {Object? extra}) => GoRouter.maybeOf(this)?.push(path, extra: extra);

  /// Push and replace the current route.
  void replace(String path, {Object? extra}) => GoRouter.maybeOf(this)?.replace(path, extra: extra);

  /// Push a named route onto the stack.
  void pushNamed(String name, {Object? extra}) => GoRouter.maybeOf(this)?.pushNamed(name, extra: extra);

  /// Push a named route and replace the current one.
  void pushReplacementNamed(String name, {Object? extra}) => GoRouter.maybeOf(this)?.pushReplacementNamed(name, extra: extra);

  /// Pops the current route and pushes a new named one.
  void popAndPushNamed(String name, {Object? extra}) {
    pop();
    pushNamed(name, extra: extra);
  }

  /// Navigates to a route without adding it to the stack.
  void go(String path, {Object? extra}) => GoRouter.maybeOf(this)?.go(path, extra: extra);

  /// Navigates to a named route without adding it to the stack.
  void goNamed(String name, {Object? extra}) => GoRouter.maybeOf(this)?.goNamed(name, extra: extra);

  /// Replaces the current route with a named route.
  void replaceNamed(String name, {Object? extra}) => GoRouter.maybeOf(this)?.replaceNamed(name, extra: extra);

  /// Refreshes the current route.
  void refresh() => GoRouter.maybeOf(this)?.refresh();

  /// Gets the current location name.
  String get currentLocation => GoRouter.of(this).state.name ?? '';

  /// Gets the full path of the current route.
  String get fullPath => GoRouter.of(this).state.fullPath ?? '';

  /// Pops the current route and goes to a new route.
  void popAndGo(String path, {Object? extra}) {
    pop();
    go(path, extra: extra);
  }

  /// Pops the current route and goes to a named route.
  void popAndGoNamed(String name, {Object? extra}) {
    pop();
    goNamed(name, extra: extra);
  }

  /// Pops the current route and replaces it with a new route.
  void popAndReplace(String path, {Object? extra}) {
    pop();
    replace(path, extra: extra);
  }

  /// Pops the current route and replaces it with a named route.
  void popAndReplaceNamed(String name, {Object? extra}) {
    pop();
    replaceNamed(name, extra: extra);
  }

  /// Navigates to a route and pops the current overlay (e.g., drawer).
  void goAndPop(String path, {Object? extra}) {
    go(path, extra: extra);
    Navigator.pop(this); // Close the drawer or any other overlay
  }

  /// Navigates to a named route and pops the current overlay (e.g., drawer).
  void goNamedAndPop(String name, {Object? extra}) {
    goNamed(name, extra: extra);
    Navigator.pop(this); // Close the drawer or any other overlay
  }
}