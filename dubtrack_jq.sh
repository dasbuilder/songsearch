#!/bin/bash
################
##  V. 1.0.0  ##
## by Spencer ##
################
# This function allows one to search all of their Dubtrack playlists after downloading them from DT using JTBrinkmann's script, found here: https://github.com/JTBrinkmann/Dubtrack-Playlist-Pusher/

dtPlaylistChk(){ 
   # Setting the user-agent, change this to your liking
   ua="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36";    
   echo "What artist or song title to search?"; 
   read -r songinfo;
   until [[ -n "$songinfo" ]]; do
     if [[ -z "$songinfo" ]]; then 
       echo "You need to enter a song name or artist"; 
       read -r songinfo;
     fi; 
   done;
   # cleanly get output from all .json files with % as the delimiter. 
   # Change % to your preferred delimiter both here and in the while loop below
   jq -r '.data[]|"\(input_filename)%\(.image)%\(.title)"' *.json | 
   
   # Grep for the artist or song title and replace any translated characters
   grep -i "${songinfo}" | 
   gsed -r "s_(&amp;)_\\&_g; s_(&apos;)_\\'_g" | 
   # Loop to take data from jq and neatly print
   while IFS='%' read -r filename responses titles; do 
      printf "%s\n%s %s\n\v" \
             "$filename" \
             "$(curl -sIL "$responses" -A "$ua" | awk '/HTTP/ { print $2 }')" "$titles"; 
             sleep .5; 
    done;
 }
