# New computer setup

## General
- [ ] Chrome
- [ ] Slack
- [ ] Spotify
- [ ] Dropbox
- [ ] Password
- [ ] Zight
- [ ] Hand Mirror
- [ ] Numi

<details>
  <summary>Speed up screenshots</summary>

  1. CMD + Shift + 5
  2. Options → Uncheck "Show floating thumbnail"
</details>

## Design
- [ ] Figma
- [ ] ImageOptim
- [ ] Icon Slate

## Dev
- [ ] [Rosetta Terminal](https://dev.to/courier/tips-and-tricks-to-setup-your-apple-m1-for-development-547g)
- [ ] [Hyper](https://hyper.is) (see [.hyper](.hyper))
- [ ] [Homebrew](https://brew.sh)
- [ ] [Yarn](https://yarnpkg.com) `curl -o- -L https://yarnpkg.com/install.sh | bash`
- [ ] [VS Code](https://code.visualstudio.com)
- [ ] Setup `code` CLI (In VS Code, `CMD + Shift + P`, search "shell" and use install `code` command)
- [ ] ZSH (see [.zshrc](.zshrc))
- [ ] Xcode (App Store)
- [ ] [Xcode dev tools](https://developer.apple.com/download/more) `xcode-select --install` (includes `git`)
- [ ] Set Git user `git config --global --edit`
- [ ] Create [Git access token](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/creating-a-personal-access-token)
- [ ] Clone a repo (`git clone <url>`) and sign in using the token as the password

...and all done! 🤞🎉

## Dev+
- [ ] [Node Version Manager (nvm)](https://github.com/nvm-sh/nvm#installing-and-updating)
- [ ] [Ruby Version Manager (rbenv)](https://github.com/rbenv/rbenv)
- [ ] [Python Version Manager (pyenv)](https://github.com/pyenv/pyenv)
- [ ] [React Developer Tools](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi?hl=en)
- [ ] [Vercel CLI](https://vercel.com) `yarn global add vercel`

<details>
  <summary>Automating SSH passphrase entry</summary>

  1. Start SSH Agent ```eval `ssh-agent -s` ```
  2. Prompt to add SSH key `ssh-add ~/.ssh/id_rsa_key`
  3. Confirm key was added `ssh-add -l`
  4. Connect to Git `ssh git.example.com`
</details>

## Reference
- https://github.com/nicolashery/mac-dev-setup
- https://docs.github.com/en/free-pro-team@latest/github/getting-started-with-github/set-up-git
- https://gist.github.com/progrium/b286cd8c82ce0825b2eb3b0b3a0720a0 (M1 macs + Homebrew)
- https://deepu.tech/configure-a-beautiful-terminal-on-unix
- https://github.com/wesbos/dotfiles
- https://flaviocopes.com/npm-fix-missing-write-access-error
- https://uses.tech
