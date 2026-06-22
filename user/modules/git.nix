{...}: 
let 
  signingKey = "23CB9036D288EB47BA6A193AE7C1A4DFA58BB3A9";
  githubCredentialHelper = "!/run/current-system/sw/bin/gh auth git-credential";
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
          helper = githubCredentialHelper;
        };
        "https://gist.github.com" = {
          helper = githubCredentialHelper;
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

  programs.gh = {
    enable = true;
    settings.git_protocol = "ssh";
    hosts = {
      "github.com" = {
        user = "muhammadtalha-quant";
      };
    };
    gitCredentialHelper.enable = false; 
  };
}
