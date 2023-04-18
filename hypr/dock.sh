cd ~/.config/hypr/
DOCKED=/home/james/.config/hypr/hyprland-docked.conf
MOBILE=/home/james/.config/hypr/hyprland-mobile.conf

if [[ -f "$DOCKED" ]]; then
  mv hyprland.conf hyprland-mobile.conf
  mv hyprland-docked.conf hyprland.conf
elif [[ -f "$MOBILE" ]]; then
  mv hyprland.conf hyprland-docked.conf
  mv hyprland-mobile.conf hyprland.conf
else
  echo Cannot find mobile or docked config!
fi
