{ config, pkgs, ... }:
{
    home.packages = with pkgs; [

        # Qtile programs
        xwayland
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
        xdg-desktop-portal
        xdg-desktop-portal-wlr
        xdg-desktop-portal-gtk
        dunst
        playerctl
        brightnessctl

        # X11 Stuff
        picom
        haskellPackages.greenclip
        numlockx
        flameshot
        betterlockscreen
    ];

    home.sessionVariables = {
        EDITOR = "vim";
        GTK_THEME = "Orchis-Green";
        # Reminds electron apps to run with XWayland
        NIXOS_OZONE_WL = "1";
    };
}