# homebrew-izuna

Homebrew tap for [Izuna](https://github.com/Watakumi/izuna).

```bash
brew tap watakumi/izuna
brew trust watakumi/izuna      # Homebrew 6 refuses third-party taps until you trust them
brew install --cask izuna
```

Apple Silicon macOS only. The app is unsigned; see the caveats (`brew info --cask izuna`) or
[docs/SETUP.md](https://github.com/Watakumi/izuna/blob/main/docs/SETUP.md) for how to open it the first time.

To bump the version, edit `version` and `sha256` (`shasum -a 256 izuna-<version>.dmg`) in `Casks/izuna.rb`.
