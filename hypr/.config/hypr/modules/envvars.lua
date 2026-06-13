hl.env("XCURSOR_THEME", "capitaine-cursors-light")
hl.env("SPEAKER", "alsa_output.pci-0000_00_1b.0.analog-stereo.monitor") -- pactl list short sources | awk '{ print $2 }' | grep --color=never output
hl.env("MIC", "alsa_input.pci-0000_00_1b.0.analog-stereo") -- pactl list short sources | awk '{ print $2 }' | grep --color=never input
hl.env("XCURSOR_SIZE", "28")