# Lazyvim grep enhancement using bash v0.1 - Use at your own peril

This lets you pass a "special" grep flag that generates clickable file links (Running grep -irn ...) which will open the file matches
in a new Terminal

## TODO

[ ] Write instructions on aliasing grep to grem

[ ] Open file in new tab, not new terminal

[ ] Implement using escape sequences for links in sed and then use a custom mimetype

[ ] Create a new mime-type

[v] Write a handler script for the mime-type

[v] Modify grep output when using (-n)

## Usage
Clone repo

### Link files
Link the Mime type handler:

```sudo ln -s <Your_Home_Path>/projects/lazyterminal/vmf-opener.desktop /usr/share/applications/vimfile.desktop```

Link the Overloaded script for grep:

```ln -s <PATH_TO_WHERE_YOU_WANT_TO_RUN_SCRIPT>/grep ~/projects/vimlink/grem```

### Modify the mimeapps.list

```echo "x-scheme-handler/file=vimfile.desktop" >> /usr/share/applications/mimeapps.list```

Link the Handler script mentioned in the .desktop file:

```ln -s <PATH_TO_WHERE_YOU_WANT_TO_RUN_SCRIPT>/vimfilehandler.sh ~/projects/vimlink/vimfilehandler.sh```

Edit the vimfile.desktop to link to the handler correctly

``` cat

[Desktop Entry]
Name=vmf
Exec=<PATH_TO_WHERE_YOU_WANT_TO_RUN_SCRIPT>/vimfilehandler.sh %u
Type=Application
Terminal=true
MimeType=x-scheme-handler/file;

```

Update changes:

```sudo update-desktop-database /usr/share/applications/```
