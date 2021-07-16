# Preparing for the Summer Institute: Using GitHub 

Throughout the course of this week, you will find presentation slides, example 
code, datasets, and other training material available via GitHub 
repositories. In some training sessions, you will likely be asked to material 
in this repository to complete a part of your hands-on 
training. The easiest way to do this will be with [`git`](https://git-scm.com/).
As such, before you arrive at the Summer Institute, please make sure you have 
installed a copy of `git` on your laptop.

<a name="top">**Contents::**
* [Create Git Account](#git-acct)
* [Install Git](#git-install)
    - [Install Git on Linux](#git-install-linux)
    - [Install Git on Mac](#git-install-mac)
    - [Install Git on Windows](#git-install-windows)
* Clone the SI20 repository(#clone)
 
To learn the basics of GitHub, see the [GitHub Guide](https://help.github.com/en/articles/set-up-git). 

Note: if you have any difficulties completing these tasks, please contact Institute staff at consult@sdsc.edu.

## Create a GitHub Account: <a name="git-acct"></a>
See:  see https://github.com/join 
If you do not currently have a [GitHub](https://github.com/) account, you must 
obtain one prior to attending the Summer Institute. Working with  
`git` and GitHub will be covered in both
introductory and advanced training sessions on these tools.

## Preparation: Install *git* <a name="git-install"></a>

### Installing *git* on Linux:<a name="git-install-linux"></a>

If you want to install `git` on a Linux-based operating system, you should be
able to do so via your operating system's standard package management tool. For
example, on any RPM-based Linux distribution, such as Fedora, RHEL, or CentOS, 
you can use `dnf`:

```
$ sudo dnf install git-all
```

Or on any Debian-based distribution, such as Ubuntu, try `apt`:

```
$ sudo apt install git-all
```

### Installing `git` on Mac OS X: <a name="git-install-mac"></a>

There are several ways to install `git` on your Mac. However, probably the 
easiest way is to install the [Xcode](https://developer.apple.com/xcode/) 
Command Line Tools, which you should be able to do by simply tying to run git 
from your [Terminal](https://support.apple.com/guide/terminal/welcome/mac):

```
$ git --version
```

If it's not already installed, you should be prompted to install it.

If the above option does not work or you need a more up-to-date version of 
`git`, you can always install it via a binary installer maintained by the `git`
team, which is available for download at: 

[https://git-scm.com/download/mac](https://git-scm.com/download/mac). 

The download should start immediately.
 
### Installing `git` on Windows: <a name="git-install-windows"></a>

There are also several ways to install `git` under Windows. The official 
binary executable is available for download on the `git` website:

[https://git-scm.com/download/win](https://git-scm.com/download/win)

However, if you've chosen to work on the [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/about)
this week, then simply follow the installation directions for Linux given above.


## Clone the SI20 repository: <a name="git-clone"></a>
  * Open a terminal window on your laptop. Optionally, create a directory to save the repo; cd into that directory
  * In your browser, open the link to the repository: [https://github.com/sdsc/sdsc-summer-institute-2020](https://github.com/sdsc/sdsc-summer-institute-2020)
  * Click on the green "Clone or Download" and select the "Clone with SSH" option
    * copy the link in the box
  * In your terminal window, type the following command
```
$ git clone git@github.com:sdsc/sdsc-summer-institute-2019.git
```

The repository should start downloading onto your laptop.

## Suggested On-line Tutorials

* [SI19 GitHub Tutorial Session[(https://github.com/sdsc/sdsc-summer-institute-2019/tree/master/4_version_control_git_github)
* [https://swcarpentry.github.io/git-novice/](https://swcarpentry.github.io/git-novice/)
