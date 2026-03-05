#!/bin/bash

INDEX=$(hyprctl devices -j | jq -r '.keyboards[] | select(.main==true) | .active_layout_index')

case "$INDEX" in
  0) echo "EN"; echo "class:us" ;;
  1) echo "SR"; echo "class:rs_latin" ;;
  2) echo "СР"; echo "class:rs_cyrillic" ;;
  *) echo "?"; echo "class:unknown" ;;
esac
