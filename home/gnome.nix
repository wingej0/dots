{ config, pkgs, ... }:
{
    home.packages = with pkgs; [
        # Themes
        qogir-theme
        qogir-icon-theme

        # Gnome extensions
        gnome.gnome-tweaks
        gnomeExtensions.dash-to-dock
        gnomeExtensions.blur-my-shell
        gnomeExtensions.appindicator
        gnomeExtensions.caffeine
        gnomeExtensions.clipboard-indicator
        gnomeExtensions.alphabetical-app-grid
        gnomeExtensions.tiling-assistant

        gnome.gnome-boxes
        gnome.gnome-calculator
    ];

    home.sessionVariables = {
        EDITOR = "vim";
        GTK_THEME = "Qogir";
    };
}