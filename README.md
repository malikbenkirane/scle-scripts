# scle: sanitized command line environment

By sensible people and for the real people.

I propose a set from at most only NIX/GNU-friendly programs and at most only
POSIX shell scripts to interact well with the non bloating tools you could have
on your system.   It still is good to read the manuals (GNU's documentation is
astonishing).  Give it some time and reach upper knowledges.

# see also

The list below is about more or less accomplished similar initiatives

- [bash-sensible][5] - "an attempt at saner Bash defaults"
- [aliases][6] - "Dynamic aliases based on the directory you;re in"
- [bash-it][7] - "A community bash framework"
- [hstr][8] - a C written history suggestion box (for both bash and zsh)
  but you could choose the hereby `fzh`:)
- [bpkg][9] - a bash package manager
  (and browse available packages [by category][10] or [by tag][11])
- [basher][12] - a bash package manager for scripts and functions


To dig deeper see also [terminals-are-sexy (hosted with <3 on github.com)][4]

# toc

1. [scle usage](#scle_usage)
2. [rocking programs list *and potentially requirements*](#rocking_programs)
3. [miscellenaous programs *and potentially requirements too*
   ](#miscellenaous_programs)
4. [rocking projects *that might also be required*
   ](#rocking_projects)
5. [scripts index](#scripts_index)

# scle usage

`make` would copy all the scripts listed in the Makefile's `SCRIPTS` variable
in `$HOME/.local/bin` and rename them so they don't keep the `.sh` suffix.

Therefore if `$HOME/.local/bin` is in the `PATH` in your environement
you could run any of the sensible scripts documented below
(see [Sensible Scripts](#Sensible_Scripts)).

# rocking programs

- `abduco - terminal session manager`
- `screen - screen manager with VT100/ANSI terminal emulation` ;
- `fzf - a command-line fuzzy finder` and alternatively,
- `fzy - a fuzzy text selector menu for the terminal` ;
- `bash - GNU Bourne-Again SHell`

**As Requirements ?**

In order to use scle scripts above listed programs may be required.
Thus look at the script header you want to use to determine which ones are
required for your use.

# miscellenaous programs

- `mcee - task master for work ceremonies`, [about mcee][1]

# rocking projects

- [gruvbox][2] and [gruvbox-contrib][3]
- `alacritty - a cross-platform, gpu-accelerated terminal emulator`

# sensible scripts index

- `scls -  screen clear; screen list`
- `mc - wrapper above mcee`, [about mcee][1]
- `fzfc - fc-list fonts family names fuzzy search`
- `path - list what is available in PATH`
- `fzh - bash history fuzzy search`
- `b16 - base16 list colorschemes`
- `alacolors - let me sed alacritty.yml colors for you`

[1]: https://github.com/malikbenkirane/mcee.git
[2]: https://github.com/morhetz/gruvbox
[3]: https://github.com/morhetz/gruvbox-contrib
[4]: https://github.com/k4m4/terminals-are-sexy#table-of-contents
[5]: https://github.com/mrzool/bash-sensible
[6]: https://github.com/sebglazebrook/aliases
[7]: https://github.com/Bash-it/bash-it
[8]: https://github.com/dvorka/hstr
[9]: https://www.bpkg.sh/
[10]: https://www.bpkg.sh/packages/category/
[11]: https://www.bpkg.sh/packages/tag/
[12]: https://github.com/basherpm/basher
