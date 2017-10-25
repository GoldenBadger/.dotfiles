#!/bin/bash

TEMP=mktemp
xclip -o | gpg --clearsign > "$TEMP"
unix2dos < "$TEMP" | xclip -selection clipboard
rm "$TEMP"
