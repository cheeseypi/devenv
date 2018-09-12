FROM ubuntu:18.04

RUN apt update && apt -y upgrade
RUN apt install -y vim git python

RUN git clone https://github.com/cheeseypi/dotfiles ~/.dotfiles
RUN rm ~/.bashrc
RUN ~/.dotfiles/install

RUN git clone https://github.com/VundleVim/Vundle.vim ~/.vim
