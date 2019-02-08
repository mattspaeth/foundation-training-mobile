class Page {
  int page;
  int perPage;
  int total;
  Map<String, dynamic> paging;
  List<Video> videos;

  Page({this.page, this.perPage, this.total, this.videos});

  factory Page.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['data'] as List;
    List<Video> videos = list.map((i) => Video.fromJson(i)).toList();

    return Page(
        page: parsedJson['page'],
        perPage: parsedJson['per_page'],
        total: parsedJson['total'],
        videos: videos);
  }
}

class Video {
  String uri;
  String name;
  List<Picture> picturesList;
  List<File> filesList;

  Video({this.uri, this.name, this.picturesList, this.filesList});

  factory Video.fromJson(Map<String, dynamic> parsedJson) {
    var jsonPicturesList = parsedJson['pictures']['sizes'] as List;
    var jsonFilesList = parsedJson['files'] as List;
    List<Picture> pictures =
        jsonPicturesList.map((i) => Picture.fromJson(i)).toList();
    List<File> files = jsonFilesList.map((i) => File.fromJson(i)).toList();

    return Video(
      uri: parsedJson['uri'],
      name: parsedJson['name'],
      picturesList: pictures,
      filesList: files,
    );
  }
}

class Picture {
  String link;

  Picture({
    this.link,
  });

  factory Picture.fromJson(Map<String, dynamic> parsedJson) {
    return Picture(
      link: parsedJson['link'],
    );
  }
}

class File {
  String link;

  File({
    this.link,
  });

  factory File.fromJson(Map<String, dynamic> parsedJson) {
    return File(
      link: parsedJson['link'],
    );
  }
}
