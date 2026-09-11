cask "izuna" do
  version "0.1.0"
  sha256 "4d7742ae16b7c25ba41d0d773904dcc52a996f6965541acce7ac042676858973"

  url "https://github.com/Watakumi/izuna/releases/download/v#{version}/izuna-#{version}.dmg"
  name "Izuna"
  desc "Claude Code を自分の Forgejo と一緒にデスクトップから使う macOS アプリ"
  homepage "https://github.com/Watakumi/izuna"

  depends_on arch: :arm64

  app "Izuna.app"

  # 署名していない（証明書は人が用意する。docs/SETUP.md）。初回だけ macOS が止める
  caveats <<~EOS
    Izuna は Apple の証明書で署名していません。初回は macOS が「開発元を確認できません」と言います。
      macOS 15 以降: 一度開こうとして断られたあと、システム設定 → プライバシーとセキュリティ の一番下の「このまま開く」
      ターミナルなら:  xattr -dr com.apple.quarantine "#{appdir}/Izuna.app"
    要るもの: Claude Code（ログイン済み）、自分の Forgejo、gh。準備画面が判定します。
      https://github.com/Watakumi/izuna/blob/main/docs/SETUP.md
  EOS

  zap trash: "~/Library/Application Support/izuna"
end
