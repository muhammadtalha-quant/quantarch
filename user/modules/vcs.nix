{...}: 
let 
  signingKey = "23CB9036D288EB47BA6A193AE7C1A4DFA58BB3A9";
in
{
  programs.git = {
    enable = true;
    signing = {
      key = signingKey;
      format = "openpgp";
      signByDefault = true;
      signer = "/run/current-system/sw/bin/gpg2";
    };
    settings = {
      init = {
        defaultBranch = "main";
      }; 
      commit = {
        gpgSign = true; 
      };
      tag = {
        gpgSign = true; 
      };
      user = {
        name = "Muhammad Talha";
        email = "muhammadtalha.quant@gmail.com";
        useConfigOnly = true;
      };
      credential = {
        "https://github.com" = {
          helper = "!/run/current-system/sw/bin/gh auth git-credential";
        };
        "https://gist.github.com" = {
          helper = "!/run/current-system/sw/bin/gh auth git-credential";
        };
      };
      http = {
        version = "HTTP/1.1";
        postBuffer = 524288000;
        lowSpeedLimit = 1000;
        lowSpeedTime = 600;
      };
    };
  };

  programs.lazygit.enable = true;

  programs.gh.enable = true;
}
