{ config, pkgs, ... }:
{
    gtk = {
        enable = true;

        iconTheme = {
        name = "Qogir";
        package = pkgs.qogir-icon-theme;
        };

        theme = {
        name = "Qogir";
        package = pkgs.qogir-theme;
        };

        cursorTheme = {
        name = "Bibata-Modern-Classic";
        package = pkgs.bibata-cursors;
        };
    };
}