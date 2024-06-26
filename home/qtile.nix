{ config, pkgs, ... }:
{
    home.packages = with pkgs; [
        # Themes
        qogir-theme
        qogir-icon-theme

        # Qtile programs
        xwayland
        rofi-wayland
        grim
        slurp
        swappy
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
    ];

    home.sessionVariables = {
        EDITOR = "vim";
        GTK_THEME = "Qogir";
        # Reminds electron apps to run with XWayland
        NIXOS_OZONE_WL = "1";
    };
}