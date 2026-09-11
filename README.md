# homebrew-izuna

[Izuna](https://github.com/Watakumi/izuna) の Homebrew tap。

```bash
brew tap watakumi/izuna
brew trust watakumi/izuna      # Homebrew 6 は自分以外の tap を信頼するまで読まない
brew install --cask izuna
```

Apple Silicon の macOS だけ。署名していないので、初回の開き方は `brew info --cask izuna` の caveats か
[docs/SETUP.md](https://github.com/Watakumi/izuna/blob/main/docs/SETUP.md) を見ること。

版を上げるときは `Casks/izuna.rb` の `version` と `sha256`（`shasum -a 256 izuna-<版>.dmg`）を書き換える。
