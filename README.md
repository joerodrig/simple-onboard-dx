# Simple-Onboard-DX

Setup a new MacOS development environment the simple way.

To personalize this setup, clone or fork this repo and update the configs.

# What's downloaded/installed

### Applications Installed
1. VSCode
2. Github Desktop App
3. Postico
4. Postman

### Managers Installed
1. Homebrew(subpackages: git, ruby-install, redis, chruby)
2. Nvm(subpackages: Node 12.16.3, npm (latest))

### Applications Downloaded(Manually install these!)
1. Docker
2. Chrome
3. 1Password

# How it works
When you run `sh setup.sh` from the root directory, you will kick off the setup script that starts all the installations.

Walkthrough in the order of how they're invoked:
1) `sh ./apps/auto-installs.sh` is triggered.
This script will automatically download and install VSCode, Github Desktop App, Postico and Postman to your `/Applications` directory

2) `sh ./managers/brew/setup.sh` is called
This script will install HomeBrew onto your system and then install git, ruby-install, redis and chruby(Ruby version manager).

3) `sh ./managers/nvm/setup.sh` is called
This script installs NVM(Node version manager) and installs the latest Node and NPM version

4) `sh ./apps/manual-installs.sh` is called
This script will create a new directory called `manual` in the directory the setup script was run from and **download** Docker, Chrome and 1Password to that directory. It's up to you to manually choose whether you install those files.

# Recommendations

- The application download URLs here are all pulled directly from the download pages of their respective sites. These links may expire when newer versions of the app become available, resulting in the downloads failing. To account for that, you can create your own copies of these applications and share those URLs instead.

- Try and keep downloads/installs to a minimum if you're using this to onboard people to a new team. The more complicated you make the setup, the less likely it becomes that people will be able to, or want to maintain things in the future. 

# Inspiration 
This project demonstrates the simplicity of automating a development environment setup. My inspiration for this came from working at a few different companies and outside projects and finding that there were common applications I'd need to manually install, as well as app-specific dependencies I needed before being able to work on anything. There are many existing solutions to speed up this process: You can role your own [Puppet](https://puppet.com/) configs, or learn and use a system like [Boxen](https://github.com/boxen). You can also set up pre-built images or use tools like JAMF to push through installations. 

Unfortunately, unless you have a team already familiar with that system, or tasked with improving developer experience, the ROI is low, and the overhead high. For most cases, a few simple bash scripts can address most installation steps, and most people know enough bash to be able to easily contribute any future changes. The goal is not to build the 'perfect' dev machine from scratch, but rather give access to most of the common tooling a new machine should have.

This repo contains installations for a basic dev machine that will be using Node and Ruby. Some applications I personally use on every machine are also in here. To build your a similar setup, you can fork this repo and make any changes you want.