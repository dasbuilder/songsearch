This git should only be used if you want to take a bunch of .json files, search through them and then find a particular artist or 
song title within these files. Dubtrack.fm has no mass playlist search or filter so this will work only if you use this bookmarklet managed by JTBrinkmann https://github.com/JTBrinkmann/Dubtrack-Playlist-Pusher
What I had to do to get this to work is as follows:
1) Install the bookmarlket
2) Download all my Dubtrack.fm playlists
3) Upload them to my server (optional, not necessary if you're running a Linux distro as your main - I'm running Windows so my server sufficed)
4) Store all .json files within a certain diretory. Here's an output of what I have stored after unzipping my files:
-rw-r--r-- 1 testing testing 11302 Apr 17 03:10 138?.json
-rw-r--r-- 1 testing testing 46405 Apr 17 03:10 blurb.json
-rw-r--r-- 1 testing testing 17557 Apr 17 03:10 chill\ (NBC,\ Nothing\ but\ Chill).json
-rw-r--r-- 1 testing testing   525 Apr 17 03:10 Deep-TechHouse.json
-rw-r--r-- 1 testing testing 48192 Apr 17 03:10 donezo\ (Progressive\ Hits).json
-rw-r--r-- 1 testing testing  1084 Apr 17 03:10 Driving\ Trance\ Vol.\ 15.json
-rw-r--r-- 1 testing testing 43414 Apr 17 03:10 first.json
-rw-r--r-- 1 testing testing 60001 Apr 17 03:10 Friday\ (Upbeat\ &\ Feeling\ Great!).json
-rw-r--r-- 1 testing testing 16259 Apr 17 03:10 Full\ Mixes.json
-rw-r--r-- 1 testing testing 27277 Apr 17 03:10 Live\ DJ\ Sets.json
-rw-r--r-- 1 testing testing 48699 Apr 17 03:10 oldschool_The-Classics-Vol-1.json
-rw-r--r-- 1 testing testing 22801 Apr 17 03:10 oldschool_The-Classics-Vol-2.json
-rw-r--r-- 1 testing testing  5306 Apr 17 03:10 oldskool.json
-rw-r--r-- 1 testing testing   344 Apr 17 03:10 Progressive\ Sets.json
-rw-r--r-- 1 testing testing   728 Apr 17 03:10 PSY.json
-rw-r--r-- 1 testing testing 47177 Apr 30 10:59 Second\ (Trousey).json
-rw-r--r-- 1 testing testing 10933 Apr 17 03:10 Solarstone.json
-rw-r--r-- 1 testing testing 48710 Apr 30 10:58 Spark\ (Vocal\ Hits).json
-rw-r--r-- 1 testing testing  4187 Apr 17 03:10 Starter.json
-rw-r--r-- 1 testing testing  5467 Apr 17 03:10 The\ Thrillseekers\ Nightmusic\ Volume\ 2.json
-rw-r--r-- 1 testing testing   314 Aug 30 02:04 wrong.txt
-rw-r--r-- 1 testing testing 12540 Apr 17 03:10 WTFriday.json

5) Set an alias to the file itself, e.g. alias AS='/home/testing/plugdj/song-search' which allows me to call the file wherever I am in my OS.
