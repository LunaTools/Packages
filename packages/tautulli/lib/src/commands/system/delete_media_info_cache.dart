part of tautulli_commands;

Future<void> _commandDeleteMediaInfoCache(Dio client, {
    @required int sectionId,
}) async {
    assert(sectionId != null, 'sectionId cannot be null.');
    Response response = await client.get('/',
        queryParameters: {
            'cmd': 'delete_media_info_cache',
            if(sectionId != null) 'section_id': sectionId,
        },
    );
    switch((response.data['response']['result'] as String)) {
        case 'success': return;
        case 'error':
        default: throw Exception(response.data['response']['message']);
    }
}
