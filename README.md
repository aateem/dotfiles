dotfiles
========

Configuration files for my working environment

Installation
============

Is exploited by GNU stow utility, therefore one must have it installed into
his/her system. One of the way to do that is installation via system's package
manager like apt or yum in Linux distros and brew in Mac OS. Example for Debian/Ubuntu:

    $ apt-get install stow

To deploy needed configuration go to the root of dotfiles dir and give name of the
component to stow utility. For example, vim configuration will look like this:

    $ cd ~/dotfiles
    $ stow vim

This will create symlink in your home directory to `dotfiles/vim/.vimrc` file.

Please note that I'm using [Vundle](https://github.com/gmarik/Vundle.vim) as vim
plugin manager which required additional preinstallation steps described on
the project's page.

Sources
=======

* ikalnitsky/dotfiles
* [kianmeng.org](http://kianmeng.org/blog/2014/03/08/using-gnu-stow-to-manage-your-dotfiles/)

