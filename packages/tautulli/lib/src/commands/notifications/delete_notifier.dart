part of tautulli_commands;

Future<void> _commandDeleteNotifier(Dio client, {
    @required int notifierId,
}) async {
    assert(notifierId != null, 'notifierId cannot be null.');
    Response response = await client.get('/',
        queryParameters: {
            'cmd': 'delete_notifier',
            'notifier_id': notifierId,
        },
    );
    switch((response.data['response']['result'] as String)) {
        case 'success': return;
        case 'error':
        default: throw Exception(throw Exception(response.data['response']['message']));
    }
}
