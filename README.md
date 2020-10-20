# New computer setup

## Install basics
- [ ] Chrome
- [ ] Figma
- [ ] Spotify
- [ ] Numi
- [ ] 1Password
- [ ] Xcode (App Store > Xcode)
- [ ] [Atom](https://atom.io) (see below)
- [ ] [Hyper](https://hyper.is) ([config](./config/hyper))
- [ ] [Node JS](https://nodejs.org) (comes with [npm](https://www.npmjs.com/get-npm))
- [ ] [Yarn](https://yarnpkg.com/) (`npm install -g yarn`)

Optional extras:
- [ ] [Node Version Manager](https://github.com/nvm-sh/nvm#installing-and-updating)
- [ ] [Ruby Version Manager](https://rvm.io)
- [ ] React Developer Tools (browser ext)

## Next steps

### Atom
1. Atom > Install Shell Commands (for `atom` instead of `open`)
2. Atom > Preferences > Install: [Kite](https://www.kite.com)

### Hyper
1. Hyper > Preferences
2. Paste [config](./config/hyper) contents
3. Packages > Install CLI
4. Restart Hyper (if plugins aren't working)

### Bash
1. Open profile: `atom ~/.bash_profile`
2. Paste [bash profile](./config/bashprofile) contents
3. Reload profile: `source ~/.bash_profile`

If new shells don't load bash profile, you may need to add `. ~/.bash_profile` to `~/.zshrc` and/or `~/.bashrc`. Run `echo $0` to see which bash interface you're running.

### Homebrew
1. Install Xcode (App Store > Xcode)
2. Install developer tools ([downloads](https://developer.apple.com/download/more/) or `xcode-select --install`)
3. Install [Homebrew](https://brew.sh)

### Git
1. Run: `brew install git`
2. Open config: `atom ~/.gitconfig`
3. Paste git config contents
4. Generate an [access token](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/creating-a-personal-access-token)
5. `git clone` a repo and sign in

### ...and, all done! 🤞🎉

## Reference
- https://github.com/nicolashery/mac-dev-setup
- https://docs.github.com/en/free-pro-team@latest/github/getting-started-with-github/set-up-git
- https://deepu.tech/configure-a-beautiful-terminal-on-unix
- https://uses.tech
