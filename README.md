# tmux Battery Heart Meter
A heart meter for your status bar! Shows your remaining battery % as hearts.

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

in `.tmux.conf`:

    set -g @plugin 'xp-bar/tmux-battery-heart-meter'

Hit `prefix + I` to fetch the plugin and source it.

Next, add `#{battery_heart_meter}` to your `status-left` or `status-right` in `.tmux.conf`.
Enjoy!

### Preview

![Heart Meter](https://user-images.githubusercontent.com/22773226/45598986-12786f00-b9b2-11e8-932e-7dc7a02c15bb.png?raw=true "Heart Meter")

----------------------------------------------

Based in large off [tmux-plugins/tmux-battery](https://github.com/tmux-plugins/tmux-battery).
