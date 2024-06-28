# Rewrites of GNU Utilities (2024-06-27)

There seems to be a modern trend of rewriting common GNU utilities, especially in Rust. The GNU utils have been rewritten before, most notably as [BusyBox](https://www.busybox.net/), the GNU core utils as a single binary meant to be used in extremely small embedded Linux environments. However, Rust seems to be a popular language used to write these newer ones, evidently because Rust is a new darling language. However it seems to have a newfound relevance as rust code was [recently added to the Linux kernel](https://rust-for-linux.com/).
<br>
These rewrites often offer improved functionality over their much older counterparts, have more human readable options, syntax, and outputs, and some even boast greater efficiency and speed. Now, if true, these improvements are likely never human detectable. No person will likely ever *feel* a difference in speed at a cli, but it is fun to note. Despite these improvements these rewrites will likely never gain widespread use these the originals are already installed and countless scripts and other tools already depend on their existence. But a poweruser who wants to have fun and utilize newer, more powerful and intuitive tools, should have at it. I'd actually recommend many of them, they're amazing. I'd just caution these users to not come too accustomed to using them as if they ever want to become a professional, they'll immediately encounter a situation where only GNU utils are at their disposal. I definitely have to keep this in mind when either using a rewrite or my own aliases.
<br>In this post, I'm going list the ones I personally use and others I've never tried but am interested in.

---

## [bat](https://github.com/sharkdp/bat)
A `cat` clone with syntax highlighting and Git integration.  
![bat](https://camo.githubusercontent.com/be35879c510cea3111901d01e4af4d7e8f38fbb7c56a49ca711f07edf1b2d6fd/68747470733a2f2f696d6775722e636f6d2f724773646e44652e706e67)

## [exa](https://github.com/ogham/exa)
A modern replacement for `ls`.  
![exa](https://raw.githubusercontent.com/ogham/exa/master/screenshots.png)

## [lsd](https://github.com/Peltoche/lsd)
The next gen file listing command. Backwards compatible with `ls`.  
![lsd](https://raw.githubusercontent.com/Peltoche/lsd/assets/screen_lsd.png)

## [delta](https://github.com/dandavison/delta)
A viewer for `git` and `diff` output  
![delta](https://user-images.githubusercontent.com/52205/86275526-76792100-bba1-11ea-9e78-6be9baa80b29.png)

## [dust](https://github.com/bootandy/dust)
A more intuitive version of `du` written in rust.  
![dust](https://user-images.githubusercontent.com/200613/90223722-e0c2e980-de0e-11ea-8c75-343273fed6f3.png)

## [duf](https://github.com/muesli/duf)
A better `df` alternative  
![duf](https://raw.githubusercontent.com/muesli/duf/master/duf.png)

## [broot](https://github.com/Canop/broot)
A new way to see and navigate directory `tree`s  
![broot](https://raw.githubusercontent.com/Canop/broot/master/website/docs/img/20200629-overview.png)

## [fd](https://github.com/sharkdp/fd)
A simple, fast and user-friendly alternative to `find`.  
![fd](https://raw.githubusercontent.com/sharkdp/fd/master/doc/screencast.svg)

## [ripgrep](https://github.com/BurntSushi/ripgrep)
An extremely fast alternative to `grep` that respects your gitignore  
![ripgrep](https://user-images.githubusercontent.com/200613/90223748-ecaeab80-de0e-11ea-9140-ac9219f5747c.gif)

## [ag](https://github.com/ggreer/the_silver_searcher)
A code searching tool similar to `ack`, but faster.  
![ag](https://cdn-ak.f.st-hatena.com/images/fotolife/s/sona-zip/20130531/20130531223246_original.png?1370007170)

## [fzf](https://github.com/junegunn/fzf)
A general purpose command-line fuzzy finder.  
![fzf](https://raw.githubusercontent.com/junegunn/i/master/fzf-preview.png)

## [mcfly](https://github.com/cantino/mcfly)
Fly through your shell `history`. Great Scott!  
![mcfly](https://raw.githubusercontent.com/cantino/mcfly/master/docs/screenshot.png)

## [choose](https://github.com/theryangeary/choose)
A human-friendly and fast alternative to `cut` and (sometimes) `awk`  
![choose](https://asciinema.org/a/315932.png)

## [jq](https://github.com/stedolan/jq)
`sed` for JSON data.  
![jq](https://blog.noenieto.com/media/gnome-shell-screenshot-VMABUZ.png)

## [sd](https://github.com/chmln/sd)
An intuitive find & replace CLI (`sed` alternative).  
![sd](https://rest-reminder.easiestsoft.com/web/command-line-search-replace-string-in-file/img/regular-expression-replace-string-in-file.png)

## [cheat](https://github.com/cheat/cheat)
Create and view interactive cheatsheets on the command-line.  
![cheat](https://static.haydenjames.io/wp-content/uploads/2020/09/cheat-command-line-github-868x478.png)

## [tldr](https://github.com/tldr-pages/tldr)
A community effort to simplify `man` pages with practical examples.  
![tldr](https://raw.githubusercontent.com/tldr-pages/tldr/master/images/tldr.svg)

## [bottom](https://github.com/ClementTsang/bottom)
Yet another cross-platform graphical process/system monitor.  
![bottom](https://raw.githubusercontent.com/ClementTsang/bottom/master/assets/demo.gif)

## [glances](https://github.com/nicolargo/glances)
Glances an Eye on your system. A `top`/`htop` alternative for GNU/Linux, BSD, Mac OS and Windows operating systems.  
![glances](https://raw.githubusercontent.com/nicolargo/glances/develop/docs/_static/glances-summary.png)

## [gtop](https://github.com/aksakalli/gtop)
System monitoring dashboard for terminal.  
![gtop](https://raw.githubusercontent.com/aksakalli/gtop/master/img/demo.gif)

## [hyperfine](https://github.com/sharkdp/hyperfine)
A command-line benchmarking tool.  
![hyperfine](https://camo.githubusercontent.com/88a0cb35f42e02e28b0433d4b5e0029e52e723d8feb8df753e1ed06a5161db56/68747470733a2f2f692e696d6775722e636f6d2f7a31394f5978452e676966)

## [gping](https://github.com/orf/gping)
`ping`, but with a graph.  
![gping](https://raw.githubusercontent.com/orf/gping/master/images/readme-example.gif)

## [procs](https://github.com/dalance/procs)
A modern replacement for `ps` written in Rust.  
![procs](https://user-images.githubusercontent.com/200613/90223676-c8eb6580-de0e-11ea-8e3e-fea30f173aab.png)

## [httpie](https://github.com/httpie/httpie)
A modern, user-friendly command-line HTTP client for the API era.  
![httpie](https://raw.githubusercontent.com/httpie/httpie/master/docs/httpie-animation.gif)

## [curlie](https://github.com/rs/curlie)
The power of `curl`, the ease of use of `httpie`.  
![curlie](https://raw.githubusercontent.com/rs/curlie/master/doc/get.png)

## [xh](https://github.com/ducaale/xh)
A friendly and fast tool for sending HTTP requests. It reimplements as much as possible of HTTPie's excellent design, with a focus on improved performance.  
![xh](https://raw.githubusercontent.com/ducaale/xh/master/assets/xh-demo.gif)

## [zoxide](https://github.com/ajeetdsouza/zoxide)
A smarter `cd` command inspired by `z`.  
![zoxide](https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/contrib/tutorial.webp)

## [dog](https://github.com/ogham/dog)
A user-friendly command-line DNS client. `dig` on steroids  
![dog](https://raw.githubusercontent.com/ogham/dog/master/dog-screenshot.png)

