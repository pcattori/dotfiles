# dotfiles

```sh
brew install stow
stow -t $HOME home
```

## profiles

```sh
stow -t $HOME --override '.*' <profile>
```
