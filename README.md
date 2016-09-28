This git should only be used if you want to take a bunch of .json files, search through them and then find a particular artist or 
song title within these files. Dubtrack.fm has no mass playlist search or filter so this will work only if you use this bookmarklet managed by JTBrinkmann https://github.com/JTBrinkmann/Dubtrack-Playlist-Pusher
Here's an example of how things look when something is searched: <a href="http://termbin.com/gr1a" target="_new">Above & Beyond search example</a>

What I had to do to get this to work is as follows:<br>
1) Install the bookmarklet<br>
2) Download all my Dubtrack.fm playlists<br>
3) Upload them to my server (optional, not necessary if you're running a Linux distro as your main - I'm running Windows so my server sufficed)<br>
4) Store all .json files within a certain diretory. Here's an output of what I have stored after unzipping my files:<br>
-rw-r--r-- 1 testing testing 11302 Apr 17 03:10 138?.json<br>
-rw-r--r-- 1 testing testing 46405 Apr 17 03:10 blurb.json<br>
-rw-r--r-- 1 testing testing 17557 Apr 17 03:10 chill\ (NBC,\ Nothing\ but\ Chill).json<br>
-rw-r--r-- 1 testing testing   525 Apr 17 03:10 Deep-TechHouse.json<br>
-rw-r--r-- 1 testing testing 48192 Apr 17 03:10 donezo\ (Progressive\ Hits).json<br>
-rw-r--r-- 1 testing testing  1084 Apr 17 03:10 Driving\ Trance\ Vol.\ 15.json<br>
-rw-r--r-- 1 testing testing 43414 Apr 17 03:10 first.json<br>
-rw-r--r-- 1 testing testing 60001 Apr 17 03:10 Friday\ (Upbeat\ &\ Feeling\ Great!).json<br>
-rw-r--r-- 1 testing testing 16259 Apr 17 03:10 Full\ Mixes.json<br>
-rw-r--r-- 1 testing testing 27277 Apr 17 03:10 Live\ DJ\ Sets.json<br>
-rw-r--r-- 1 testing testing 48699 Apr 17 03:10 oldschool_The-Classics-Vol-1.json<br>
-rw-r--r-- 1 testing testing 22801 Apr 17 03:10 oldschool_The-Classics-Vol-2.json<br>
-rw-r--r-- 1 testing testing  5306 Apr 17 03:10 oldskool.json<br>
-rw-r--r-- 1 testing testing   344 Apr 17 03:10 Progressive\ Sets.json<br>
-rw-r--r-- 1 testing testing   728 Apr 17 03:10 PSY.json<br>
-rw-r--r-- 1 testing testing 47177 Apr 30 10:59 Second\ (Trousey).json<br>
-rw-r--r-- 1 testing testing 10933 Apr 17 03:10 Solarstone.json<br>
-rw-r--r-- 1 testing testing 48710 Apr 30 10:58 Spark\ (Vocal\ Hits).json<br>
-rw-r--r-- 1 testing testing  4187 Apr 17 03:10 Starter.json<br>
-rw-r--r-- 1 testing testing  5467 Apr 17 03:10 The\ Thrillseekers\ Nightmusic\ Volume\ 2.json<br>
-rw-r--r-- 1 testing testing   314 Aug 30 02:04 wrong.txt<br>
-rw-r--r-- 1 testing testing 12540 Apr 17 03:10 WTFriday.json<br>
<br>
5) Set an alias to the file itself, e.g. alias AS='/home/testing/plugdj/song-search' which allows me to call the file wherever I am in my OS.

Viola, if you followed the above and then renamed the /input/path/here directory inside of the searchsong.sh file, you should be able to utilize this feature to search all your .json songs that were exported from plug.dj or dubtrack.fm. Keep in mind that you might have to tailor the settings based on your env. 
I also use the IFS at the beginning to ensure that the output looks clean. 
