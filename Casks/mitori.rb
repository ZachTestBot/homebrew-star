cask "mitori" do
  version "0.1.0"
  sha256 "1a2899324b4319e50e31b2b6df9ee07eb0708b7ef83949e126da23a6842b0a66"

  url "https://github.com/Zach677/mitori/releases/download/v#{version}/Mitori-#{version}.dmg"
  name "Mitori"
  desc "Monitor Apple ID store credit balances from the menu bar"
  homepage "https://github.com/Zach677/mitori"

  depends_on macos: ">= :tahoe"

  app "Mitori.app"

  preflight do
    system_command "xattr",
                   args: ["-cr", "#{staged_path}/Mitori.app"]
  end

  zap trash: "~/Library/Application Support/Mitori"
end
