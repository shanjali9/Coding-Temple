def make_album(artist_name, album_title, album_tracks= ''):
    """Return well defined artist and album name."""
    album_info = artist_name + ', ' + album_title
    return album_info.title()

while True: 
    print("\nPlease tell me your favorite album")
    print("(enter 'q' at any time to quit)")

    artist_n = input("Artist name: ")
    if artist_n == 'q':
        break

    artist_t = input("Artist title: ")
    if artist_t == 'q':
       break
    
    album = make_album(artist_n, artist_t)
    
