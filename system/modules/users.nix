{pkgs, ...}: {
  users.mutableUsers = false;
  users.users.root.hashedPassword = "$y$j9T$hbguh04FZh1JSM8nYVXS0.$9yG.bzlFyYT2NcDEKwxPmZuyN1Cz91DMpyewyfQAyM5";
  users.users.muhammadtalha = {
    isNormalUser = true;
    description = "Muhammad Talha";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
    hashedPassword = "$y$j9T$hbguh04FZh1JSM8nYVXS0.$9yG.bzlFyYT2NcDEKwxPmZuyN1Cz91DMpyewyfQAyM5";
  };
}