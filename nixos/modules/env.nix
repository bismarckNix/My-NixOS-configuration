{
  environment.etc."profile.d/clash-verge".text = ''
    export WEBKIT_DISABLE_COMPOSITING_MODE=1
  '';

  environment.variables.SSH_AUTH_SOCK = "/run/user/1000/ssh-agent";
}