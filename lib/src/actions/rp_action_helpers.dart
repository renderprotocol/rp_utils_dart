///
/// rp_action_helpers.dart
/// rp_utils_dart
///
/// Convenience factory functions for RPAction.
///

import 'package:rp_generated_dart/rp_generated_dart.dart';

// MARK: - RPAction Factories

/// Creates a navigation action to the specified view.
RPAction rpActionNavigate({required String to, Map<String, String> parameters = const {}}) {
  final nav = RPNavigationAction();
  nav.destinationViewId = to;
  nav.parameters.addAll(parameters);
  final action = RPAction();
  action.navigation = nav;
  return action;
}

/// Creates an API call action.
RPAction rpActionApiCall({
  required String endpoint,
  String method = 'GET',
  Map<String, String> headers = const {},
  String? body,
}) {
  final api = RPApiCallAction();
  api.endpoint = endpoint;
  api.method = method;
  api.headers.addAll(headers);
  if (body != null) api.body = body;
  final action = RPAction();
  action.apiCall = api;
  return action;
}

/// Creates an action to open a URL.
RPAction rpActionOpenURL(String url, {bool external = false}) {
  final openUrl = RPOpenUrlAction();
  openUrl.url = url;
  openUrl.external = external;
  final action = RPAction();
  action.openUrl = openUrl;
  return action;
}

/// Creates a dismiss action.
RPAction rpActionDismiss() {
  final action = RPAction();
  action.dismiss = RPDismissAction();
  return action;
}

/// Creates a custom action with a type and optional payload.
RPAction rpActionCustom({required String type, Map<String, String> payload = const {}}) {
  final custom = RPCustomAction();
  custom.actionType = type;
  custom.payload.addAll(payload);
  final action = RPAction();
  action.custom = custom;
  return action;
}
