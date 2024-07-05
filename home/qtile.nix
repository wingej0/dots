{ config, pkgs, ... }:
{
    home.packages = with pkgs; [

        # Wayland Programs
        rofi-wayland
        grim
        slurp
        swappy
        wl-clipboard
        cliphist
        swayidle
        swaylock-effects
        polkit_gnome
        wlogout
        wlr-randr
        dunst
        playerctl
        brightnessctl

        # X11 Programs
        picom
        haskellPackages.greenclip
        numlockx
        flameshot
        betterlockscreen
        arandr
        peek
    ];
}