# Wednesday's Boxen

Automate the pain out of your development environment. Boxen installs your dependencies so you can focus on getting things done.

## Getting Started

There are a few potential conflicts to keep in mind.
Boxen does its best not to get in the way of a dirty system,
but you should check into the following before attempting to install your
boxen on any machine (boxen does some checks before every Boxen run to try
and detect most of these and tell you anyway):

* Boxen __requires__ at least the Xcode Command Line Tools installed.
* Boxen __will not__ work with an existing rvm install.
* Boxen __may not__ play nice with a GitHub username that includes dash(-)
* Boxen __may not__ play nice with an existing rbenv install.
* Boxen __may not__ play nice with an existing chruby install.
* Boxen __may not__ play nice with an existing homebrew install.
* Boxen __may not__ play nice with an existing nvm install.
* Boxen __recommends__ installing the full Xcode.

### Dependencies

**Install the Xcode Command Lines Tools and/or full Xcode.**
This will grant you the most predictable behavior in building apps like
MacVim.

How do you do it?

1. Install Xcode from the Mac App Store.
1. Open Xcode.
1. Open the Preferences window (`Cmd-,`).
1. Go to the Downloads tab.
1. Install the Command Line Tools.

**Create your own "dotfiles" repository on your own Github account.**
You may fork the sample dotfiles directory at https://github.com/karl-wednesday/dotfiles/ for this purpose.


## Installation

Install boxen as follows:

```
sudo mkdir -p /opt/boxen
sudo chown ${USER}:staff /opt/boxen
git clone https://github.com/karl-wednesday/boxen/ /opt/boxen/repo
cd /opt/boxen/repo
script/boxen
```

Keep in mind this requires you to encrypt your hard drive by default.
If you do not want to do encrypt your hard drive, you can use the `--no-fde`.

```
script/boxen --no-fde
```

It should run successfully, and should tell you to source a shell script
in your environment.
For users without a bash or zsh config or a `~/.profile` file,
Boxen will create a shim for you that will work correctly.
If you do have a `~/.bashrc` or `~/.zshrc`, your shell will not use
`~/.profile` so you'll need to add a line like so at _the end of your config_:

``` sh
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
```

Once your shell is ready, open a new tab/window in your Terminal
and you should be able to successfully run `boxen --env`.
If that runs cleanly, you're in good shape.

## What You Get

This template project provides the following by default:

* Homebrew
* Git
* Hub
* dnsmasq w/ .dev resolver for localhost
* rbenv
* Full Disk Encryption requirement
* Node.js 0.4
* Node.js 0.6
* Node.js 0.8
* Ruby 1.8.7
* Ruby 1.9.2
* Ruby 1.9.3
* ack
* Findutils
* GNU tar
