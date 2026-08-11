cask "mitori" do
  version "0.2.1"
  sha256 "baca484a6ebfe7495ba3614732c2894bd91617a86e1dc52a5a0d746a0b788371"

  url "https://github.com/Zach677/mitori/releases/download/v#{version}/Mitori-#{version}.dmg"
  name "Mitori"
  desc "Monitor Apple ID store credit balances from the menu bar"
  homepage "https://github.com/Zach677/mitori"

  depends_on macos: :sonoma

  app "Mitori.app"

  preflight do
    system_command "xattr",
                   args: ["-cr", "#{staged_path}/Mitori.app"]
  end

  zap trash: "~/Library/Application Support/Mitori"
end
