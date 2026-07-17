{ pkgs, ... }:
{
    home.packages = with pkgs; [
        localsend
        google-chrome
        wl-clipboard
        ouch
        trash-cli
        drawing
    ];
}
