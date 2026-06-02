#!/usr/bin/env fish

playerctl -F status | while read -l audio_status
      if test "$audio_status" = Playing
          tomlq '.bar."main-bar".enabled = false | .bar."music-bar".enabled = true' \
                          .config/noctalia/bars.toml -t > /tmp/bars.toml
      else
          tomlq '.bar."main-bar".enabled = true | .bar."music-bar".enabled = false' \
                          .config/noctalia/bars.toml -t > /tmp/bars.toml
      end

      mv /tmp/bars.toml .config/noctalia/bars.toml
  end &