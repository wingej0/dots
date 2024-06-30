{ config, pkgs, ... }:
{
  imports = [];

  environment.systemPackages = with pkgs; [
    xdg-desktop-portal
    xdg-desktop-portal-wlr
    xdg-desktop-portal-gtk
  ];
}