cask "usb-overdrive" do
  version "5.3.1"
  sha256 "36d923046fca04503288449f48dd3bab299e782974900a2ddd0d2dbf81bf3e6c"

  url "https://www.usboverdrive.com/download/USB-Overdrive-#{version.no_dots}.dmg"
  name "USB Overdrive"
  desc "USB and Bluetooth device driver"
  homepage "https://www.usboverdrive.com/"

  livecheck do
    url "https://www.usboverdrive.com/downloads/"
    regex(/>USB\s+Overdrive\s+v?(\d+(?:\.\d+)+)/i)
  end

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :monterey"

  app "USB Overdrive.app"

  zap trash: [
    "~/Library/Preferences/com.usboverdrive.app.plist",
    "~/Library/Preferences/com.usboverdrive.settings.plist",
  ]
end
