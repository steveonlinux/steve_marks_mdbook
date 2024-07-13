# Linux Journey
*For this I will only be taking note of material I would like to reaffirm or commit to memory. Therefore these notes are not exhaustive or that verbose since much of the material on this site I already know*
[Link](https://linuxjourney.com/)
## Grasshopper
### Text Fu
#### Data Streams (STDIO)
* Standard In (stdin)
	* Numerically represented as `0`
* Standard Out (stdout)
	* Numerically represented as `1`
* Standard Error (stderr)
	* Numerically represented as `2`
### User Management
* `/etc/passwd`
	* Contains username, default shell, home directory, UID and GID
* `/etc/shadow`
	* Contains encrypted password, change history, constraints
* `/etc/group`
	* Contains groups and users
### Permissions
* File type followed by three field of three bits define permissions
* d | rwx | rwx | rwx
* So it is octal, decimal representation is 0-7 or null
* `umask` masks off to define default set of permissions on new files
* The set user id or **SUID** bit enables executing a file as the owner of the file. `x` is replaced with `s`. It is numerically represented as 4 prepended.
* The set group id or **GUID** bit is a synonymous concept, numerically represented as 2 prepended 
*S represents a SUID or GUID bit that it set, while the executable bit itself is not*
* The **sticky** bit allows only the owner or root to edit a file. Numerically represented as 1 prepended. Represented as `t` appended.
*T represents a sticky bit where the executable bit itself is not set*

#### Process Permissions:

* Process UIDs 
	* **effective user id**: permission of running user
	* **real user id**: user that launched process
	* **saved user id**: essentially a cached id that allows for switching between
	*root uid is 0*
	> When running the passwd command, your effective UID is your user ID, let's say its 500 for now. Oh but wait, remember the passwd command has the SUID permission enabled. So when you run it, your effective UID is now 0 (0 is the UID of root). Now this program can access files as root. Let's say you get a little taste of power and you want to modify Sally's password, Sally has a UID of 600. Well you'll be out of luck, fortunately the process also has your real UID in this case 500. It knows that your UID is 500 and therefore you can't modify the password of UID of 600. (This of course is always bypassed if you are a superuser on a machine and can control and change everything). Since you ran passwd, it will start the process off using your real UID, and it will save the UID of the owner of the file (effective UID), so you can switch between the two. No need to modify all files with root access if it's not required. Most of the time the real UID and the effective UID are the same, but in such cases as the passwd command they will change.
	
### Processes
* Controlling terminal: the terminal a process is bound to
* Processes are instances of a program
* `ps aux`
> When a new process is created, an existing process basically clones itself using something called the fork system call (system calls will be discussed very far into the future). The fork system call creates a mostly identical child process, this child process takes on a new process ID (PID) and the original process becomes its parent process and has something called a parent process ID **PPID**. Afterwards, the child process can either continue to use the same program its parent was using before or more often use the execve system call to launch up a new program. This system call destroys the memory management that the kernel put into place for that process and sets up new ones for the new program.
* Orphans: Processes that have no parent and are adopted and queued for killing by init
* Zombies: Children that die before `wait()` is called. They will be *reaped* if parent calls `wait()` or is adopted then killed by init
#### Signals
* Software interrupts that can for killing, suspending, or communicating
* Processes have signal masks
> Common signals
Each signal is defined by integers with symbolic names that are in the form of SIGxxx. Some of the most common signals are:
SIGHUP or HUP or 1: Hangup
SIGINT or INT or 2: Interrupt
SIGKILL or KILL or 9: Kill
SIGSEGV or SEGV or 11: Segmentation fault
SIGTERM or TERM or 15: Software termination
SIGSTOP or STOP: Stop
Numbers can vary with signals so they are usually referred by their names.
* `kill` sends terminate sig by default or signal of choosing through option `-sig_num`
#### Niceness
* Process CPU priority
	* Number -20 through 19
	* Higher == Lower Priority
	* Lower == Higher Priority 
#### `/proc`
* `/proc` contains info on pids abstracted as files in `/proc/"pid_num"`

#### Job Control
* `&` runs job in background of controlling terminal
* `jobs` outputs background jobs 
* `CTRL-Z` sends current jobs to background
* `fg` moves background jobs to foreground
* `kill` can kill background jobs as well
### Packaging
* `tar xvf` is good for archiving
* This site discusses gunzip for compressing.
* tar supports compressing with it: `tar czvf`, and uncompressing: `tar xzfv`

## Journeyman
### Devices
* `/dev` is where device files reside including *pseudo devices*
> Remember in the ls command you can see the type of file with the first bit on each line. Device files are denoted as the following:
c - character
b - block
p - pipe
s - socket
* Character: sends data one char at a time
* Block: large fized sized blocks (storage)
* Pipe: *pipes* data form one process to another
* Socket: Similar to pipe but with multiple processes simultaneously 
#### Naming
* SCSI protocol: prefixed sd the a-z
* `zero` `null` and `random`
* PATA for older hardware prefixed with hd
#### sysfs
* `/sys` contains information on devices 
#### udev
> The udev system dynamically creates and removes device files for us depending on whether or not they are connected.
* udevd is the associated daemon
* rules located in `/etc/udev/rules.d`
#### Listing and dd
* `lsusb`, `lspci`, and `lsscsi`
* dd for writing data **THE DISK DESTROYER**
### The Filesystem
*The majority of this section is already learned*
#### Inodes
* Index table of references to file metadata and the data blocks themselves
* Created at filesystem creation
* Can be exhausted 
> In a typical filesystem (not all work the same), each inode contains 15 pointers, the first 12 pointers point directly to the data blocks. The 13th pointer, points to a block containing pointers to more blocks, the 14th pointer points to another nested block of pointers, and the 15th pointer points yet again to another block of pointers!
### Boot The System
>initrd - Specifies the location of initial RAM disk (we'll talk more about this in the next lesson).
BOOT_IMAGE - This is where the kernel image is located
root - The location of the root filesystem, the kernel searches inside this location to find init. It is often represented by it's UUID or the device name such as /dev/sda1.
ro - This parameter is pretty standard, it mounts the fileystem as read-only mode.
quiet - This is added so that you don't see display messages that are going on in the background during boot.
splash - This lets the splash screen be shown.
#### Kernel
* *initrd* and *initramfs* are temp file systems that exists to load necessary drivers for hardware communication during boot
### Kernel
* Hardware --> Kernel --> Userspace
* x86 privledge levels or *protection rings*: 3-->0
#### System Calls
* C code that provide user space processes means of communicating kernel 
* Uses API
* Programs contain syscall wrappers for traps
* trap gets caught and references syscall table
* `strace` outputs syscalls of process
#### Kernel Location
>You will see multiple files for different kernel versions:
vmlinuz - this is the actual linux kernel
initrd - as we've discussed before, the initrd is used as a temporary file system, used before loading the kernel
System.map - symbolic lookup table
config - kernel configuration settings, if you are compiling your own kernel, you can set which modules can be loadess

#### Kernel Modules
* `lsmod`, `modprobe`, and `/etc/modprobe.d/`
*Drivers can be a kind of kernel module if not built in*
### Init
#### SysV
>0: Shutdown
1: Single User Mode
2: Multiuser mode without networking
3: Multiuser mode with networking
4: Unused
5: Multiuser mode with networking and GUI
6: Reboot

#### SystemD
* Target and dependency based 
>First, systemd loads its configuration files, usually located in /etc/systemd/system or /usr/lib/systemd/system
Then it determines its boot goal, which is usually default.target
Systemd figures out the dependencies of the boot target and activates them

> poweroff.target - shutdown system
rescue.target - single user mode
multi-user.target - multiuser with networking
graphical.target - multiuser with networking and GUI
reboot.target - restart
* *Units* are files that contain config directives
>  The most common units are:
Service units - these are the services we've been starting and stopping, these unit files end in .service
Mount units - These mount filesystems, these unit files end in .mount
Target units - These group together other units, the files end in .target

* Further Reading: [Red Hat Wiki](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/9/html/using_systemd_unit_files_to_customize_and_optimize_your_system/assembly_working-with-systemd-unit-files_working-with-systemd#assembly_working-with-systemd-unit-files_working-with-systemd)
### Process Utilization
* `top`
* `lsof`
* `fuser`
* view threads with: `ps m`
* `uptime`, `iostat`, `/proc/cpuinfo`, `vmstat`, `sar`
* Cron jobs: `crontab -e`
### Logging
* syslog is a service that sends info the the logger
* daemon is syslogd or rsyslogd
* logs are generally in `/var`
* `/var/log/syslog
* `var/log/kern.log
* `/var/log/auth.log
* logrotate to rotate logs, `/etc/logrotate.d`

---
I want to pivot off of this reading by taking notes from the Red Hat Wiki specifically on SystemD. All in all this website is a great resource and I highly recommend it for anyone getting into Linux.

