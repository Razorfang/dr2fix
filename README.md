# dr2fix

This script will allow you to play Danganronpa 2 on Linux systems. Thanks to the answers on this steam thread (https://steamcommunity.com/app/413410/discussions/2/3201495011985278765), I found out that the reason was due to the game using static libraries.

The error I got was the following:

```console
./Launcher: /lib/i386-linux-gnu/libpthread.so.0: version `GLIBC_PRIVATE' not found (required by ./lib/librt.so.1)
```

The issue is that the symbol ***GLIBC_PRIVATE*** is required by the static library ***librt***, but the version of libpthread my system runs does not have that symbol defined.

By removing the libraries that come bundled with the game, this forces the game to use your system's libraries, which should not have any such incompatabilities between them.

This project will remove all the static libraries from Steam's installation of Danganronpa 2, and thus fix the launcher issue.
