## Overview

This is a Vagrant file and set of Chef recipes for building a basic node development environment which includes the following:

* ubuntu (12.04)
* node.js (0.10.26)
* mongodb
* redis
* git
* foreman (0.60.2)
* node-inspector

*Note:* The latest version of foreman had an issue properly killing off its child processes.

## Prerequisites

You need to have Vagrant and VirtualBox installed. This particular setup has been tested on VirtualBox 4.2.12 and Vagrant 1.2.1.

* VirtualBox (http://www.virtualbox.org)
* Vagrant (http://www.vagrantup.com)

## Using

Clone the repository, change any settings and then start the VM.

    git clone https://github.com/twalling/node-vagrant.git
    cd node-vagrant
    vagrant up

You can test out your environment by logging into your environment and checking the version of node installed.

    vagrant ssh
    node --version

## Important Note about Installing NPM Packages

Later versions of VirtualBox do not support symlinks in shared folders which can cause issues when installing certain packages via npm. To get around this the VagrantFile sets an option which allows symlinks. From what I've read, this doesn't work when the host machine is Windows.

One possible workaround for this is to install node packages in your shared folder with the  `--no-bin-links flag`.

    npm install express --no-bin-links

## Credit

I bootstrapped this setup via from an existing example provided here: https://github.com/semmypurewal/node-dev-bootstrap

