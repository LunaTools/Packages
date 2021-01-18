import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'image.g.dart';

/// Model for a movies' image from Radarr.
@JsonSerializable(explicitToJson: true)
class RadarrMovieImage {
    @JsonKey(name: 'coverType')
    String coverType;

    @JsonKey(name: 'url')
    String url;
    
    @JsonKey(name: 'remoteUrl')
    String remoteUrl;

    RadarrMovieImage({
        this.coverType,
        this.url,
        this.remoteUrl,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [RadarrMovieImage] object.
    factory RadarrMovieImage.fromJson(Map<String, dynamic> json) => _$RadarrMovieImageFromJson(json);
    /// Serialize a [RadarrMovieImage] object to a JSON map.
    Map<String, dynamic> toJson() => _$RadarrMovieImageToJson(this);
}