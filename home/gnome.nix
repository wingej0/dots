{ config, pkgs, ... }:
{
    home.packages = with pkgs; [
        # Themes
        orchis-theme
        tela-icon-theme

        # Gnome extensions
        gnome.gnome-tweaks
        gnomeExtensions.dash-to-dock
        gnomeExtensions.blur-my-shell
        gnomeExtensions.appindicator
        gnomeExtensions.caffeine
        gnomeExtensions.clipboard-indicator
        gnomeExtensions.alphabetical-app-grid
        gnomeExtensions.tiling-assistant
        gnomeExtensions.user-themes
        gnomeExtensions.gnordvpn-local

        gnome.gnome-boxes
        gnome.gnome-calculator
    ];

    home.sessionVariables = {
        EDITOR = "vim";
        GTK_THEME = "Orchis-Green";
        # Reminds electron apps to run with XWayland
        NIXOS_OZONE_WL = 1;
    };
}