#!/usr/bin/env bash
# Claude Code allows one statusLine command, so this renders both plugin badges.
cfg="${CLAUDE_CONFIG_DIR:-$HOME/.claude}"
payload=$(cat)

badge() {
  set -- $1
  [ -f "$1" ] || return 0
  printf '%s' "$payload" | bash "$1"
}

cave=$(badge "$cfg/plugins/cache/caveman/caveman/*/src/hooks/caveman-statusline.sh")
pony=$(badge "$cfg/plugins/cache/ponytail/ponytail/*/hooks/ponytail-statusline.sh")
printf '%s' "$cave${cave:+${pony:+ }}$pony"
exit 0
