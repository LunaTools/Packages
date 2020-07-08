part of tautulli_commands;

/// Facilitates, encapsulates, and manages individual calls for any system calls within Tautulli.
/// 
/// [TautulliCommandHandler_System] internally handles routing the HTTP client to the API calls.
class TautulliCommandHandler_System {
    final Dio _client;

    /// Create a system command handler using an initialized [Dio] client.
    TautulliCommandHandler_System(this._client);

    /// Handler for [update](https://github.com/Tautulli/Tautulli/blob/master/API.md#update).
    /// 
    /// Update Tautulli.
    Future<void> update() async => _commandUpdate(_client);

    /// Handler for [update_check](https://github.com/Tautulli/Tautulli/blob/master/API.md#update_check).
    /// 
    /// Check for Tautulli updates.
    Future<bool> updateCheck() async => _commandUpdateCheck(_client);
}