def make_album(artist_name, album_title, album_tracks= ''):
    """Return well defined artist and album name."""
    if album_tracks:
        album_info = artist_name + ', ' + album_title + ', ' + album_tracks
    else:
        album_info = artist_name + ', ' + album_title
    return album_info.title()

album = make_album('J.Cole','2014 Forest Hills Drive','13')
print(album)
album = make_album('Halsey','Hopeless Fountain Kingdom')
print(album)
album = make_album('Kehlani','All Have Fallen')
print(album)
