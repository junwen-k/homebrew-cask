cask "proxyman" do
  version "5.22.0,52200"
  sha256 "509cccfeb5615635b9806c894aaf2d6ba3dc2dfb24847747a8e81839fb5e2f25"

  url "https://download.proxyman.com/#{version.csv.second}/Proxyman_#{version.csv.first}.dmg"
  name "Proxyman"
  desc "HTTP debugging proxy"
  homepage "https://proxyman.com/"

  livecheck do
    url "https://proxyman.com/osx/version.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Proxyman.app"
  binary "#{appdir}/Proxyman.app/Contents/MacOS/proxyman-cli"

  uninstall_postflight do
    stdout, * = system_command "/usr/bin/security",
                               args: ["find-certificate", "-a", "-c", "Proxyman", "-Z"],
                               sudo: true
    hashes = stdout.lines.grep(/^SHA-256 hash:/) { |l| l.split(":").second.strip }
    hashes.each do |h|
      system_command "/usr/bin/security",
                     args: ["delete-certificate", "-Z", h],
                     sudo: true
    end
  end

  uninstall launchctl: "com.proxyman.NSProxy.HelperTool",
            quit:      "com.proxyman.NSProxy",
            delete:    "/Library/PrivilegedHelperTools/com.proxyman.NSProxy.HelperTool"

  zap trash: [
    "~/.proxyman*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.proxyman.nsproxy.sfl*",
    "~/Library/Application Support/com.proxyman",
    "~/Library/Application Support/com.proxyman.NSProxy",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.proxyman.NSProxy",
    "~/Library/Caches/com.proxyman.NSProxy",
    "~/Library/Caches/Proxyman",
    "~/Library/Cookies/com.proxyman.binarycookies",
    "~/Library/Cookies/com.proxyman.NSProxy.binarycookies",
    "~/Library/HTTPStorages/com.proxyman.NSProxy",
    "~/Library/Preferences/com.proxyman.iconappmanager.userdefaults.plist",
    "~/Library/Preferences/com.proxyman.NSProxy.plist",
    "~/Library/Preferences/com.proxyman.plist",
    "~/Library/Saved Application State/com.proxyman.NSProxy.savedState",
    "~/Library/WebKit/com.proxyman.NSProxy",
  ]
end
