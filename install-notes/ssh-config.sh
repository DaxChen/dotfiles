# enable ssh client keepalives
# this will send an ssh keepalive every 60 seconds
ServerAliveInterval 60

# github example
Host github.com
  HostName github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/github_rsa

# alias example
Host foo
  HostName 123.456.789.012
  User dax
  PubkeyAuthentication yes
  AddKeysToAgent yes
  UseKeychain yes

# wildcard
Host *.cloudlab.us
  User daxchen
  IdentityFile ~/.ssh/cloudlab_rsa
