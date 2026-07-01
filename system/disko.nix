{
  disko.devices = {
    disk = {
      my-disk = {
        device = "/dev/sda";
        type = "disk";
        content = {
          type = "gpt";
          partitions = {
            ESP = { 
              type = "EF00";
              size = "1G";
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
                mountOptions = [ "umask=0077" ];
                extraArgs = [ "-n" "BOOT" ]; 
              };
            };
            
            swap = {
              size = "4G";
              content = {
                type = "swap";
                discardPolicy = "both";
                extraArgs = [ "-L" "SWAP" ];
              };
            };

            root = {
              size = "100%";
              content = {
                type = "filesystem";
                format = "ext4";
                mountpoint = "/";
                extraArgs = [ "-L" "NIXOS" ]; 
              };
            };
          };
        };
      };
    };
  };
}
