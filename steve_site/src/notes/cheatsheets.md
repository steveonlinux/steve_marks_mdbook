# Cheatsheet DUMP

# Bash Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `ls`                                     | List directory contents                                   |
| `cd`                                     | Change directory                                          |
| `pwd`                                    | Print working directory                                   |
| `cp source destination`                  | Copy files or directories                                 |
| `mv source destination`                  | Move/rename files or directories                          |
| `rm file`                                | Remove files                                              |
| `mkdir directory`                        | Create a new directory                                    |
| `rmdir directory`                        | Remove an empty directory                                 |
| `echo "text"`                            | Print text to the terminal                                |
| `cat file`                               | Concatenate and display file content                      |
| `less file`                              | View file content one screen at a time                    |
| `grep "pattern" file`                    | Search for a pattern in a file                            |
| `find path -name "pattern"`              | Find files and directories                                |
| `ps aux`                                 | Display currently running processes                       |
| `kill PID`                               | Kill a process by PID                                     |
| `top`                                    | Display and update sorted process list                    |
| `chmod permissions file`                 | Change file permissions                                   |
| `chown user:group file`                  | Change file owner and group                               |
| `df -h`                                  | Display disk usage in human-readable format               |
| `du -sh directory`                       | Display directory size in human-readable format           |
| `ln -s target link_name`                 | Create a symbolic link                                    |
| `alias name='command'`                   | Create an alias for a command                             |
| `export VARIABLE=value`                  | Set an environment variable                               |
| `history`                                | Show command history                                      |
| `tar -czf archive.tar.gz file`           | Create a compressed archive using gzip                    |
| `tar -xzf archive.tar.gz`                | Extract a compressed archive using gzip                   |
| `uptime`                                 | Show how long the system has been running                 |
| `whoami`                                 | Display the current username                              |
| `sudo command`                           | Execute a command as the superuser                        |
| `ssh user@host`                          | Connect to a remote host via SSH                          |
| `scp source user@host:destination`       | Copy files over SSH                                       |
| `crontab -e`                             | Edit cron jobs                                            |
| `jobs`                                   | List background jobs                                      |
| `bg job_id`                              | Resume a background job                                   |
| `fg job_id`                              | Bring a background job to the foreground                  |
| `nohup command &`                        | Run a command immune to hangups                           |
| `diff file1 file2`                       | Compare the contents of two files                         |
| `source file`                            | Read and execute commands from a file in the current shell|

# Redirection Cheatsheet

| Command                             | Description                                                                 |
|-------------------------------------|-----------------------------------------------------------------------------|
| `command > file`                    | Redirect standard output (stdout) to a file (overwrite)                     |
| `command >> file`                   | Redirect standard output (stdout) to a file (append)                        |
| `command 2> file`                   | Redirect standard error (stderr) to a file (overwrite)                      |
| `command 2>> file`                  | Redirect standard error (stderr) to a file (append)                         |
| `command &> file`                   | Redirect both standard output (stdout) and standard error (stderr) to a file (overwrite) |
| `command &>> file`                  | Redirect both standard output (stdout) and standard error (stderr) to a file (append)    |
| `command < file`                    | Redirect input from a file                                                  |
| `command <<< "string"`              | Redirect a string as input                                                  |
| `command1 \| command2`               | Use the output of command1 as input for command2 (pipe)                     |
| `command1 \|& command2`              | Pipe both stdout and stderr of command1 to command2 (bash 4.0+)             |
| `command > /dev/null`               | Discard standard output (stdout)                                            |
| `command 2> /dev/null`              | Discard standard error (stderr)                                             |
| `command &> /dev/null`              | Discard both standard output (stdout) and standard error (stderr)           |
| `command > file 2>&1`               | Redirect stdout to a file and stderr to the same file                       |
| `command 2>&1 > file`               | Redirect stderr to the current stdout, then redirect stdout to a file       |
| `command1 2>&1 \| command2`          | Redirect both stdout and stderr of command1 to command2                     |
| `command > file1 2> file2`          | Redirect stdout to file1 and stderr to file2                                |
| `command < file1 > file2`           | Redirect input from file1 and output to file2                               |
| `exec > file`                       | Redirect all subsequent stdout in the script to a file                      |
| `exec 2> file`                      | Redirect all subsequent stderr in the script to a file                      |
| `exec > /dev/tty`                   | Restore stdout to the terminal                                              |
| `exec 2> /dev/tty`                  | Restore stderr to the terminal                                              |
| `command1 \| tee file`               | Pipe output of command1 to file and also display it on the terminal         |
| `command1 \| tee -a file`            | Pipe output of command1 to file (append) and also display it on the terminal|
| `command << EOF`                    | Here document: redirect multiple lines of input to a command until EOF      |
| `command <<- EOF`                   | Here document with leading tab strip: redirect input until EOF              |
| `command <&-`                       | Close standard input (stdin)                                                |
| `command >&-`                       | Close standard output (stdout)                                              |
| `command 2>&-`                      | Close standard error (stderr)                                               |


# Important System Directories and Files

## `/etc`
| Directory/File                      | Description                                                                 |
|-------------------------------------|-----------------------------------------------------------------------------|
| `/etc/passwd`                       | User account information                                                    |
| `/etc/shadow`                       | Secure user account information (passwords)                                 |
| `/etc/group`                        | Group account information                                                   |
| `/etc/gshadow`                      | Secure group account information                                            |
| `/etc/fstab`                        | Filesystem mount table                                                      |
| `/etc/hosts`                        | Static table lookup for hostnames                                           |
| `/etc/resolv.conf`                  | DNS server information                                                      |
| `/etc/hostname`                     | System's hostname                                                           |
| `/etc/sysconfig/network`            | Basic network configuration                                                 |
| `/etc/sysconfig/network-scripts/`   | Network scripts and configuration files                                     |
| `/etc/crontab`                      | Cron job schedule                                                           |
| `/etc/cron.d/`                      | Additional cron job schedules                                               |
| `/etc/ssh/sshd_config`              | SSH server configuration                                                    |
| `/etc/sudoers`                      | sudo configuration file                                                     |
| `/etc/systemd/system/`              | Systemd unit files for services and targets                                 |
| `/etc/selinux/config`               | SELinux configuration file                                                  |
| `/etc/yum.conf`                     | YUM package manager configuration                                           |
| `/etc/yum.repos.d/`                 | Repository configuration files for YUM                                      |

## `/var`
| Directory/File                      | Description                                                                 |
|-------------------------------------|-----------------------------------------------------------------------------|
| `/var/log/`                         | Directory containing log files                                              |
| `/var/log/messages`                 | General system log file                                                     |
| `/var/log/secure`                   | Security and authentication log                                             |
| `/var/log/audit/`                   | Audit log files                                                             |
| `/var/log/dmesg`                    | Kernel ring buffer log                                                      |
| `/var/log/httpd/`                   | Apache HTTP server logs                                                     |
| `/var/spool/cron/`                  | User crontab files                                                          |
| `/var/spool/mail/`                  | User mail files                                                             |
| `/var/lib/`                         | Variable state information                                                  |
| `/var/lib/mysql/`                   | MySQL database files                                                        |
| `/var/lib/pgsql/`                   | PostgreSQL database files                                                   |
| `/var/www/html/`                    | Default directory for web server content                                    |

## `/usr`
| Directory/File                      | Description                                                                 |
|-------------------------------------|-----------------------------------------------------------------------------|
| `/usr/bin/`                         | User binaries                                                               |
| `/usr/sbin/`                        | System binaries                                                             |
| `/usr/local/`                       | Local software and custom scripts                                           |
| `/usr/share/`                       | Shared data and resources for applications                                  |
| `/usr/lib/`                         | Libraries for binaries in `/usr/bin` and `/usr/sbin`                        |
| `/usr/lib64/`                       | 64-bit libraries                                                            |
| `/usr/include/`                     | Header files for C programming                                              |
| `/usr/src/`                         | Source code files                                                           |
| `/usr/share/doc/`                   | Documentation files for installed packages                                  |
| `/usr/share/man/`                   | Manual pages                                                                |

## `/boot`
| Directory/File                      | Description                                                                 |
|-------------------------------------|-----------------------------------------------------------------------------|
| `/boot/vmlinuz-`                    | Linux kernel image                                                          |
| `/boot/initramfs-`                  | Initial RAM filesystem                                                      |
| `/boot/grub2/`                      | GRUB 2 bootloader configuration and files                                   |
| `/boot/efi/`                        | EFI boot files                                                              |

## `/proc`
| Directory/File                      | Description                                                                 |
|-------------------------------------|-----------------------------------------------------------------------------|
| `/proc/cpuinfo`                     | CPU information                                                             |
| `/proc/meminfo`                     | Memory information                                                          |
| `/proc/version`                     | Kernel version                                                              |
| `/proc/cmdline`                     | Kernel command line                                                         |
| `/proc/devices`                     | Device information                                                          |
| `/proc/diskstats`                   | Disk statistics                                                             |
| `/proc/uptime`                      | System uptime                                                               |
| `/proc/loadavg`                     | System load average                                                         |
| `/proc/mounts`                      | Mounted filesystems                                                         |
| `/proc/partitions`                  | Partition information                                                       |
| `/proc/swaps`                       | Swap space utilization                                                      |
| `/proc/sys/`                        | Kernel tunable parameters                                                   |
| `/proc/net/`                        | Network status information                                                  |

## `/sys`
| Directory/File                      | Description                                                                 |
|-------------------------------------|-----------------------------------------------------------------------------|
| `/sys/class/`                       | Information about device classes                                            |
| `/sys/block/`                       | Information about block devices                                             |
| `/sys/fs/`                          | Filesystem information                                                      |
| `/sys/kernel/`                      | Kernel information and tunable parameters                                   |
| `/sys/module/`                      | Information about loaded kernel modules                                     |
| `/sys/devices/`                     | Information about devices                                                   |

## `/dev`
| Directory/File                      | Description                                                                 |
|-------------------------------------|-----------------------------------------------------------------------------|
| `/dev/sda`                          | First SCSI disk drive                                                       |
| `/dev/sdb`                          | Second SCSI disk drive                                                      |
| `/dev/tty`                          | Terminal devices                                                            |
| `/dev/null`                         | Null device (discard output)                                                |
| `/dev/random`                       | Random number generator                                                     |
| `/dev/urandom`                      | Non-blocking random number generator                                        |


# Vim Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `i`                                      | Enter insert mode                                         |
| `Esc`                                    | Exit insert mode                                          |
| `:w`                                     | Save the file                                             |
| `:q`                                     | Quit Vim                                                  |
| `:wq`                                    | Save and quit Vim                                         |
| `:q!`                                    | Quit without saving                                       |
| `:e filename`                            | Open a file                                               |
| `:n`                                     | Open the next file                                        |
| `:p`                                     | Open the previous file                                    |
| `/pattern`                               | Search for a pattern                                      |
| `n`                                      | Repeat the last search                                    |
| `N`                                      | Repeat the last search in the opposite direction          |
| `:s/old/new/g`                           | Replace all occurrences of `old` with `new` in the current line|
| `:%s/old/new/g`                          | Replace all occurrences of `old` with `new` in the file   |
| `yy`                                     | Yank (copy) the current line                              |
| `p`                                      | Paste the yanked text                                     |
| `dd`                                     | Delete the current line                                   |
| `u`                                      | Undo the last action                                      |
| `Ctrl-r`                                 | Redo the last undone action                               |
| `gg`                                     | Go to the first line of the file                          |
| `G`                                      | Go to the last line of the file                           |
| `0`                                      | Go to the beginning of the line                           |
| `$`                                      | Go to the end of the line                                 |
| `dG`                                     | Delete from the current line to the end of the file       |
| `v`                                      | Enter visual mode                                         |
| `V`                                      | Enter visual line mode                                    |
| `Ctrl-v`                                 | Enter visual block mode                                   |
| `:help`                                  | Open Vim help                                             |
| `:!command`                              | Execute an external command                               |
| `:r !command`                            | Read the output of a command into the current file        |
| `:set number`                            | Show line numbers                                         |
| `:set nonumber`                          | Hide line numbers                                         |
| `:syntax on`                             | Enable syntax highlighting                                |
| `:syntax off`                            | Disable syntax highlighting                               |

# tmux Cheatsheet

| Command                                     | Description                                                                |
|---------------------------------------------|----------------------------------------------------------------------------|
| `tmux new -s session_name`                  | Create a new session named `session_name`                                  |
| `tmux attach -t session_name`               | Attach to an existing session named `session_name`                         |
| `tmux list-sessions`                        | List all sessions                                                          |
| `tmux kill-session -t session_name`         | Kill the session named `session_name`                                      |
| `tmux new-window -n window_name`            | Create a new window named `window_name`                                    |
| `tmux split-window -h`                      | Split the current window horizontally                                      |
| `tmux split-window -v`                      | Split the current window vertically                                        |
| `tmux select-pane -t :0`                    | Select pane 0                                                              |
| `tmux resize-pane -L`                       | Resize the current pane to the left                                        |
| `tmux resize-pane -R`                       | Resize the current pane to the right                                       |
| `tmux resize-pane -U`                       | Resize the current pane upwards                                            |
| `tmux resize-pane -D`                       | Resize the current pane downwards                                          |
| `tmux kill-pane -t pane_number`             | Kill the pane with the specified `pane_number`                             |
| `tmux list-windows`                         | List all windows in the current session                                    |
| `tmux kill-window -t window_number`         | Kill the window with the specified `window_number`                         |
| `tmux rename-window new_name`               | Rename the current window to `new_name`                                    |
| `tmux list-panes`                           | List all panes in the current window                                       |
| `tmux swap-pane -s pane1 -t pane2`          | Swap the position of `pane1` and `pane2`                                   |
| `tmux move-pane -t target_pane`             | Move the current pane to `target_pane`                                     |
| `tmux set-option -g prefix C-a`             | Change the prefix key to `Ctrl-a`                                          |
| `tmux bind-key [key] [command]`             | Bind a key to a tmux command                                               |
| `tmux unbind-key [key]`                     | Unbind a key from a tmux command                                           |
| `tmux source-file ~/.tmux.conf`             | Reload the tmux configuration file                                         |
| `tmux save-buffer ~/buffer.txt`             | Save the tmux paste buffer to a file                                       |
| `tmux show-options -g`                      | Show all global options                                                    |
| `tmux display-message "message"`            | Display a message in the status line                                       |
| `tmux clock-mode`                           | Enter clock mode in the current pane                                       |
| `tmux list-keys`                            | List all key bindings                                                      |
| `tmux capture-pane -S -100`                 | Capture the last 100 lines of the current pane                             |
| `tmux show-environment`                     | Show the tmux environment variables                                        |
| `tmux detach-client -t session_name`        | Detach the client from `session_name`                                      |
| `tmux rename-session new_session_name`      | Rename the current session to `new_session_name`                           |
| `tmux rotate-window -U`                     | Rotate the current window upwards                                          |
| `tmux rotate-window -D`                     | Rotate the current window downwards                                        |
| `tmux list-clients`                         | List all clients                                                           |
| `tmux select-layout even-horizontal`        | Arrange panes in an even horizontal layout                                 |
| `tmux select-layout even-vertical`          | Arrange panes in an even vertical layout                                   |
| `tmux select-layout tiled`                  | Arrange panes in a tiled layout                                            |

# tmux Hotkeys Cheatsheet

| Hotkey                                      | Description                                                                |
|---------------------------------------------|----------------------------------------------------------------------------|
| `Ctrl-b`                                    | Default prefix key (can be changed)                                        |
| `Ctrl-b ?`                                  | List all key bindings                                                      |
| `Ctrl-b d`                                  | Detach from the current session                                            |
| `Ctrl-b c`                                  | Create a new window                                                        |
| `Ctrl-b ,`                                  | Rename the current window                                                  |
| `Ctrl-b w`                                  | List all windows                                                           |
| `Ctrl-b n`                                  | Move to the next window                                                    |
| `Ctrl-b p`                                  | Move to the previous window                                                |
| `Ctrl-b l`                                  | Move to the last (previously active) window                                |
| `Ctrl-b &`                                  | Kill the current window                                                    |
| `Ctrl-b %`                                  | Split the current pane vertically                                          |
| `Ctrl-b "`                                  | Split the current pane horizontally                                        |
| `Ctrl-b x`                                  | Kill the current pane                                                      |
| `Ctrl-b o`                                  | Switch to the next pane                                                    |
| `Ctrl-b ;`                                  | Switch to the last active pane                                             |
| `Ctrl-b q`                                  | Display pane numbers                                                       |
| `Ctrl-b z`                                  | Toggle pane zoom                                                           |
| `Ctrl-b {`                                  | Swap pane with the previous pane                                           |
| `Ctrl-b }`                                  | Swap pane with the next pane                                               |
| `Ctrl-b Space`                              | Toggle through layouts                                                     |
| `Ctrl-b Ctrl-o`                             | Rotate panes                                                               |
| `Ctrl-b t`                                  | Show a clock                                                               |
| `Ctrl-b m`                                  | Mark the current pane                                                      |
| `Ctrl-b '`                                  | Prompt for an index to switch to                                           |
| `Ctrl-b !`                                  | Break the current pane into a new window                                   |
| `Ctrl-b s`                                  | List all sessions                                                          |
| `Ctrl-b :`                                  | Enter the tmux command prompt                                              |
| `Ctrl-b [`                                  | Enter copy mode (scrollback buffer)                                        |
| `Ctrl-b ]`                                  | Paste the buffer                                                           |
| `Ctrl-b -`                                  | Split the window vertically                                                |
| `Ctrl-b =`                                  | Split the window horizontally                                              |
| `Ctrl-b f`                                  | Find window by text                                                         |
| `Ctrl-b r`                                  | Reload tmux configuration                                                  |

# SSH Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `ssh user@host`                          | Connect to a remote host                                  |
| `ssh -p port user@host`                  | Connect to a remote host on a specific port               |
| `ssh -i keyfile user@host`               | Connect using a specific private key file                 |
| `ssh-copy-id user@host`                  | Copy your public key to a remote host                     |
| `ssh-keygen -t rsa -b 4096`              | Generate a new RSA key pair                               |
| `ssh-add keyfile`                        | Add a private key to the SSH agent                        |
| `ssh-agent bash`                         | Start the SSH agent                                       |
| `scp source user@host:destination`       | Copy files to a remote host                               |
| `scp user@host:source destination`       | Copy files from a remote host                             |
| `rsync -avz source user@host:destination`| Sync files to a remote host                               |
| `rsync -avz user@host:source destination`| Sync files from a remote host                             |
| `ssh user@host command`                  | Execute a command on a remote host                        |
| `ssh -L local_port:remote_host:remote_port user@host`| Create an SSH tunnel (local forwarding)      |
| `ssh -R remote_port:local_host:local_port user@host`| Create an SSH tunnel (remote forwarding)     |
| `ssh -D local_port user@host`            | Create a dynamic SOCKS proxy                              |
| `~.`                                     | Terminate the SSH session                                 |
| `~C`                                     | Open command line interface during an SSH session         |
| `~&`                                     | Background the SSH session                                |
| `ssh -X user@host`                       | Enable X11 forwarding                                     |
| `ssh -v user@host`                       | Verbose mode (debugging)                                  |
| `ssh -vv user@host`                      | More verbose mode                                         |
| `ssh -q user@host`                       | Quiet mode (suppress warnings)                            |
| `ssh -f user@host command`               | Run SSH in the background                                 |
| `ssh -N user@host`                       | Do not execute a remote command                           |
| `ssh -o option=value user@host`          | Set an option for the SSH connection                      |
| `ssh -c cipher user@host`                | Specify the cipher to use                                 |
| `ssh-keyscan host`                       | Retrieve SSH public keys from a host                      |
| `sshfs user@host:remote_dir local_dir`   | Mount a remote directory over SSH                         |

# Git Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `git init`                               | Initialize a new Git repository                           |
| `git clone repository_url`               | Clone an existing repository                              |
| `git status`                             | Show the status of the working directory                  |
| `git add file`                           | Stage changes for commit                                  |
| `git commit -m "message"`                | Commit staged changes with a message                      |
| `git push origin branch`                 | Push commits to the remote repository                     |
| `git pull origin branch`                 | Pull updates from the remote repository                   |
| `git fetch`                              | Fetch changes from the remote repository                  |
| `git merge branch`                       | Merge a branch into the current branch                    |
| `git branch`                             | List all branches                                         |
| `git branch branch_name`                 | Create a new branch                                       |
| `git checkout branch_name`               | Switch to a different branch                              |
| `git checkout -b branch_name`            | Create and switch to a new branch                         |
| `git log`                                | Show commit history                                       |
| `git log --oneline`                      | Show commit history in a condensed form                   |
| `git diff`                               | Show changes between commits, commit and working tree, etc|
| `git reset --hard commit`                | Reset the working directory and index to a specific commit|
| `git revert commit`                      | Revert a specific commit                                  |
| `git stash`                              | Stash changes in a dirty working directory                |
| `git stash pop`                          | Apply stashed changes                                     |
| `git remote -v`                          | Show remote repositories                                  |
| `git remote add name url`                | Add a remote repository                                   |
| `git tag`                                | List tags                                                 |
| `git tag tag_name`                       | Create a new tag                                          |
| `git rm file`                            | Remove a file from the working directory and index        |
| `git mv old_name new_name`               | Rename or move a file                                     |
| `git blame file`                         | Show what revision and author last modified each line     |
| `git show commit`                        | Show various types of objects                             |
| `git config --global user.name "name"`   | Set the global username                                   |
| `git config --global user.email "email"` | Set the global email                                      |
| `git rebase branch`                      | Reapply commits on top of another base tip                |
| `git cherry-pick commit`                 | Apply changes from a specific commit                      |
| `git bisect start`                       | Start binary search to find the commit that introduced a bug|
| `git archive --format zip --output file.zip HEAD` | Create a zip archive of the current branch      |
| `git gc`                                 | Cleanup unnecessary files and optimize the local repository|

# Systemd Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `systemctl start service`                | Start a service                                           |
| `systemctl stop service`                 | Stop a service                                            |
| `systemctl restart service`              | Restart a service                                         |
| `systemctl reload service`               | Reload a service's configuration                          |
| `systemctl enable service`               | Enable a service to start on boot                         |
| `systemctl disable service`              | Disable a service from starting on boot                   |
| `systemctl status service`               | Show the status of a service                              |
| `systemctl is-active service`            | Check if a service is active                              |
| `systemctl is-enabled service`           | Check if a service is enabled                             |
| `systemctl list-units`                   | List all loaded units                                     |
| `systemctl list-unit-files`              | List installed unit files                                 |
| `systemctl daemon-reload`                | Reload systemd manager configuration                      |
| `journalctl -u service`                  | View logs for a specific service                          |
| `journalctl -f`                          | Follow the system journal                                 |
| `systemctl mask service`                 | Mask a service to prevent it from being started           |
| `systemctl unmask service`               | Unmask a service                                          |
| `systemctl set-default target`           | Set the default target (e.g., multi-user, graphical)      |
| `systemctl get-default`                  | Get the current default target                            |
| `systemctl isolate target`               | Change to a different target                              |
| `systemctl show service`                 | Show properties of a unit                                 |
| `systemctl cat service`                  | Show the unit file of a service                           |
| `systemctl edit service`                 | Edit a unit file (creates an override file)               |
| `systemctl reset-failed service`         | Reset the failed state of a unit                          |
| `systemctl poweroff`                     | Power off the system                                      |
| `systemctl reboot`                       | Reboot the system                                         |
| `systemctl suspend`                      | Suspend the system                                        |
| `systemctl hibernate`                    | Hibernate the system                                      |
| `systemctl hybrid-sleep`                 | Hibernate and suspend the system                          |
| `systemd-analyze blame`                  | Show the time taken to initialize each service            |
| `systemd-analyze critical-chain`         | Show the critical chain of units                          |
| `systemd-analyze plot > plot.svg`        | Generate a graphical representation of the boot process   |
| `timedatectl`                            | Control the system time and date                          |
| `hostnamectl`                            | Control the system hostname                               |
| `localectl`                              | Control the system locale                                 |
| `loginctl`                               | Control the system logind                                 |

# Docker Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `docker ps`                              | List running containers                                   |
| `docker ps -a`                           | List all containers                                       |
| `docker images`                          | List all images                                           |
| `docker pull image`                      | Pull an image from a registry                             |
| `docker run image`                       | Run a container from an image                             |
| `docker run -d image`                    | Run a container in detached mode                          |
| `docker run -it image`                   | Run a container in interactive mode                       |
| `docker stop container`                  | Stop a running container                                  |
| `docker start container`                 | Start a stopped container                                 |
| `docker restart container`               | Restart a container                                       |
| `docker rm container`                    | Remove a container                                        |
| `docker rmi image`                       | Remove an image                                           |
| `docker exec -it container bash`         | Execute a command in a running container                  |
| `docker logs container`                  | View logs of a container                                  |
| `docker build -t image .`                | Build an image from a Dockerfile                          |
| `docker-compose up`                      | Start containers defined in docker-compose.yml            |
| `docker-compose down`                    | Stop and remove containers defined in docker-compose.yml  |
| `docker network ls`                      | List all networks                                         |
| `docker network create network`          | Create a new network                                      |
| `docker volume ls`                       | List all volumes                                          |
| `docker volume create volume`            | Create a new volume                                       |
| `docker inspect container`               | Display detailed information on a container               |
| `docker tag source_image target_image`   | Tag an image                                              |
| `docker push image`                      | Push an image to a registry                               |
| `docker pull image`                      | Pull an image from a registry                             |
| `docker save -o image.tar image`         | Save an image to a tar file                               |
| `docker load -i image.tar`               | Load an image from a tar file                             |
| `docker stats container`                 | Display resource usage statistics of a container          |
| `docker top container`                   | Display the running processes of a container              |
| `docker cp source_path container:dest_path`| Copy files/folders between a container and the local filesystem |
| `docker update --cpus=2 container`       | Update resource limits of a container                     |
| `docker history image`                   | Show the history of an image                              |
| `docker diff container`                  | Inspect changes to files or directories on a container’s filesystem |
| `docker export container -o container.tar`| Export a container’s filesystem to a tar archive        |
| `docker import file.tar`                 | Import a tarball to create a filesystem image             |

# Kubernetes Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `kubectl get nodes`                      | List all nodes                                            |
| `kubectl get pods`                       | List all pods in the default namespace                    |
| `kubectl get pods -n namespace`          | List all pods in a specific namespace                     |
| `kubectl get services`                   | List all services in the default namespace                |
| `kubectl describe pod pod_name`          | Show detailed information about a specific pod            |
| `kubectl logs pod_name`                  | Print the logs of a specific pod                          |
| `kubectl exec -it pod_name -- bash`      | Execute a command in a running pod                        |
| `kubectl apply -f file.yaml`             | Apply a configuration file                                |
| `kubectl create -f file.yaml`            | Create resources from a configuration file                |
| `kubectl delete -f file.yaml`            | Delete resources defined in a configuration file          |
| `kubectl scale --replicas=3 deployment/app`| Scale a deployment to 3 replicas                        |
| `kubectl rollout status deployment/app`  | Check the rollout status of a deployment                  |
| `kubectl rollout undo deployment/app`    | Roll back a deployment                                    |
| `kubectl expose deployment app --type=LoadBalancer --port=80`| Expose a deployment as a service                        |
| `kubectl port-forward pod_name 8080:80`  | Forward a local port to a port on a pod                   |
| `kubectl get namespaces`                 | List all namespaces                                       |
| `kubectl create namespace namespace`     | Create a new namespace                                    |
| `kubectl config set-context --current --namespace=namespace`| Set the current namespace                              |
| `kubectl get events`                     | List all events                                           |
| `kubectl get secrets`                    | List all secrets in the default namespace                 |
| `kubectl get configmaps`                 | List all configmaps in the default namespace              |
| `kubectl describe node node_name`        | Show detailed information about a specific node           |
| `kubectl get deployment`                 | List all deployments in the default namespace             |
| `kubectl describe service service_name`  | Show detailed information about a specific service        |
| `kubectl set image deployment/app app=nginx:1.16`| Update the image of a deployment                       |
| `kubectl edit deployment app`            | Edit a resource on the server                             |
| `kubectl delete pod pod_name`            | Delete a specific pod                                     |
| `kubectl delete service service_name`    | Delete a specific service                                 |
| `kubectl apply -f https://k8s.io/examples/application/deployment.yaml`| Apply a deployment from a URL                         |
| `kubectl get pvc`                        | List all persistent volume claims                         |
| `kubectl get pv`                         | List all persistent volumes                               |
| `kubectl cordon node_name`               | Mark a node as unschedulable                              |
| `kubectl drain node_name`                | Drain a node by evicting all pods                         |
| `kubectl taint nodes node_name key=value:NoSchedule`| Taint a node to prevent scheduling                      |

# Ansible Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `ansible all -m ping`                    | Ping all hosts                                            |
| `ansible-playbook playbook.yaml`         | Run a playbook                                            |
| `ansible all -a "command"`               | Run a command on all hosts                                |
| `ansible all -m setup`                   | Gather facts from all hosts                               |
| `ansible all -m yum -a "name=package state=present"`| Install a package using yum                           |
| `ansible all -m copy -a "src=/local/path dest=/remote/path"`| Copy files to remote hosts                       |
| `ansible-vault create secret.yaml`       | Create an encrypted file                                  |
| `ansible-vault edit secret.yaml`         | Edit an encrypted file                                    |
| `ansible-vault decrypt secret.yaml`      | Decrypt an encrypted file                                 |
| `ansible-playbook --ask-vault-password playbook.yaml`| Run a playbook with vault password                    |
| `ansible-galaxy install role_name`       | Install a role from Ansible Galaxy                        |
| `ansible-galaxy list`                    | List installed roles                                      |
| `ansible-doc -l`                         | List all modules                                          |
| `ansible-doc module_name`                | Show documentation for a specific module                  |
| `ansible-playbook -i inventory playbook.yaml`| Run a playbook with a specific inventory             |
| `ansible all -m service -a "name=service state=started"`| Manage services on remote hosts                      |
| `ansible all -m file -a "path=/remote/path state=directory"`| Ensure a directory exists on remote hosts       |
| `ansible all -m user -a "name=username state=present"`| Ensure a user exists on remote hosts                 |
| `ansible-playbook --check playbook.yaml` | Run a playbook in check mode                              |
| `ansible-playbook --diff playbook.yaml`  | Show changes made by the playbook                         |
| `ansible-playbook -e "variable=value" playbook.yaml`| Pass extra variables to the playbook                 |
| `ansible-playbook --tags "tag_name" playbook.yaml`| Run playbook tasks with specific tags                  |
| `ansible-inventory --list -i inventory`  | List inventory hosts                                      |
| `ansible-inventory --graph -i inventory` | Show inventory graph                                      |
| `ansible-config dump`                    | Dump the Ansible configuration                            |
| `ansible-config list`                    | List all Ansible configuration options                    |
| `ansible-pull -U repo_url`               | Pull and run a playbook from a remote Git repository      |
| `ansible-playbook --limit "host_pattern" playbook.yaml`| Limit playbook run to specific hosts               |
| `ansible-playbook --start-at-task "task_name" playbook.yaml`| Start playbook run at a specific task             |
| `ansible-galaxy init role_name`          | Initialize a new role                                     |

# iptables Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `iptables -L`                            | List all rules                                            |
| `iptables -A chain -j target`            | Append a rule to a chain                                  |
| `iptables -I chain rule_num -j target`   | Insert a rule at a specific position in a chain           |
| `iptables -D chain rule_num`             | Delete a rule from a chain by number                      |
| `iptables -F`                            | Flush all rules                                           |
| `iptables -X`                            | Delete all user-defined chains                            |
| `iptables -P chain target`               | Set the default policy for a chain                        |
| `iptables -N chain`                      | Create a new user-defined chain                           |
| `iptables -A INPUT -p tcp --dport port -j ACCEPT`| Allow incoming TCP traffic on a specific port        |
| `iptables -A OUTPUT -p tcp --sport port -j ACCEPT`| Allow outgoing TCP traffic on a specific port        |
| `iptables -A FORWARD -i interface -j ACCEPT`| Allow forwarding from a specific interface            |
| `iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT`| Allow established and related connections   |
| `iptables -A INPUT -s ip_address -j DROP`| Block traffic from a specific IP address                 |
| `iptables -A INPUT -p icmp -j ACCEPT`    | Allow ICMP (ping) traffic                                 |
| `iptables -A INPUT -p udp --dport port -j ACCEPT`| Allow incoming UDP traffic on a specific port        |
| `iptables -A INPUT -p tcp --dport 22 -j ACCEPT`| Allow SSH traffic                                         |
| `iptables -A INPUT -j REJECT`            | Reject all other incoming traffic                         |
| `iptables-save > /etc/iptables/rules.v4` | Save the current rules to a file                          |
| `iptables-restore < /etc/iptables/rules.v4`| Restore rules from a file                               |

# nftables Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `nft list ruleset`                       | List all rulesets                                         |
| `nft add table inet filter`              | Create a new table                                        |
| `nft add chain inet filter input { type filter hook input priority 0; }`| Create a new chain                                  |
| `nft add rule inet filter input ip saddr ip_address drop`| Drop traffic from a specific IP address              |
| `nft add rule inet filter input tcp dport port accept`| Allow incoming TCP traffic on a specific port       |
| `nft add rule inet filter input udp dport port accept`| Allow incoming UDP traffic on a specific port       |
| `nft add rule inet filter input icmp type echo-request accept`| Allow ICMP (ping) traffic                   |
| `nft add rule inet filter input ct state established,related accept`| Allow established and related connections      |
| `nft add rule inet filter input iifname interface accept`| Allow traffic from a specific interface           |
| `nft add rule inet filter output tcp sport port accept`| Allow outgoing TCP traffic on a specific port     |
| `nft add rule inet filter forward iifname interface oifname interface accept`| Allow forwarding between interfaces        |
| `nft delete rule inet filter input handle handle_number`| Delete a specific rule by handle number           |
| `nft delete chain inet filter input`     | Delete a chain                                       |
| `nft delete table inet filter`           | Delete a table                                       |
| `nft -f /etc/nftables.conf`              | Load rules from a configuration file                 |
| `nft save > /etc/nftables.conf`          | Save the current ruleset to a file                   |
| `nft -i /etc/nftables.conf`              | Load rules from a file interactively                 |
| `nft monitor`                            | Monitor changes to the ruleset                       |
| `nft add set inet filter blacklist { type ipv4_addr; }`| Create an IP set                                     |
| `nft add element inet filter blacklist { ip_address }`| Add an IP address to the set                        |
| `nft delete element inet filter blacklist { ip_address }`| Remove an IP address from the set                  |
| `nft add rule inet filter input ip saddr @blacklist drop`| Drop traffic from IP addresses in the set          |

# Cron Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `crontab -e`                             | Edit the current user's crontab                           |
| `crontab -l`                             | List the current user's crontab                           |
| `crontab -r`                             | Remove the current user's crontab                         |
| `crontab -u user -e`                     | Edit another user's crontab                               |
| `crontab -u user -l`                     | List another user's crontab                               |
| `crontab -u user -r`                     | Remove another user's crontab                             |
| `@reboot command`                        | Run once at startup                                       |
| `@yearly command`                        | Run once a year (0 0 1 1 *)                               |
| `@annually command`                      | Run once a year (0 0 1 1 *)                               |
| `@monthly command`                       | Run once a month (0 0 1 * *)                              |
| `@weekly command`                        | Run once a week (0 0 * * 0)                               |
| `@daily command`                         | Run once a day (0 0 * * *)                                |
| `@midnight command`                      | Run once a day (0 0 * * *)                                |
| `@hourly command`                        | Run once an hour (0 * * * *)                              |
| `* * * * * command`                      | Run every minute                                          |
| `*/5 * * * * command`                    | Run every 5 minutes                                       |
| `0 * * * * command`                      | Run at the beginning of every hour                        |
| `0 0 * * * command`                      | Run at midnight every day                                 |
| `0 0 1 * * command`                      | Run at midnight on the first of every month               |
| `0 0 1 1 * command`                      | Run at midnight on January 1st                            |
| `0 9 * * 1-5 command`                    | Run at 9 AM on weekdays                                   |
| `0 22 * * 1-5 command`                   | Run at 10 PM on weekdays                                  |
| `MAILTO="email@example.com"`             | Send cron job output to the specified email address       |
| `0 0 * * * /path/to/script.sh`           | Run a script daily at midnight                            |
| `0 5 * * * /path/to/backup.sh`           | Run a backup script daily at 5 AM                         |
| `*/10 * * * * /path/to/check.sh`         | Run a script every 10 minutes                             |
| `0 0 * * 0 /path/to/weekly.sh`           | Run a script weekly on Sundays at midnight                |
| `0 0 1 * * /path/to/monthly.sh`          | Run a script monthly on the first day at midnight         |
| `0 0 1 1 * /path/to/yearly.sh`           | Run a script yearly on January 1st at midnight            |

# awk Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `awk '{print}' file`                     | Print all lines in a file                                 |
| `awk '{print $1}' file`                  | Print the first field of each line                        |
| `awk '{print $1, $2}' file`              | Print the first and second fields of each line            |
| `awk '/pattern/ {print}' file`           | Print lines matching a pattern                            |
| `awk 'NR==line_number' file`             | Print a specific line number                              |
| `awk 'NR==start, NR==end' file`          | Print a range of lines                                    |
| `awk '{sum += $1} END {print sum}' file` | Sum the first field of all lines                          |
| `awk 'BEGIN {print "Header"} {print} END {print "Footer"}' file`| Add a header and footer to the output        |
| `awk -F, '{print $1}' file`              | Specify a field separator (comma in this case)            |
| `awk '{if ($1 > 10) print}' file`        | Print lines where the first field is greater than 10      |
| `awk '{gsub(/old/, "new"); print}' file` | Replace all occurrences of "old" with "new"               |
| `awk '{print NR, $0}' file`              | Print line numbers with output                            |
| `awk '{print length($0)}' file`          | Print the length of each line                             |
| `awk '{print $NF}' file`                 | Print the last field of each line                         |
| `awk '{print $(NF-1)}' file`             | Print the second to last field of each line               |
| `awk '{count[$1]++} END {for (word in count) print word, count[word]}' file`| Count occurrences of each word in the first field|
| `awk 'NR % 2 == 0 {print}' file`         | Print every second line                                   |
| `awk '{print toupper($0)}' file`         | Convert text to uppercase                                 |
| `awk '{print tolower($0)}' file`         | Convert text to lowercase                                 |
| `awk 'BEGIN {FS=":"; OFS="-"} {print $1, $2}' file`| Change input and output field separators           |

# sed Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `sed 's/old/new/' file`                  | Replace the first occurrence of "old" with "new"          |
| `sed 's/old/new/g' file`                 | Replace all occurrences of "old" with "new"               |
| `sed -i 's/old/new/g' file`              | Replace all occurrences in the file (in-place)            |
| `sed 's/old/new/2' file`                 | Replace the second occurrence of "old" with "new"         |
| `sed 's/old/new/gi' file`                | Replace all occurrences, case insensitive                 |
| `sed '1,3s/old/new/' file`               | Replace occurrences between lines 1 and 3                 |
| `sed '3s/old/new/' file`                 | Replace occurrences on the third line                     |
| `sed '/pattern/s/old/new/' file`         | Replace occurrences on lines matching a pattern           |
| `sed 's/^/prefix/' file`                 | Add a prefix to each line                                 |
| `sed 's/$/suffix/' file`                 | Add a suffix to each line                                 |
| `sed '/pattern/d' file`                  | Delete lines matching a pattern                           |
| `sed '3d' file`                          | Delete the third line                                     |
| `sed '1,3d' file`                        | Delete lines 1 through 3                                  |
| `sed '$d' file`                          | Delete the last line                                      |
| `sed -n '2,4p' file`                     | Print lines 2 through 4                                   |
| `sed -n '/pattern/p' file`               | Print lines matching a pattern                            |
| `sed -e 'command1' -e 'command2' file`   | Apply multiple commands                                   |
| `sed 's/.*\(pattern\).*/\1/' file`       | Extract and print a pattern                               |
| `sed 'y/abc/ABC/' file`                  | Translate characters                                      |
| `sed -i.bak 's/old/new/g' file`          | Replace all occurrences and create a backup file          |
| `sed '10q' file`                         | Quit after 10 lines                                       |
| `sed 's/\([0-9]\{3\}\)-\([0-9]\{2\}\)-\([0-9]\{4\}\)/\1\2\3/' file`| Remove dashes from SSN format                   |
| `sed 's/ *$//' file`                     | Remove trailing whitespace                                |
| `sed 's/[^[:alnum:]]//g' file`           | Remove all non-alphanumeric characters                    |

# grep Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `grep "pattern" file`                    | Search for a pattern in a file                            |
| `grep -i "pattern" file`                 | Case-insensitive search                                   |
| `grep -v "pattern" file`                 | Invert match, show lines that do not match                |
| `grep -r "pattern" directory`            | Recursively search in a directory                         |
| `grep -l "pattern" file`                 | Show file names containing the pattern                    |
| `grep -c "pattern" file`                 | Count occurrences of the pattern                          |
| `grep -n "pattern" file`                 | Show line numbers of matches                              |
| `grep -w "pattern" file`                 | Match whole words only                                    |
| `grep -A num "pattern" file`             | Show num lines after match                                |
| `grep -B num "pattern" file`             | Show num lines before match                               |
| `grep -C num "pattern" file`             | Show num lines around match                               |
| `grep -e "pattern1" -e "pattern2" file`  | Search for multiple patterns                              |
| `grep --exclude=*.txt "pattern" *`       | Exclude files matching a pattern                          |
| `grep --include=*.txt "pattern" *`       | Include only files matching a pattern                     |
| `grep -f patternfile file`               | Use patterns from a file                                  |
| `grep -q "pattern" file`                 | Quiet mode, return 0 if pattern is found                  |
| `grep --color=auto "pattern" file`       | Highlight matches in color                                |
| `grep -o "pattern" file`                 | Print only matching parts of a line                       |
| `grep --line-buffered "pattern" file`    | Use line buffering (useful for streaming)                 |

# find Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `find . -name "filename"`                | Find files by name                                        |
| `find . -iname "filename"`               | Find files by name (case-insensitive)                     |
| `find . -type d -name "dirname"`         | Find directories by name                                  |
| `find . -type f -name "filename"`        | Find regular files by name                                |
| `find . -size +1M`                       | Find files larger than 1MB                                |
| `find . -size -1M`                       | Find files smaller than 1MB                               |
| `find . -mtime -1`                       | Find files modified in the last day                       |
| `find . -atime -1`                       | Find files accessed in the last day                       |
| `find . -user username`                  | Find files owned by a specific user                       |
| `find . -group groupname`                | Find files owned by a specific group                      |
| `find . -perm 644`                       | Find files with specific permissions                      |
| `find . -exec command {} \;`             | Execute a command on each file found                      |
| `find . -exec rm {} \;`                  | Delete all files found                                    |
| `find . -print`                          | Print the full file names                                 |
| `find . -maxdepth 1 -name "filename"`    | Find files in the current directory only                  |
| `find . -mindepth 2 -name "filename"`    | Find files not in the top-level directory                 |
| `find . -type l`                         | Find symbolic links                                       |
| `find . -type l -xtype f`                | Find broken symbolic links                                |
| `find . -empty`                          | Find empty files and directories                          |
| `find . -newer file`                     | Find files newer than a specific file                     |
| `find . -name "*.txt" -or -name "*.md"`  | Find files matching multiple patterns                     |
| `find . -path "./dir/*" -prune -o -name "*.txt" -print`| Exclude a directory and find files                   |
| `find . -ctime +10`                      | Find files changed more than 10 days ago                  |
| `find . -cmin -60`                       | Find files changed in the last 60 minutes                 |
| `find / -type f 2>/dev/null`             | Find all files on the system, ignoring permission errors  |

# Screen Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `screen`                                 | Start a new screen session                                |
| `screen -S session_name`                 | Start a new session named `session_name`                  |
| `screen -ls`                             | List all screen sessions                                  |
| `screen -r session_name`                 | Resume a detached session named `session_name`            |
| `screen -d -r session_name`              | Detach and reattach to `session_name`                     |
| `screen -X -S session_name quit`         | Kill a session named `session_name`                       |
| `Ctrl-a d`                               | Detach from the current session                           |
| `Ctrl-a c`                               | Create a new window                                       |
| `Ctrl-a "`                               | List all windows                                          |
| `Ctrl-a 0`                               | Switch to window 0                                        |
| `Ctrl-a A`                               | Rename the current window                                 |
| `Ctrl-a n`                               | Switch to the next window                                 |
| `Ctrl-a p`                               | Switch to the previous window                             |
| `Ctrl-a k`                               | Kill the current window                                   |
| `Ctrl-a Ctrl-a`                          | Switch between the current and previous window            |
| `Ctrl-a S`                               | Split the screen horizontally                             |
| `Ctrl-a \|`                               | Split the screen vertically                               |
| `Ctrl-a tab`                             | Switch to the next region                                 |
| `Ctrl-a X`                               | Close the current region                                  |
| `Ctrl-a Q`                               | Close all regions except the current one                  |
| `Ctrl-a space`                           | Toggle between layouts                                    |
| `Ctrl-a :resize`                         | Resize the current region                                 |
| `Ctrl-a :fit`                            | Fit the current region to the screen                      |
| `Ctrl-a [ `                              | Enter copy mode                                           |
| `Ctrl-a ] `                              | Paste copied text                                         |
| `Ctrl-a ? `                              | Show key bindings help                                    |
| `Ctrl-a H `                              | Begin/end logging of the session                          |
| `Ctrl-a _ `                              | Lock the terminal                                         |
| `Ctrl-a m `                              | Monitor the current window for activity                   |
| `Ctrl-a M `                              | Monitor the current window for silence                    |
| `Ctrl-a D D`                             | Detach and logout from the session                        |

# rsync Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `rsync -av source destination`           | Archive mode, verbose                                     |
| `rsync -avz source destination`          | Archive mode, compress during transfer                    |
| `rsync -av --progress source destination`| Show progress during transfer                             |
| `rsync -av --delete source destination`  | Delete extraneous files from destination                  |
| `rsync -av --exclude='pattern' source destination`| Exclude files matching a pattern                      |
| `rsync -av --include='pattern' source destination`| Include only files matching a pattern                 |
| `rsync -av -e ssh source user@host:destination`| Use SSH as the transport                              |
| `rsync -av --dry-run source destination` | Perform a trial run with no changes made                  |
| `rsync -av --partial source destination` | Keep partially transferred files                         |
| `rsync -av --bwlimit=KBps source destination`| Limit bandwidth during transfer                     |
| `rsync -av --size-only source destination`| Skip files that match in size                          |
| `rsync -av --checksum source destination`| Skip files that match in checksum                       |
| `rsync -av --times source destination`   | Preserve modification times                              |
| `rsync -av --perms source destination`   | Preserve permissions                                     |
| `rsync -av --owner source destination`   | Preserve owner                                           |
| `rsync -av --group source destination`   | Preserve group                                           |
| `rsync -av --links source destination`   | Copy symlinks as symlinks                                |
| `rsync -av --hard-links source destination`| Preserve hard links                                     |
| `rsync -av --copy-links source destination`| Copy symlinks as files                                 |
| `rsync -av --copy-dirlinks source destination`| Transform symlinks to directories into real dirs   |
| `rsync -av --no-links source destination`| Skip copying symlinks                                   |
| `rsync -av --safe-links source destination`| Ignore symlinks that point outside source tree      |
| `rsync -av --delete-excluded source destination`| Delete excluded files from destination            |
| `rsync -av --max-size=SIZE source destination`| Limit maximum size of files to transfer              |
| `rsync -av --min-size=SIZE source destination`| Limit minimum size of files to transfer              |
| `rsync -av --backup source destination`  | Backup files that are replaced                          |
| `rsync -av --backup-dir=DIR source destination`| Backup files into a specific directory              |
| `rsync -av --suffix=SUFFIX source destination`| Define suffix for backup files                      |
| `rsync -av --inplace source destination` | Update destination files in place                      |
| `rsync -av --append source destination`  | Append data onto shorter files                          |
| `rsync -av --append-verify source destination`| Append and verify full file content                  |
| `rsync -av --ignore-existing source destination`| Skip updating files that already exist               |
| `rsync -av --remove-source-files source destination`| Remove source files after transfer                   |

# tar Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `tar -cvf archive.tar file_or_directory` | Create a tar archive                                      |
| `tar -xvf archive.tar`                   | Extract a tar archive                                     |
| `tar -tvf archive.tar`                   | List contents of a tar archive                            |
| `tar -cvzf archive.tar.gz file_or_directory`| Create a gzip-compressed tar archive                    |
| `tar -xvzf archive.tar.gz`               | Extract a gzip-compressed tar archive                     |
| `tar -cvjf archive.tar.bz2 file_or_directory`| Create a bzip2-compressed tar archive                   |
| `tar -xvjf archive.tar.bz2`              | Extract a bzip2-compressed tar archive                    |
| `tar -cvJf archive.tar.xz file_or_directory`| Create a xz-compressed tar archive                      |
| `tar -xvJf archive.tar.xz`               | Extract a xz-compressed tar archive                       |
| `tar -cvf - file_or_directory \| ssh user@host "tar -xvf - -C /destination"`| Copy files over SSH|
| `tar -rf archive.tar file`               | Append files to an existing tar archive                   |
| `tar -uf archive.tar file`               | Update files in an existing tar archive                   |
| `tar -cvf archive.tar --exclude="*.txt" file_or_directory`| Create tar archive excluding certain files       |
| `tar -cvf archive.tar --exclude-vcs file_or_directory`| Create tar archive excluding version control files|
| `tar --delete -f archive.tar file`       | Delete files from a tar archive                           |
| `tar -cvf archive.tar -T filelist.txt`   | Create tar archive from a list of files                   |
| `tar -xvf archive.tar -C /destination`   | Extract tar archive to a specific directory               |
| `tar --strip-components=number -xvf archive.tar`| Extract tar archive, removing a number of leading components |
| `tar --transform='s/old/new/' -cvf archive.tar file_or_directory`| Create tar archive with transformed file names|
| `tar -xzvf archive.tar.gz --wildcards '*.txt'`| Extract specific files from a compressed tar archive   |

# gzip Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `gzip file`                              | Compress a file                                           |
| `gzip -d file.gz`                        | Decompress a file                                         |
| `gzip -k file`                           | Compress a file, keeping the original                     |
| `gzip -r directory`                      | Recursively compress files in a directory                 |
| `gzip -l file.gz`                        | List compressed file details                              |
| `gzip -t file.gz`                        | Test compressed file integrity                            |
| `gzip -v file`                           | Compress a file with verbose output                       |
| `gzip -1 file`                           | Compress a file with fastest speed                        |
| `gzip -9 file`                           | Compress a file with best compression                     |
| `zcat file.gz`                           | View contents of a compressed file                        |
| `zgrep "pattern" file.gz`                | Search for a pattern in a compressed file                 |
| `zless file.gz`                          | View a compressed file with less                          |
| `zcmp file1.gz file2.gz`                 | Compare compressed files                                  |
| `zdiff file1.gz file2.gz`                | Show differences between compressed files                 |

# bzip2 Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `bzip2 file`                             | Compress a file                                           |
| `bzip2 -d file.bz2`                      | Decompress a file                                         |
| `bzip2 -k file`                          | Compress a file, keeping the original                     |
| `bzip2 -z file`                          | Compress a file                                           |
| `bzip2 -t file.bz2`                      | Test compressed file integrity                            |
| `bzip2 -c file > file.bz2`               | Compress a file to standard output                        |
| `bzip2 -f file`                          | Force compression or decompression                        |
| `bzip2 -v file`                          | Compress a file with verbose output                       |
| `bzip2 -1 file`                          | Compress a file with fastest speed                        |
| `bzip2 -9 file`                          | Compress a file with best compression                     |
| `bzcat file.bz2`                         | View contents of a compressed file                        |
| `bzgrep "pattern" file.bz2`              | Search for a pattern in a compressed file                 |
| `bzless file.bz2`                        | View a compressed file with less                          |
| `bzcmp file1.bz2 file2.bz2`              | Compare compressed files                                  |
| `bzdiff file1.bz2 file2.bz2`             | Show differences between compressed files                 |

# curl Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `curl url`                               | Fetch the content of a URL                                |
| `curl -o file url`                       | Save the content to a file                                |
| `curl -O url`                            | Save the content to a file with the same name             |
| `curl -L url`                            | Follow redirects                                          |
| `curl -I url`                            | Fetch headers only                                        |
| `curl -d "data" url`                     | Send data with a POST request                             |
| `curl -X POST url`                       | Send a POST request                                       |
| `curl -X PUT url`                        | Send a PUT request                                        |
| `curl -X DELETE url`                     | Send a DELETE request                                     |
| `curl -H "Header: value" url`            | Send a custom header                                      |
| `curl -u user:password url`              | Send basic authentication                                 |
| `curl -F "name=value" url`               | Send a multipart form data                                |
| `curl -k url`                            | Allow insecure SSL connections                            |
| `curl --cert certfile url`               | Send a client certificate                                 |
| `curl -b "name=value" url`               | Send cookies                                              |
| `curl -c cookiefile url`                 | Save cookies to a file                                    |
| `curl --limit-rate 100k url`             | Limit the transfer rate                                   |
| `curl --compressed url`                  | Request a compressed response                             |
| `curl --retry num url`                   | Retry a request on failure                                |
| `curl --silent url`                      | Silent mode (suppress output)                             |
| `curl --progress-bar url`                | Display a progress bar                                    |
| `curl --http2 url`                       | Use HTTP/2 protocol                                       |
| `curl --interface interface url`         | Use a specific network interface                          |
| `curl --ipv4 url`                        | Use IPv4 only                                             |
| `curl --ipv6 url`                        | Use IPv6 only                                             |
| `curl --location-trusted url`            | Follow redirects and send authentication to other hosts   |
| `curl --data-urlencode "name=value" url` | URL encode data                                           |
| `curl --max-time seconds url`            | Set a maximum time for the request                        |
| `curl --connect-timeout seconds url`     | Set a maximum time for the connection                     |
| `curl --proxy proxy_url url`             | Use a proxy server                                        |

# wget Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `wget url`                               | Download a file                                           |
| `wget -O file url`                       | Save the download with a specific name                    |
| `wget -P /path url`                      | Save the download to a specific directory                 |
| `wget -c url`                            | Continue a partially downloaded file                      |
| `wget -b url`                            | Download in the background                                |
| `wget -i file`                           | Download URLs listed in a file                            |
| `wget -r url`                            | Download recursively                                      |
| `wget -l depth url`                      | Set the download depth                                    |
| `wget -k url`                            | Convert links to be suitable for local viewing            |
| `wget -m url`                            | Mirror a website                                          |
| `wget -p url`                            | Download all necessary files to display a webpage         |
| `wget --limit-rate=100k url`             | Limit the download speed                                  |
| `wget --user=user --password=password url`| Download with basic authentication                        |
| `wget --header="Header: value" url`      | Send a custom header                                      |
| `wget --no-check-certificate url`        | Ignore SSL certificate errors                             |
| `wget --quiet url`                       | Quiet mode (no output)                                    |
| `wget --show-progress url`               | Show a progress bar                                       |
| `wget --spider url`                      | Check if a URL exists                                     |
| `wget --no-clobber url`                  | Do not overwrite existing files                           |
| `wget --timestamping url`                | Download only if the remote file is newer than the local file |
| `wget --directory-prefix=prefix url`     | Save files to a specific directory                        |
| `wget --tries=num url`                   | Set the number of retries                                 |
| `wget --wait=seconds url`                | Wait between downloads                                    |
| `wget --random-wait url`                 | Wait a random amount of time between downloads            |
| `wget --delete-after url`                | Delete files after downloading                            |
| `wget --mirror url`                      | Mirror a website                                          |
| `wget --recursive url`                   | Download files recursively                                |
| `wget --level=depth url`                 | Set the recursion depth                                   |
| `wget --user-agent="User-Agent" url`     | Set the user agent                                        |

# MySQL/MariaDB Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `mysql -u user -p`                       | Connect to the MySQL server                               |
| `CREATE DATABASE dbname;`                | Create a new database                                     |
| `DROP DATABASE dbname;`                  | Delete a database                                         |
| `USE dbname;`                            | Select a database                                         |
| `SHOW DATABASES;`                        | List all databases                                        |
| `SHOW TABLES;`                           | List all tables in the selected database                  |
| `DESCRIBE tablename;`                    | Show table structure                                      |
| `CREATE TABLE tablename (columns);`      | Create a new table                                        |
| `DROP TABLE tablename;`                  | Delete a table                                            |
| `INSERT INTO tablename (columns) VALUES (values);`| Insert data into a table                            |
| `SELECT * FROM tablename;`               | Retrieve all data from a table                            |
| `UPDATE tablename SET column=value WHERE condition;`| Update data in a table                             |
| `DELETE FROM tablename WHERE condition;` | Delete data from a table                                  |
| `GRANT ALL PRIVILEGES ON dbname.* TO 'user'@'host' IDENTIFIED BY 'password';`| Grant privileges to a user     |
| `FLUSH PRIVILEGES;`                      | Reload privileges                                         |
| `SHOW GRANTS FOR 'user'@'host';`         | Show granted privileges                                   |
| `REVOKE ALL PRIVILEGES ON dbname.* FROM 'user'@'host';`| Revoke privileges from a user       |
| `CREATE USER 'user'@'host' IDENTIFIED BY 'password';`| Create a new user                        |
| `DROP USER 'user'@'host';`               | Delete a user                                             |
| `SHOW PROCESSLIST;`                      | Show running processes                                    |
| `EXIT;`                                  | Exit the MySQL shell                                      |
| `mysqldump -u user -p dbname > backup.sql`| Backup a database                                         |
| `mysql -u user -p dbname < backup.sql`   | Restore a database                                        |
| `SHOW STATUS;`                           | Show server status                                        |
| `SHOW VARIABLES;`                        | Show server variables                                     |
| `SHOW INDEX FROM tablename;`             | Show indexes in a table                                   |
| `SHOW CREATE TABLE tablename;`           | Show the CREATE TABLE statement for a table               |
| `ALTER TABLE tablename ADD columnname datatype;`| Add a column to a table                            |
| `ALTER TABLE tablename DROP columnname;` | Drop a column from a table                                |
| `ALTER TABLE tablename MODIFY columnname datatype;`| Modify a column in a table                         |
| `ALTER TABLE tablename RENAME TO newtablename;`| Rename a table                                  |
| `CREATE INDEX indexname ON tablename (columns);`| Create an index on a table                        |
| `DROP INDEX indexname ON tablename;`     | Drop an index from a table                                |
| `SET GLOBAL max_connections = value;`    | Set a global variable                                     |
| `SHOW ENGINE INNODB STATUS;`             | Show InnoDB status                                        |

# PostgreSQL Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `psql -U user -d dbname`                 | Connect to the PostgreSQL server                          |
| `CREATE DATABASE dbname;`                | Create a new database                                     |
| `DROP DATABASE dbname;`                  | Delete a database                                         |
| `\c dbname`                              | Connect to a database                                     |
| `\l`                                     | List all databases                                        |
| `\dt`                                    | List all tables in the connected database                 |
| `\d tablename`                           | Show table structure                                      |
| `CREATE TABLE tablename (columns);`      | Create a new table                                        |
| `DROP TABLE tablename;`                  | Delete a table                                            |
| `INSERT INTO tablename (columns) VALUES (values);`| Insert data into a table                            |
| `SELECT * FROM tablename;`               | Retrieve all data from a table                            |
| `UPDATE tablename SET column=value WHERE condition;`| Update data in a table                             |
| `DELETE FROM tablename WHERE condition;` | Delete data from a table                                  |
| `GRANT ALL PRIVILEGES ON DATABASE dbname TO user;`| Grant privileges to a user                         |
| `REVOKE ALL PRIVILEGES ON DATABASE dbname FROM user;`| Revoke privileges from a user                   |
| `CREATE USER username WITH PASSWORD 'password';`| Create a new user                                  |
| `DROP USER username;`                    | Delete a user                                             |
| `\q`                                     | Exit the PostgreSQL shell                                 |
| `pg_dump -U user -d dbname -f backup.sql`| Backup a database                                         |
| `psql -U user -d dbname -f backup.sql`   | Restore a database                                        |
| `\conninfo`                              | Show connection information                               |
| `\du`                                    | List all roles                                            |
| `\di`                                    | List all indexes                                          |
| `\df`                                    | List all functions                                        |
| `\dn`                                    | List all schemas                                          |
| `\dp`                                    | List table, view, and sequence access privileges          |
| `ALTER TABLE tablename ADD columnname datatype;`| Add a column to a table                            |
| `ALTER TABLE tablename DROP columnname;` | Drop a column from a table                                |
| `ALTER TABLE tablename ALTER COLUMN columnname TYPE datatype;`| Modify a column in a table                   |
| `ALTER TABLE tablename RENAME TO newtablename;`| Rename a table                                  |
| `CREATE INDEX indexname ON tablename (columns);`| Create an index on a table                        |
| `DROP INDEX indexname;`                  | Drop an index                                             |
| `VACUUM`                                 | Clean up and optimize the database                        |
| `VACUUM FULL`                            | Clean up and optimize the database (full)                 |
| `ANALYZE`                                | Collect statistics about the database                     |
| `EXPLAIN SELECT * FROM tablename;`       | Show the execution plan for a query                       |
| `SET search_path TO schema;`             | Set the search path to a specific schema                  |

# Nginx Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `sudo systemctl start nginx`             | Start Nginx                                               |
| `sudo systemctl stop nginx`              | Stop Nginx                                                |
| `sudo systemctl restart nginx`           | Restart Nginx                                             |
| `sudo systemctl reload nginx`            | Reload Nginx configuration                                |
| `sudo systemctl enable nginx`            | Enable Nginx to start on boot                             |
| `sudo systemctl disable nginx`           | Disable Nginx from starting on boot                       |
| `nginx -t`                               | Test Nginx configuration                                  |
| `nginx -s reload`                        | Reload Nginx configuration                                |
| `nginx -s reopen`                        | Reopen log files                                          |
| `nginx -s stop`                          | Stop Nginx                                                |
| `nginx -s quit`                          | Gracefully stop Nginx                                     |
| `/etc/nginx/nginx.conf`                  | Main Nginx configuration file                             |
| `/etc/nginx/sites-available/`            | Directory for available site configurations               |
| `/etc/nginx/sites-enabled/`              | Directory for enabled site configurations                 |
| `sudo ln -s /etc/nginx/sites-available/site /etc/nginx/sites-enabled/`| Enable a site configuration            |
| `sudo unlink /etc/nginx/sites-enabled/site`| Disable a site configuration                           |
| `server { ... }`                         | Define a virtual server block                             |
| `location / { ... }`                     | Define a location block                                   |
| `listen 80;`                             | Listen on port 80                                         |
| `listen 443 ssl;`                        | Listen on port 443 with SSL                               |
| `server_name domain.com;`                | Define the server name                                    |
| `root /var/www/html;`                    | Define the document root                                  |
| `index index.html;`                      | Define the default index file                             |
| `error_page 404 /404.html;`              | Define a custom error page                                |
| `access_log /var/log/nginx/access.log;`  | Define the access log file                                |
| `error_log /var/log/nginx/error.log;`    | Define the error log file                                 |
| `proxy_pass http://backend;`             | Proxy requests to a backend server                        |
| `rewrite ^/old/(.*)$ /new/$1 permanent;` | Rewrite URL                                               |
| `location ~ \.php$ { ... }`              | Define a location block for PHP files                     |
| `include /etc/nginx/conf.d/*.conf;`      | Include additional configuration files                    |
| `ssl_certificate /etc/nginx/ssl/nginx.crt;`| Define the SSL certificate                             |
| `ssl_certificate_key /etc/nginx/ssl/nginx.key;`| Define the SSL certificate key                     |
| `ssl_protocols TLSv1.2 TLSv1.3;`         | Define the supported SSL protocols                        |
| `ssl_ciphers HIGH:!aNULL:!MD5;`          | Define the supported SSL ciphers                          |

# Apache Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `sudo systemctl start apache2`           | Start Apache                                              |
| `sudo systemctl stop apache2`            | Stop Apache                                               |
| `sudo systemctl restart apache2`         | Restart Apache                                            |
| `sudo systemctl reload apache2`          | Reload Apache configuration                               |
| `sudo systemctl enable apache2`          | Enable Apache to start on boot                            |
| `sudo systemctl disable apache2`         | Disable Apache from starting on boot                      |
| `apachectl configtest`                   | Test Apache configuration                                 |
| `apachectl graceful`                     | Gracefully restart Apache                                  |
| `/etc/apache2/apache2.conf`              | Main Apache configuration file                            |
| `/etc/apache2/sites-available/`          | Directory for available site configurations               |
| `/etc/apache2/sites-enabled/`            | Directory for enabled site configurations                 |
| `sudo a2ensite site`                     | Enable a site configuration                               |
| `sudo a2dissite site`                    | Disable a site configuration                              |
| `sudo a2enmod module`                    | Enable a module                                           |
| `sudo a2dismod module`                   | Disable a module                                          |
| `sudo a2enconf config`                   | Enable a configuration                                    |
| `sudo a2disconf config`                  | Disable a configuration                                   |
| `<VirtualHost *:80> ... </VirtualHost>`  | Define a virtual host for HTTP                            |
| `<VirtualHost *:443> ... </VirtualHost>` | Define a virtual host for HTTPS                           |
| `ServerName domain.com`                  | Define the server name                                    |
| `DocumentRoot /var/www/html`             | Define the document root                                  |
| `DirectoryIndex index.html`              | Define the default index file                             |
| `ErrorLog /var/log/apache2/error.log`    | Define the error log file                                 |
| `CustomLog /var/log/apache2/access.log combined`| Define the access log file                            |
| `SSLEngine on`                           | Enable SSL                                                |
| `SSLCertificateFile /etc/apache2/ssl/apache.crt`| Define the SSL certificate                           |
| `SSLCertificateKeyFile /etc/apache2/ssl/apache.key`| Define the SSL certificate key                      |
| `SSLProtocol all -SSLv2 -SSLv3`          | Define the supported SSL protocols                        |
| `SSLCipherSuite HIGH:!aNULL:!MD5`        | Define the supported SSL ciphers                          |
| `ProxyPass /app http://backend/app`      | Proxy requests to a backend server                        |
| `ProxyPassReverse /app http://backend/app`| Adjust the URL in the Location header                  |
| `RewriteEngine on`                       | Enable URL rewriting                                      |
| `RewriteRule ^/old/(.*)$ /new/$1 [R=301,L]`| Rewrite URL                                           |
| `<Directory /var/www/html> ... </Directory>`| Define directory-specific settings                     |
| `Options Indexes FollowSymLinks`         | Set directory options                                     |
| `AllowOverride All`                      | Allow .htaccess to override settings                      |
| `Require all granted`                    | Allow access to a directory                               |
| `Redirect permanent /old /new`           | Redirect a URL                                            |

# Firewalld Cheatsheet

| Command                              | Description                                                                 |
|--------------------------------------|-----------------------------------------------------------------------------|
| `firewall-cmd --state`               | Check the state of firewalld                                                |
| `firewall-cmd --reload`              | Reload firewalld configuration                                              |
| `firewall-cmd --get-active-zones`    | List all active zones                                                       |
| `firewall-cmd --get-default-zone`    | Get the default zone                                                        |
| `firewall-cmd --zone=zone --list-all`| List all settings in a zone                                                 |
| `firewall-cmd --zone=zone --add-source=source`| Add a source to a zone                                                |
| `firewall-cmd --zone=zone --add-port=port/protocol`| Add a port to a zone                                               |
| `firewall-cmd --zone=zone --remove-port=port/protocol`| Remove a port from a zone                                          |
| `firewall-cmd --zone=zone --add-service=service`| Add a service to a zone                                            |
| `firewall-cmd --zone=zone --remove-service=service`| Remove a service from a zone                                        |
| `firewall-cmd --permanent`           | Apply changes permanently                                                  |
| `firewall-cmd --runtime-to-permanent`| Save runtime changes to permanent configuration                            |
| `firewall-cmd --add-masquerade`      | Enable masquerading (NAT)                                                  |
| `firewall-cmd --remove-masquerade`   | Disable masquerading (NAT)                                                 |
| `firewall-cmd --zone=zone --add-rich-rule='rule'`| Add a rich rule to a zone                                          |
| `firewall-cmd --zone=zone --remove-rich-rule='rule'`| Remove a rich rule from a zone                                    |

# UFW Cheatsheet

| Command                              | Description                                                                 |
|--------------------------------------|-----------------------------------------------------------------------------|
| `sudo ufw enable`                    | Enable UFW                                                                  |
| `sudo ufw disable`                   | Disable UFW                                                                 |
| `sudo ufw status`                    | Show the current status of UFW and list rules                               |
| `sudo ufw status verbose`            | Show the current status of UFW with detailed information                    |
| `sudo ufw allow port`                | Allow incoming traffic on a specific port                                   |
| `sudo ufw allow from IP`             | Allow incoming traffic from a specific IP address                           |
| `sudo ufw allow from IP to any port port` | Allow incoming traffic from a specific IP to a specific port            |
| `sudo ufw allow proto tcp from IP to any port port` | Allow incoming TCP traffic from a specific IP to a specific port  |
| `sudo ufw deny port`                 | Deny incoming traffic on a specific port                                    |
| `sudo ufw deny from IP`              | Deny incoming traffic from a specific IP address                            |
| `sudo ufw deny from IP to any port port` | Deny incoming traffic from a specific IP to a specific port              |
| `sudo ufw delete allow port`         | Delete an allow rule for a specific port                                    |
| `sudo ufw delete deny port`          | Delete a deny rule for a specific port                                      |
| `sudo ufw default allow outgoing`    | Set the default policy to allow outgoing traffic                            |
| `sudo ufw default deny outgoing`     | Set the default policy to deny outgoing traffic                             |
| `sudo ufw default allow incoming`    | Set the default policy to allow incoming traffic                            |
| `sudo ufw default deny incoming`     | Set the default policy to deny incoming traffic                             |
| `sudo ufw reset`                     | Reset UFW rules to the default state                                        |
| `sudo ufw show raw`                  | Show the raw `iptables` rules generated by UFW                              |
| `sudo ufw logging on`                | Enable logging for UFW                                                      |
| `sudo ufw logging off`               | Disable logging for UFW                                                     |
| `sudo ufw logging low`               | Set logging level to low                                                    |
| `sudo ufw logging medium`            | Set logging level to medium                                                 |
| `sudo ufw logging high`              | Set logging level to high                                                   |
| `sudo ufw app list`                  | List all available application profiles                                     |
| `sudo ufw app info Application`      | Show information about a specific application profile                       |
| `sudo ufw allow Application`         | Allow an application by profile                                             |
| `sudo ufw deny Application`          | Deny an application by profile                                              |
| `sudo ufw reload`                    | Reload UFW to apply changes                                                 |
| `sudo ufw route allow proto tcp from any to any port port` | Allow routing for a specific port over TCP                     |
| `sudo ufw route deny proto udp from any to any port port`  | Deny routing for a specific port over UDP                      |


# SELinux Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `sestatus`                               | Check the status of SELinux                               |
| `getenforce`                             | Get the current mode of SELinux                           |
| `setenforce 0`                           | Set SELinux to permissive mode                            |
| `setenforce 1`                           | Set SELinux to enforcing mode                             |
| `semanage boolean -l`                    | List all SELinux booleans                                 |
| `semanage boolean -m --on boolean_name`  | Enable an SELinux boolean                                 |
| `semanage boolean -m --off boolean_name` | Disable an SELinux boolean                                |
| `semanage fcontext -l`                   | List all file context mappings                            |
| `semanage fcontext -a -t type '/path(/.*)?'`| Add a file context mapping                             |
| `restorecon -Rv /path`                   | Apply file context to files                               |
| `chcon -t type /path`                    | Change the file context                                   |
| `ls -Z`                                  | List files with SELinux context                           |
| `ps -Z`                                  | List processes with SELinux context                       |
| `grep AVC /var/log/audit/audit.log`      | Search for SELinux denials in the audit log               |
| `ausearch -m avc -ts recent`             | Search for recent SELinux denials                         |
| `audit2allow -w -a`                      | Display audit log entries that require policy changes     |
| `audit2allow -a -M mymodule`             | Generate a policy module to allow denials                 |
| `semodule -i mymodule.pp`                | Install a policy module                                   |
| `semanage port -l`                       | List all SELinux port mappings                            |
| `semanage port -a -t type -p tcp port`   | Add a port mapping                                        |
| `semanage port -d -p tcp port`           | Delete a port mapping                                     |
| `semanage permissive -a type`            | Set a domain to permissive mode                           |
| `semanage permissive -d type`            | Remove a domain from permissive mode                      |
| `seinfo`                                 | Display SELinux policy information                        |
| `semodule -l`                            | List all installed policy modules                         |
| `semodule -r module_name`                | Remove an installed policy module                         |
| `sealert -a /var/log/audit/audit.log`    | Analyze audit log for SELinux denials                     |

# AppArmor Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `aa-status`                              | Check the status of AppArmor                              |
| `aa-enforce /etc/apparmor.d/profile`     | Set a profile to enforce mode                             |
| `aa-complain /etc/apparmor.d/profile`    | Set a profile to complain mode                            |
| `aa-logprof`                             | Update profiles based on log events                       |
| `aa-genprof /path/to/executable`         | Generate a new profile for an executable                  |
| `aa-disable /etc/apparmor.d/profile`     | Disable a profile                                         |
| `aa-parse -r /etc/apparmor.d/profile`    | Reload a profile                                          |
| `apparmor_parser -r /etc/apparmor.d/profile`| Reload a profile                                       |
| `apparmor_parser -R /etc/apparmor.d/profile`| Remove a profile from the kernel                       |
| `aa-unconfined`                          | List unconfined processes                                 |
| `aa-notify`                              | Display AppArmor notifications                            |
| `aa-exec -p profile -- command`          | Execute a command under a specific profile                |
| `aa-audit /etc/apparmor.d/profile`       | Set a profile to audit mode                               |
| `cat /var/log/syslog \| grep apparmor`    | Search for AppArmor messages in the syslog                |
| `grep "audit" /var/log/kern.log`         | Search for AppArmor audit messages in the kernel log      |
| `ls -lZ /path`                           | List files with AppArmor context                          |
| `aa-cleanprof`                           | Remove unnecessary rules from a profile                   |
| `aa-enforce /etc/apparmor.d/*`           | Set all profiles to enforce mode                          |
| `aa-complain /etc/apparmor.d/*`          | Set all profiles to complain mode                         |
| `journalctl -xe \| grep apparmor`         | Search for AppArmor events in the journal log             |
| `sudo apparmor_parser -r /etc/apparmor.d/usr.bin.program`| Reload a specific AppArmor profile               |
| `sudo aa-genprof /path/to/program`       | Generate a new profile for a program                      |
| `sudo aa-logprof /var/log/syslog`        | Update profiles based on log events                       |
| `sudo aa-enforce /etc/apparmor.d/usr.bin.program`| Enforce a specific AppArmor profile               |
| `sudo aa-complain /etc/apparmor.d/usr.bin.program`| Set a specific AppArmor profile to complain mode  |

# LDAP Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `ldapsearch -x -b "base_dn" "(filter)"`  | Search for entries in the LDAP directory                  |
| `ldapadd -x -D "bind_dn" -W -f file.ldif`| Add entries to the LDAP directory                         |
| `ldapdelete -x -D "bind_dn" -W "dn"`     | Delete entries from the LDAP directory                    |
| `ldapmodify -x -D "bind_dn" -W -f file.ldif`| Modify entries in the LDAP directory                  |
| `ldapcompare -x -D "bind_dn" -W "dn" attribute:value`| Compare attribute values                           |
| `ldapwhoami -x -D "bind_dn" -W`          | Show the distinguished name of the authenticated user     |
| `ldapmodrdn -x -D "bind_dn" -W "dn" "new_rdn"`| Modify the RDN of an entry                           |
| `slapcat -v -l backup.ldif`              | Export the LDAP directory to an LDIF file                 |
| `slapadd -v -l backup.ldif`              | Import an LDIF file into the LDAP directory               |
| `slapindex`                              | Rebuild the LDAP directory indexes                        |
| `slapd -d 1`                             | Start the LDAP server in debug mode                       |
| `ldapsearch -LLL -x -b "base_dn" "(filter)" attribute`| Search and display specific attributes         |
| `ldapsearch -H ldap://ldap.example.com -x -b "base_dn" "(filter)"`| Search using a specific LDAP URI             |
| `ldapsearch -ZZ -x -b "base_dn" "(filter)"`| Search with StartTLS                                    |
| `ldapadd -ZZ -x -D "bind_dn" -W -f file.ldif`| Add entries with StartTLS                            |
| `ldapmodify -ZZ -x -D "bind_dn" -W -f file.ldif`| Modify entries with StartTLS                         |
| `ldapdelete -ZZ -x -D "bind_dn" -W "dn"` | Delete entries with StartTLS                             |
| `ldapwhoami -ZZ -x -D "bind_dn" -W`      | Show the distinguished name with StartTLS                 |
| `ldapcompare -ZZ -x -D "bind_dn" -W "dn" attribute:value`| Compare attribute values with StartTLS             |
| `ldapmodrdn -ZZ -x -D "bind_dn" -W "dn" "new_rdn"`| Modify the RDN with StartTLS                      |
| `ldapsearch -Y EXTERNAL -H ldapi:/// -b "cn=config"`| Search the configuration directory                     |
| `ldapadd -Y EXTERNAL -H ldapi:/// -f config.ldif`| Add configuration entries                              |
| `ldapmodify -Y EXTERNAL -H ldapi:/// -f config.ldif`| Modify configuration entries                          |
| `ldapdelete -Y EXTERNAL -H ldapi:/// "dn"`| Delete configuration entries                           |

# LVM Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `pvcreate /dev/sdX`                      | Create a physical volume                                  |
| `pvdisplay`                              | Display information about physical volumes                |
| `pvscan`                                 | Scan all disks for physical volumes                       |
| `vgcreate vgname /dev/sdX`               | Create a volume group                                     |
| `vgdisplay`                              | Display information about volume groups                   |
| `vgscan`                                 | Scan all disks for volume groups                          |
| `vgextend vgname /dev/sdX`               | Add a physical volume to a volume group                   |
| `vgreduce vgname /dev/sdX`               | Remove a physical volume from a volume group              |
| `lvcreate -L size -n lvname vgname`      | Create a logical volume                                   |
| `lvcreate -l 100%FREE -n lvname vgname`  | Create a logical volume using all free space              |
| `lvdisplay`                              | Display information about logical volumes                 |
| `lvextend -L+size /dev/vgname/lvname`    | Extend a logical volume by size                           |
| `lvextend -l +100%FREE /dev/vgname/lvname`| Extend a logical volume using all free space              |
| `lvreduce -L-size /dev/vgname/lvname`    | Reduce the size of a logical volume                       |
| `lvremove /dev/vgname/lvname`            | Remove a logical volume                                   |
| `lvresize -L size /dev/vgname/lvname`    | Resize a logical volume                                   |
| `lvrename /dev/vgname/oldname newname`   | Rename a logical volume                                   |
| `vgremove vgname`                        | Remove a volume group                                     |
| `pvremove /dev/sdX`                      | Remove a physical volume                                  |
| `vgchange -a y vgname`                   | Activate a volume group                                   |
| `vgchange -a n vgname`                   | Deactivate a volume group                                 |
| `vgmerge vgname1 vgname2`                | Merge two volume groups                                   |
| `vgsplit vgname new_vgname /dev/sdX`     | Split a volume group into two                             |
| `pvmove /dev/sdX`                        | Move physical extents from one physical volume to another |
| `vgcfgbackup`                            | Backup volume group metadata                              |
| `vgcfgrestore vgname`                    | Restore volume group metadata                             |
| `lvconvert --type raid1 --mirrors 1 /dev/vgname/lvname`| Convert a logical volume to RAID1                   |
| `lvchange -a y /dev/vgname/lvname`       | Activate a logical volume                                 |
| `lvchange -a n /dev/vgname/lvname`       | Deactivate a logical volume                               |
| `lvscan`                                 | Scan for all logical volumes                              |
| `vgextend vgname /dev/sdX`               | Add a physical volume to a volume group                   |

# ZFS Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `zpool create pool /dev/sdX`             | Create a new storage pool                                 |
| `zpool destroy pool`                     | Destroy a storage pool                                    |
| `zpool status`                           | Show the status of all pools                              |
| `zpool list`                             | List all pools                                            |
| `zpool add pool /dev/sdX`                | Add a device to a pool                                    |
| `zpool remove pool /dev/sdX`             | Remove a device from a pool                               |
| `zpool replace pool /dev/sdX /dev/sdY`   | Replace a device in a pool                                |
| `zpool scrub pool`                       | Scrub the data in a pool                                  |
| `zpool export pool`                      | Export a pool                                             |
| `zpool import pool`                      | Import a pool                                             |
| `zfs create pool/dataset`                | Create a new dataset                                      |
| `zfs destroy pool/dataset`               | Destroy a dataset                                         |
| `zfs list`                               | List all datasets                                         |
| `zfs mount pool/dataset`                 | Mount a dataset                                           |
| `zfs unmount pool/dataset`               | Unmount a dataset                                         |
| `zfs snapshot pool/dataset@snapshot`     | Create a snapshot of a dataset                            |
| `zfs rollback pool/dataset@snapshot`     | Roll back to a snapshot                                   |
| `zfs send pool/dataset@snapshot`         | Send a snapshot                                           |
| `zfs receive pool/dataset`               | Receive a snapshot                                        |
| `zfs get property pool/dataset`          | Get a property value                                      |
| `zfs set property=value pool/dataset`    | Set a property value                                      |
| `zfs rename pool/dataset new_name`       | Rename a dataset                                          |
| `zfs clone pool/dataset@snapshot new_dataset`| Clone a snapshot                                    |
| `zfs promote pool/dataset`               | Promote a clone to a full dataset                         |
| `zfs diff pool/dataset@snapshot1 pool/dataset@snapshot2`| Show differences between snapshots                |
| `zfs upgrade -a`                         | Upgrade all ZFS filesystems                               |
| `zpool upgrade -a`                       | Upgrade all ZFS pools                                     |
| `zpool history pool`                     | Show command history for a pool                           |
| `zpool iostat pool`                      | Show I/O statistics for a pool                            |
| `zpool clear pool`                       | Clear errors in a pool                                    |
| `zpool trim pool`                        | Trim free space in a pool                                 |
| `zfs hold tag pool/dataset@snapshot`     | Hold a snapshot                                           |
| `zfs release tag pool/dataset@snapshot`  | Release a held snapshot                                   |
| `zfs inherit property pool/dataset`      | Inherit a property from the parent                        |

# Btrfs Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `mkfs.btrfs /dev/sdX`                    | Create a Btrfs filesystem                                 |
| `btrfs filesystem show`                  | Show Btrfs filesystems                                    |
| `btrfs filesystem df /mountpoint`        | Show disk usage of a Btrfs filesystem                     |
| `btrfs filesystem balance /mountpoint`   | Balance a Btrfs filesystem                                |
| `btrfs filesystem resize size /mountpoint`| Resize a Btrfs filesystem                                |
| `btrfs device add /dev/sdX /mountpoint`  | Add a device to a Btrfs filesystem                        |
| `btrfs device delete /dev/sdX /mountpoint`| Remove a device from a Btrfs filesystem                   |
| `btrfs scrub start /mountpoint`          | Scrub a Btrfs filesystem                                  |
| `btrfs scrub status /mountpoint`         | Show scrub status                                         |
| `btrfs balance start /mountpoint`        | Start a balance operation                                 |
| `btrfs balance status /mountpoint`       | Show balance status                                       |
| `btrfs subvolume create /mountpoint/subvolume`| Create a subvolume                                 |
| `btrfs subvolume delete /mountpoint/subvolume`| Delete a subvolume                                  |
| `btrfs subvolume list /mountpoint`       | List all subvolumes                                       |
| `btrfs subvolume snapshot /mountpoint/subvolume /mountpoint/snapshot`| Create a snapshot                   |
| `btrfs send /mountpoint/subvolume` | btrfs receive /mountpoint/snapshot`| Send and receive a snapshot    |
| `btrfs subvolume set-default subvolid /mountpoint`| Set the default subvolume                           |
| `btrfs property set /mountpoint/subvolume ro true`| Set a subvolume to read-only                     |
| `btrfs property list /mountpoint/subvolume`| List properties of a subvolume                        |
| `btrfs quota enable /mountpoint`         | Enable quotas on a Btrfs filesystem                       |
| `btrfs qgroup show /mountpoint`          | Show quota groups                                         |
| `btrfs qgroup limit size /mountpoint`    | Set a quota limit                                         |
| `btrfs rescue zero-log /dev/sdX`         | Repair a corrupted log                                    |
| `btrfs rescue chunk-recover /dev/sdX`    | Recover corrupted chunks                                  |
| `btrfs check /dev/sdX`                   | Check a Btrfs filesystem                                  |
| `btrfs device scan`                      | Scan for Btrfs devices                                    |
| `btrfs device stats /mountpoint`         | Show device statistics                                    |
| `btrfs filesystem defragment /mountpoint`| Defragment a Btrfs filesystem                             |
| `btrfs quota rescan -w /mountpoint`      | Rescan quotas                                             |
| `btrfs filesystem sync /mountpoint`      | Sync a Btrfs filesystem                                   |
| `btrfs replace start /dev/sdX /dev/sdY /mountpoint`| Replace a device in a Btrfs filesystem              |
| `btrfs replace status /mountpoint`       | Show replace status                                       |

# Network Troubleshooting Cheatsheet

| Command                                  | Description                                               |
|------------------------------------------|-----------------------------------------------------------|
| `ping host`                              | Check connectivity to a host                              |
| `ping -c count host`                     | Send a specific number of ping requests                   |
| `ping -i interval host`                  | Set the interval between ping requests                    |
| `ping -t ttl host`                       | Set the time-to-live for ping packets                     |
| `traceroute host`                        | Trace the route to a host                                 |
| `traceroute -m max_ttl host`             | Set the maximum TTL                                       |
| `traceroute -p port host`                | Set the destination port                                  |
| `traceroute -I host`                     | Use ICMP echo instead of UDP                              |
| `traceroute -T host`                     | Use TCP SYN instead of UDP                                |
| `mtr host`                               | Network diagnostic tool combining ping and traceroute     |
| `mtr -r host`                            | Run MTR in report mode                                    |
| `mtr -c count host`                      | Set the number of pings in MTR                            |
| `netstat -tuln`                          | List all listening ports and services                     |
| `netstat -i`                             | Show network interfaces                                   |
| `netstat -rn`                            | Show the routing table                                    |
| `netstat -s`                             | Display network statistics                                |
| `netstat -plnt`                          | Show listening TCP ports                                  |
| `ss -tuln`                               | List all listening ports and services (ss command)        |
| `ss -i`                                  | Show network interfaces (ss command)                      |
| `ss -rn`                                 | Show the routing table (ss command)                       |
| `ss -s`                                  | Display network statistics (ss command)                   |
| `ss -plnt`                               | Show listening TCP ports (ss command)                     |
| `ip addr show`                           | Display all IP addresses                                  |
| `ip link show`                           | Show network interfaces                                   |
| `ip route show`                          | Display the routing table                                 |
| `ip link set dev iface up`               | Bring an interface up                                     |
| `ip link set dev iface down`             | Bring an interface down                                   |
| `ifconfig`                               | Display network interfaces                                |
| `ifconfig iface up`                      | Bring an interface up                                     |
| `ifconfig iface down`                    | Bring an interface down                                   |
| `ifconfig iface inet addr`               | Assign an IP address to an interface                      |
| `ifconfig iface hw ether MAC`            | Assign a MAC address to an interface                      |
| `ethtool iface`                          | Display Ethernet device settings                          |
| `ethtool -s iface speed 1000 duplex full autoneg on`| Set Ethernet device speed and duplex             |
| `tcpdump -i iface`                       | Capture packets on an interface                           |
| `tcpdump -n host host`                   | Capture packets to/from a specific host                   |
| `tcpdump -nn port port`                  | Capture packets on a specific port                        |
| `tcpdump -w file.pcap`                   | Write packets to a file                                   |
| `tcpdump -r file.pcap`                   | Read packets from a file                                  |
| `dig domain`                             | DNS lookup for a domain                                   |
| `dig +short domain`                      | Short DNS lookup for a domain                             |
| `dig -x ip`                              | Reverse DNS lookup                                        |
| `nslookup domain`                        | DNS lookup for a domain (nslookup)                        |
| `nslookup`                               | Enter interactive mode (nslookup)                         |
| `nslookup domain server`                 | DNS lookup using a specific DNS server                    |

# System Diagnostics and Logging Cheatsheet

## `dmesg`
| Command                              | Description                                                                 |
|--------------------------------------|-----------------------------------------------------------------------------|
| `dmesg`                              | Display all messages from the kernel ring buffer                            |
| `dmesg | less`                       | View messages with paging                                                   |
| `dmesg | grep pattern`               | Search for a specific pattern in the kernel messages                        |
| `dmesg -c`                           | Clear the ring buffer after printing                                        |
| `dmesg -T`                           | Display human-readable timestamps for each message                          |
| `dmesg -H`                           | Enable colorized and human-readable output                                  |
| `dmesg -l level`                     | Filter messages by log level (e.g., `emerg`, `alert`, `crit`, `err`, `warn`, `notice`, `info`, `debug`) |
| `dmesg -n level`                     | Set the log level of messages to print                                       |
| `dmesg -f facility`                  | Filter messages by facility (e.g., `kern`, `user`, `mail`, `daemon`, `auth`, `syslog`, `lpr`, `news`, `uucp`, `cron`, `authpriv`, `ftp`, `local0`-`local7`) |
| `dmesg -r`                           | Raw output, no human-readable timestamps                                    |
| `dmesg --clear`                      | Clear the kernel ring buffer                                                |
| `dmesg --level level`                | Set the log level for printing messages                                     |
| `dmesg --facility facility`          | Set the facility for printing messages                                      |
| `dmesg -w`                           | Keep waiting for new messages and print them as they come                   |
| `dmesg --follow`                     | Alias for `-w`, keep waiting for new messages                                |

## `journalctl`
| Command                              | Description                                                                 |
|--------------------------------------|-----------------------------------------------------------------------------|
| `journalctl`                         | View the systemd journal                                                    |
| `journalctl -b`                      | Show messages from the current boot                                         |
| `journalctl -k`                      | Show only kernel messages                                                   |
| `journalctl -u service`              | Show messages for a specific service                                        |
| `journalctl -f`                      | Follow new messages as they appear (similar to `tail -f`)                   |
| `journalctl -r`                      | Show messages in reverse chronological order                                |
| `journalctl --since "time"`          | Show messages since a specific time                                         |
| `journalctl --until "time"`          | Show messages until a specific time                                         |
| `journalctl -p level`                | Show messages of a specific priority level (e.g., `emerg`, `alert`, `crit`, `err`, `warn`, `notice`, `info`, `debug`) |
| `journalctl -xe`                     | Show the last few log entries with details about system errors              |
| `journalctl --disk-usage`            | Show the disk space used by the journal                                     |
| `journalctl --vacuum-time=time`      | Remove journal files older than the specified time                          |
| `journalctl --vacuum-size=size`      | Remove old journal files until the total size is below the specified size   |
| `journalctl -o json-pretty`          | Output logs in pretty JSON format                                           |

## `rsyslog` (or `syslog` in general)
| Command/Configuration                | Description                                                                 |
|--------------------------------------|-----------------------------------------------------------------------------|
| `/etc/rsyslog.conf`                  | Main configuration file for rsyslog                                         |
| `/etc/rsyslog.d/`                    | Directory for additional configuration files                                |
| `sudo systemctl restart rsyslog`     | Restart the rsyslog service                                                 |
| `logger "message"`                   | Add a message to the system log                                             |
| `/var/log/messages`                  | General system log                                                          |
| `/var/log/secure`                    | Authentication and security related messages                                |
| `/var/log/maillog`                   | Mail server logs                                                            |
| `/var/log/cron`                      | Cron job logs                                                               |
| `/var/log/boot.log`                  | System boot log                                                             |
| `/var/log/dmesg`                     | Kernel ring buffer log                                                      |

## `top` / `htop`
| Command                              | Description                                                                 |
|--------------------------------------|-----------------------------------------------------------------------------|
| `top`                                | Display real-time system information including tasks and load               |
| `htop`                               | Interactive process viewer (requires installation)                          |
| `top -u username`                    | Show only processes for a specific user                                     |
| `top -p PID`                         | Show only the specified PID(s)                                              |
| `htop -u username`                   | Show only processes for a specific user (in htop)                           |

## `free`
| Command                              | Description                                                                 |
|--------------------------------------|-----------------------------------------------------------------------------|
| `free`                               | Display memory usage                                                        |
| `free -h`                            | Display memory usage in human-readable format                               |
| `free -m`                            | Display memory usage in megabytes                                           |
| `free -g`                            | Display memory usage in gigabytes                                           |

## `vmstat`
| Command                              | Description                                                                 |
|--------------------------------------|-----------------------------------------------------------------------------|
| `vmstat`                             | Display virtual memory statistics                                           |
| `vmstat 1`                           | Display virtual memory statistics every second                              |
| `vmstat -s`                          | Display memory statistics                                                   |
| `vmstat -d`                          | Display disk statistics                                                     |
| `vmstat -t`                          | Display timestamps with the output                                          |

## `iostat`
| Command                              | Description                                                                 |
|--------------------------------------|-----------------------------------------------------------------------------|
| `iostat`                             | Display CPU and I/O statistics                                              |
| `iostat -x`                          | Display extended statistics                                                 |
| `iostat -d`                          | Display device utilization statistics                                       |
| `iostat -c`                          | Display only CPU statistics                                                 |
| `iostat -p ALL`                      | Display statistics for all devices and partitions                           |

## `mpstat`
| Command                              | Description                                                                 |
|--------------------------------------|-----------------------------------------------------------------------------|
| `mpstat`                             | Display CPU usage                                                           |
| `mpstat -P ALL`                      | Display CPU usage for all processors                                        |
| `mpstat 1 5`                         | Display CPU usage every second for 5 times                                  |

## `sar`
| Command                              | Description                                                                 |
|--------------------------------------|-----------------------------------------------------------------------------|
| `sar`                                | Collect and report system activity                                          |
| `sar -u 1 3`                         | Report CPU utilization every second for 3 times                             |
| `sar -r`                             | Report memory utilization                                                   |
| `sar -n DEV`                         | Report network statistics                                                   |
| `sar -b`                             | Report I/O and transfer rate statistics                                     |

## `netstat` / `ss`
| Command                              | Description                                                                 |
|--------------------------------------|-----------------------------------------------------------------------------|
| `netstat -tuln`                      | List all listening ports                                                    |
| `netstat -i`                         | Display network interfaces                                                  |
| `netstat -rn`                        | Display routing table                                                       |
| `netstat -s`                         | Display network statistics                                                  |
| `ss -tuln`                           | List all listening ports (ss command)                                       |
| `ss -i`                              | Display network interfaces (ss command)                                     |
| `ss -rn`                             | Display routing table (ss command)                                          |
| `ss -s`                              | Display network statistics (ss command)                                     |

## `iftop` (requires installation)
| Command                              | Description                                                                 |
|--------------------------------------|-----------------------------------------------------------------------------|
| `iftop`                              | Display real-time network bandwidth usage                                   |
| `iftop -i interface`                 | Display network bandwidth usage for a specific interface                    |
| `iftop -P`                           | Show ports                                                                  |
| `iftop -n`                           | Show numerical addresses rather than resolving hosts                        |

## `tcpdump`
| Command                              | Description                                                                 |
|--------------------------------------|-----------------------------------------------------------------------------|
| `tcpdump -i interface`               | Capture packets on a specific interface                                     |
| `tcpdump -n host host`               | Capture packets to/from a specific host                                     |
| `tcpdump -nn port port`              | Capture packets on a specific port                                          |
| `tcpdump -w file.pcap`               | Write captured packets to a file                                            |
| `tcpdump -r file.pcap`               | Read packets from a file                                                    |


# Important `/proc` Subdirectories and Files

| Directory/File                 | Description                                                                 |
|--------------------------------|-----------------------------------------------------------------------------|
| `/proc/cpuinfo`                | Detailed information about the CPU, such as model, cores, and speed         |
| `/proc/meminfo`                | Detailed information about memory usage                                     |
| `/proc/version`                | Kernel version and build information                                        |
| `/proc/cmdline`                | Kernel command line used to boot the system                                 |
| `/proc/devices`                | Lists all character and block devices currently configured                  |
| `/proc/diskstats`              | Disk I/O statistics                                                         |
| `/proc/uptime`                 | System uptime information                                                   |
| `/proc/loadavg`                | Load average of the system                                                  |
| `/proc/mounts`                 | Mounted filesystems                                                         |
| `/proc/partitions`             | Information about disk partitions                                           |
| `/proc/swaps`                  | Swap space utilization                                                      |
| `/proc/sys`                    | Kernel tunable parameters (sysctl)                                          |
| `/proc/sys/kernel`             | Kernel-related parameters                                                   |
| `/proc/sys/net`                | Network-related parameters                                                  |
| `/proc/net`                    | Network status information                                                  |
| `/proc/interrupts`             | Number of interrupts per CPU per I/O device                                 |
| `/proc/iomem`                  | Memory map for the system                                                   |
| `/proc/ioports`                | I/O port usage                                                              |
| `/proc/modules`                | Loaded kernel modules                                                       |
| `/proc/kallsyms`               | Kernel symbol table                                                         |
| `/proc/kcore`                  | Pseudo-file representing the physical memory of the system                  |
| `/proc/slabinfo`               | Kernel slab allocator information                                           |
| `/proc/self`                   | Process-specific information for the current process                        |
| `/proc/self/cmdline`           | Command line of the current process                                         |
| `/proc/self/environ`           | Environment variables of the current process                                |
| `/proc/self/exe`               | Symlink to the executable of the current process                            |
| `/proc/self/status`            | Current process status information                                          |
| `/proc/self/limits`            | Resource limits of the current process                                      |
| `/proc/self/mounts`            | Mounts of the current process                                               |
| `/proc/self/cgroup`            | Cgroup membership of the current process                                    |
| `/proc/self/fd`                | File descriptors opened by the current process                              |
| `/proc/self/fdinfo`            | Detailed information about file descriptors                                 |
| `/proc/self/maps`              | Memory maps of the current process                                          |
| `/proc/self/smaps`             | Extended memory maps of the current process                                 |
| `/proc/self/mem`               | Memory of the current process                                               |
| `/proc/self/task`              | Tasks (threads) of the current process                                      |
| `/proc/[pid]/`                 | Information specific to process with PID                                    |
| `/proc/[pid]/cmdline`          | Command line of the process with PID                                        |
| `/proc/[pid]/environ`          | Environment variables of the process with PID                               |
| `/proc/[pid]/exe`              | Symlink to the executable of the process with PID                           |
| `/proc/[pid]/status`           | Status information of the process with PID                                  |
| `/proc/[pid]/limits`           | Resource limits of the process with PID                                     |
| `/proc/[pid]/mounts`           | Mounts of the process with PID                                              |
| `/proc/[pid]/cgroup`           | Cgroup membership of the process with PID                                   |
| `/proc/[pid]/fd`               | File descriptors opened by the process with PID                             |
| `/proc/[pid]/fdinfo`           | Detailed information about file descriptors of the process with PID         |
| `/proc/[pid]/maps`             | Memory maps of the process with PID                                         |
| `/proc/[pid]/smaps`            | Extended memory maps of the process with PID                                |
| `/proc/[pid]/mem`              | Memory of the process with PID                                              |
| `/proc/[pid]/task`             | Tasks (threads) of the process with PID                                     |

# MPV Hotkeys Cheatsheet

| Hotkey               | Description                                                                 |
|----------------------|-----------------------------------------------------------------------------|
| `Space`              | Toggle play/pause                                                           |
| `f`                  | Toggle fullscreen                                                           |
| `m`                  | Mute/unmute audio                                                           |
| `9` / `(`            | Decrease volume                                                             |
| `0` / `)`            | Increase volume                                                             |
| `[`                  | Decrease playback speed                                                     |
| `]`                  | Increase playback speed                                                     |
| `{`                  | Halve playback speed                                                        |
| `}`                  | Double playback speed                                                       |
| `backspace`          | Reset playback speed to normal                                              |
| `Left Arrow`         | Seek backward 5 seconds                                                     |
| `Right Arrow`        | Seek forward 5 seconds                                                      |
| `Up Arrow`           | Seek forward 60 seconds                                                     |
| `Down Arrow`         | Seek backward 60 seconds                                                    |
| `Shift+Left Arrow`   | Seek backward 1 second                                                      |
| `Shift+Right Arrow`  | Seek forward 1 second                                                       |
| `Ctrl+Left Arrow`    | Seek backward 10 minutes                                                    |
| `Ctrl+Right Arrow`   | Seek forward 10 minutes                                                     |
| `.`                  | Move forward one frame (pause required)                                     |
| `,`                  | Move backward one frame (pause required)                                    |
| `o`                  | Show file info                                                              |
| `I`                  | Show codec info                                                             |
| `q`                  | Quit                                                                        |
| `Q`                  | Force quit (without saving the resume position)                             |
| `s`                  | Take a screenshot                                                           |
| `S`                  | Take a screenshot without subtitles                                         |
| `Ctrl+s`             | Take a screenshot and include the OSD                                       |
| `T`                  | Toggle displaying time                                                      |
| `Ctrl+o`             | Cycle through OSD (On-Screen Display) levels                                |
| `v`                  | Toggle subtitles                                                            |
| `j`                  | Cycle through subtitles                                                     |
| `J`                  | Cycle through secondary subtitles                                           |
| `#`                  | Toggle subtitle visibility                                                  |
| `z`                  | Adjust subtitle delay backward                                              |
| `x`                  | Adjust subtitle delay forward                                               |
| `r`                  | Rotate video                                                                |
| `p`                  | Toggle between current and previous subtitle track                          |
| `l`                  | Adjust audio delay backward                                                 |
| `k`                  | Adjust audio delay forward                                                  |
| `Ctrl++`             | Increase subtitle font size                                                 |
| `Ctrl+-`             | Decrease subtitle font size                                                 |
| `Alt++`              | Increase subtitle border size                                               |
| `Alt+-`              | Decrease subtitle border size                                               |
| `Ctrl+r`             | Toggle random playback                                                      |
| `Ctrl+shift+r`       | Toggle looping playback                                                     |
| `Ctrl+p`             | Toggle playlist navigation display                                          |
| `Ctrl+u`             | Reload playlist                                                             |
| `Ctrl+Enter`         | Toggle between fullscreen and windowed mode                                 |
| `Esc`                | Exit fullscreen or close OSD menu                                           |
| `h`                  | Seek to the previous chapter                                                |
| `l`                  | Seek to the next chapter                                                    |
| `y`                  | Adjust subtitle delay back by 0.1 seconds                                   |
| `Y`                  | Adjust subtitle delay forward by 0.1 seconds                                |
| `t`                  | Toggle stay-on-top mode                                                     |
| `Ctrl+f`             | Toggle autofit                                                              |
| `Ctrl+c`             | Copy current file path to clipboard                                         |
| `Ctrl+v`             | Paste URL/file path from clipboard and open                                 |

