cask "mitori" do
  version "0.2.0"
  sha256 "d0c75fa09b77e07fa18321de775d5fa080c29747b548e278dd563be0ce7b9cc0"

  url "https://github.com/Zach677/mitori/releases/download/v#{version}/Mitori-#{version}.dmg"
  name "Mitori"
  desc "Monitor Apple ID store credit balances from the menu bar"
  homepage "https://github.com/Zach677/mitori"

  depends_on macos: :tahoe

  app "Mitori.app"

  preflight do
    system_command "xattr",
                   args: ["-cr", "#{staged_path}/Mitori.app"]
  end

  zap trash: "~/Library/Application Support/Mitori"
end
