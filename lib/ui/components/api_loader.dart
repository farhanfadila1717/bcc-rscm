import 'package:flutter/material.dart';

/// -----------------------------------------------------------------------
/// STATE MODEL
/// -----------------------------------------------------------------------

enum ApiLoaderStatus { loading, error, success }

class ApiLoaderState<T> {
  final ApiLoaderStatus status;
  final T? data;
  final Object? error;
  final StackTrace? stackTrace;

  const ApiLoaderState._({
    required this.status,
    this.data,
    this.error,
    this.stackTrace,
  });

  const ApiLoaderState.loading() : this._(status: ApiLoaderStatus.loading);

  const ApiLoaderState.success(T data)
    : this._(status: ApiLoaderStatus.success, data: data);

  const ApiLoaderState.error(Object error, [StackTrace? stackTrace])
    : this._(
        status: ApiLoaderStatus.error,
        error: error,
        stackTrace: stackTrace,
      );

  bool get isLoading => status == ApiLoaderStatus.loading;
  bool get isError => status == ApiLoaderStatus.error;
  bool get isSuccess => status == ApiLoaderStatus.success;
}

/// -----------------------------------------------------------------------
/// CONTROLLER
/// -----------------------------------------------------------------------
///
/// Create one of these per API call you want to manage, hand it a
/// `fetcher` function, and pass it into [ApiLoader]. Call `refresh()`
/// (or `reload()`) from anywhere that holds a reference to the
/// controller — a pull-to-refresh, a retry button elsewhere on the
/// screen, a button in an AppBar, etc.
class ApiLoaderController<T> extends ChangeNotifier {
  ApiLoaderController({
    required Future<T> Function() fetcher,
    bool fetchOnInit = true,
  }) : _fetcher = fetcher {
    if (fetchOnInit) {
      // Defer so listeners attached after construction still get notified.
      Future.microtask(refresh);
    } else {
      _state = const ApiLoaderState.loading();
    }
  }

  final Future<T> Function() _fetcher;

  ApiLoaderState<T> _state = const ApiLoaderState.loading();
  ApiLoaderState<T> get state => _state;

  int _requestId = 0;

  /// Re-runs the fetcher and updates state. Safe to call multiple times;
  /// only the latest call's result is applied (guards against race
  /// conditions if refresh() is called again before the previous one
  /// finishes).
  Future<void> refresh() async {
    final int currentRequest = ++_requestId;

    _state = const ApiLoaderState.loading();
    notifyListeners();

    try {
      final T result = await _fetcher();
      if (currentRequest != _requestId) return; // stale response, ignore
      _state = ApiLoaderState.success(result);
      notifyListeners();
    } catch (e, st) {
      if (currentRequest != _requestId) return;
      _state = ApiLoaderState.error(e, st);
      notifyListeners();
    }
  }

  /// Alias for refresh(), reads nicely for a first/manual load.
  Future<void> reload() => refresh();
}

/// -----------------------------------------------------------------------
/// WIDGET
/// -----------------------------------------------------------------------
///
/// Generic widget that listens to an [ApiLoaderController] and renders
/// loading / error / success UI accordingly. Provide `errorBuilder` and
/// `loadingBuilder` to customize, or rely on the sensible defaults.
class ApiLoader<T> extends StatelessWidget {
  const ApiLoader({
    super.key,
    required this.controller,
    required this.builder,
    this.loadingBuilder,
    this.errorBuilder,
  });

  final ApiLoaderController<T> controller;

  /// Called when data has loaded successfully.
  final Widget Function(BuildContext context, T data) builder;

  /// Called while loading. Defaults to a centered [CircularProgressIndicator].
  final WidgetBuilder? loadingBuilder;

  /// Called on error. Defaults to a message + Retry button that calls
  /// `controller.refresh()`.
  final Widget Function(BuildContext context, Object error, VoidCallback retry)?
  errorBuilder;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, _) {
        final state = controller.state;

        switch (state.status) {
          case ApiLoaderStatus.loading:
            return loadingBuilder?.call(context) ?? const _DefaultLoading();

          case ApiLoaderStatus.error:
            return errorBuilder?.call(
                  context,
                  state.error!,
                  controller.refresh,
                ) ??
                _DefaultError(error: state.error!, onRetry: controller.refresh);

          case ApiLoaderStatus.success:
            return builder(context, state.data as T);
        }
      },
    );
  }
}

class _DefaultLoading extends StatelessWidget {
  const _DefaultLoading();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(24),
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class _DefaultError extends StatelessWidget {
  const _DefaultError({required this.error, required this.onRetry});

  final Object error;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline, size: 40, color: Colors.red),
            const SizedBox(height: 12),
            Text(
              error.toString(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: onRetry, child: const Text('Retry')),
          ],
        ),
      ),
    );
  }
}
