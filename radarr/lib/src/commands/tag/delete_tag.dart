part of radarr_commands;

Future<void> _commandDeleteTag(Dio client, {
    required int id,
}) async {
    await client.delete('tag/$id');
    return;
}
