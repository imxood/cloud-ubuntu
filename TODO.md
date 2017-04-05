
# noVNC

1. Allow to set 'record' and 'record file' via noVNC web ui.
2. Allow to download the 'record file'.
3. Allow to playback it immediately.
4. Add big data support: split to several small files and load separately
5. Add text/audio comment function for trackbar of the player
6. Don't reset while no real move.
7. Add timestamp info
8. Make sure the 1st frame is a full frame, not only part of a full screen (Check the size)?
9. Add speedup/slowdown feature? (not necessary, but available on the latest frame delay improve)
10. Connect Cloud-Lab automatically by allow select and launch the labs (random token and append to the token map).
11. Add audio play support: with <audio> meta
    * http://kolber.github.io/audiojs/
    * http://www.cnblogs.com/dragondean/p/jquery-audioplayer-js.html
    * https://msdn.microsoft.com/zh-cn/library/gg589529(v=vs.85).aspx
    * Live stream audio: SHOUTcast, RTMP,RTSP,HLS
    * HLS，http://www.cnblogs.com/haibindev/archive/2013/01/30/2880764.html
    * https://www.sitepoint.com/10-jquery-html5-audio-players/
12. Add data compress with base64+lz4/decompress support for big data, python code...
    TODO: check the size diff between base64 and binary encoding
13. Add data compress support for splitted big data, python code...
14. Convert the records.html to a html page and a js data, allows to load and handle easierly
15. Clean up everything: include the variables, functions, js/css/html ...
16. Add big record list data splitting support, add sort and search support ...
17. Record with local tools (e.g. pyvnc2swf) and generate noVNC compatiable data, no dependency on Flash player
    Type: VNCRec, Play: /usr/share/pyvnc2swf/play.py
18. Strip the "}...}" frames out of the js data, not required for the session record.
19. Add theme support, allow to choose theme via "theme=" arguments, theme mainly include the .css
    The play/ directory still need to be re-organized for theme support.
    This is required for the iframe embedded feature, to suitable for variable styles' of target sites.
20. Add Cloud-Ubuntu-ARM/MIPS/PowerPC, see https://hub.docker.com/r/inaz2/debian-powerpc/, Required for a realy new full architecture learning env
21. Use libav-tools to record the desktop and use http://www.mediaelementjs.com/, https://github.com/mediaelement/mediaelement to replay it.
    https://linux.cn/article-4323-1.html
    avconv -f alsa -i hw:0 -f x11grab -r 25 -s 1280x666 -i :0.0 -vcodec libx264 -threads 4 $HOME/output.mp4
    avconv -f alsa -i hw:0 out.wav
    avconv -f x11grab -r 1 -s 1280x666 -i :0.0 -pix_fmt rgb24 -threads 4 $HOME/output.gif
