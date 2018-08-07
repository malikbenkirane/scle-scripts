# SCLE: sensible command line environment

For the real people and by sensible individuals.

I propose a set from at most only NIX/GNU-friendly programs and at most only
POSIX shell scripts to interact well with the non bloating tools you could have
on your system.   It still is good to read the manuals (GNU's documentation is
astonishing).  Give it some time to reach knowledge above your sensibility).

# How ?

`make` would copy all the scripts listed in the Makefile's `SCRIPTS` variable
in `$HOME/.local/bin` and rename them so they don't have the `.sh` suffix
anymore.

Therefore if `$HOME/.local/bin` is in the `PATH` in your environement
you could run any of the sensible scripts documented below
(see [Sensible Scripts](#Sensible_Scripts)).

# Rocking programs

- `screen - screen manager with VT100/ANSI terminal emulation` ;
- `fzf - a command-line fuzzy finder` and alternatively,
- `fzy - a fuzzy text selector menu for the terminal` ;
- `bash - GNU Bourne-Again SHell`

# Miscellenaous programs

- `mcee - task master for work ceremonies`, [about mcee][1]

# Rocking projects

- [gruvbox][2] and [gruvbox-contrib][3]

# Sensible Scripts

- `scls -  screen clear; screen list`
- `mc - wrapper above mcee`, [about mcee][1]
- `fzfc - fc-list fonts family names fuzzy search`
- `path - list what is available in PATH`
- `fzh - bash history fuzzy search`
- `b16 - base16 list colorschemes`

[1]: https://github.com/malikbenkirane/mcee.git
[2]: https://github.com/morhetz/gruvbox
[3]: https://github.com/morhetz/gruvbox-contrib
