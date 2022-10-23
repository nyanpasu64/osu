function album --wraps=yt-dlp\ -o\ \'\%\(playlist\)s/\%\(playlist_index\)s\ -\ \%\(title\)s.\%\(ext\)s\' --description alias\ album=yt-dlp\ -o\ \'\%\(playlist\)s/\%\(playlist_index\)s\ -\ \%\(title\)s.\%\(ext\)s\'
  yt-dlp -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' $argv; 
end
