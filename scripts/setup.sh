#!/bin/bash

sudo apt install make gcc -y

# ************************************************************************** */
# Clean current ping (from iputils package)                                  */
# ************************************************************************** */

# Remove current package + configuration files
sudo apt purge iputils-ping -y

# ************************************************************************** */
# Install Inetutils 2.0 by downloading and compiling GNU sources             */
# ************************************************************************** */

wget https://ftp.gnu.org/gnu/inetutils/inetutils-2.0.tar.gz
tar -xzf inetutils-2.0.tar.gz
cd inetutils-2.0/
./configure
make
sudo make install

ping --version