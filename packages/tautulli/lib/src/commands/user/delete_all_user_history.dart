part of tautulli_commands;

Future<void> _commandDeleteAllUserHistory(Dio client, {
    @required int userId,
    List<int> rowIds,
}) async {
    assert(userId != null, 'userId cannot be null');
    try {
        Response response = await client.get('/',
            queryParameters: {
                'cmd': 'delete_all_user_history',
                'user_id': userId,
                if(rowIds != null && rowIds.isNotEmpty) 'row_ids': rowIds.join(","),
            },
        );
        switch((response.data['response']['result'] as String)) {
            case 'success': return;
            case 'error':
            default: throw Exception(throw Exception(response.data['response']['message']));
        }
    } catch (error, stack) {
        return Future.error(error, stack);
    }
}