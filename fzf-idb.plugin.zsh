_fzf_complete_idb() {
  ARGS="$@"

  if [[ $ARGS == 'idb boot'* ]]; then
    _fzf_complete --multi --reverse --prompt="ios> " -- "$@" < <(
      idb list-targets |
      cut -d'|' -f-1-2 |
      column -s '|' -t
    )
  fi

}

_fzf_complete_idb_post() {
  # Need simulator command because idb does not open it automatically
  awk '{print $NF" --log INFO && open -a simulator"}'
}

[ -n "$BASH" ] && complete -F _fzf_complete_idb -o default -o bashdefault idb