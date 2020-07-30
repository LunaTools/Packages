part of tautulli_commands;

/// Facilitates, encapsulates, and manages individual calls related to history within Tautulli.
/// 
/// [TautulliCommandHandler_History] internally handles routing the HTTP client to the API calls.
class TautulliCommandHandler_History {
    final Dio _client;

    /// Create a history command handler using an initialized [Dio] client.
    TautulliCommandHandler_History(this._client);
}