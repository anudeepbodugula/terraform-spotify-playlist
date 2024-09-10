resource "spotify_playlist" "Tollywood" {
    name = "Tollywood"
    tracks = [ "1bxzr3JK05fMTcweGAZUHp","6yvxu91deFKt3X1QoV6qMv" ]
  
}

data "spotify_search_track" "adele" {
  artist = "adele"
  limit = 10
}
resource "spotify_playlist" "adele-playlist" {
    name = "adele"
    tracks = [ data.spotify_search_track.adele.tracks[0].id,
    data.spotify_search_track.adele.tracks[1].id,
    data.spotify_search_track.adele.tracks[2].id ]
}