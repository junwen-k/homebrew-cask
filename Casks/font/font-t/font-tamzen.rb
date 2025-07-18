cask "font-tamzen" do
  version "1.11.6"
  sha256 "f35173177f9407bb78e48a93169f1981ae5c945d51fef6e4eeae85c1c9192577"

  url "https://github.com/sunaku/tamzen-font/archive/refs/tags/Tamzen-#{version}.tar.gz"
  name "Tamzen"
  homepage "https://github.com/sunaku/tamzen-font"

  no_autobump! because: :requires_manual_review

  font "tamzen-font-Tamzen-#{version}/ttf/Tamzen10x20b.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/Tamzen10x20r.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/Tamzen5x9b.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/Tamzen5x9r.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/Tamzen6x12b.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/Tamzen6x12r.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/Tamzen7x13b.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/Tamzen7x13r.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/Tamzen7x14b.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/Tamzen7x14r.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/Tamzen8x15b.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/Tamzen8x15r.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/Tamzen8x16b.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/Tamzen8x16r.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/TamzenForPowerline10x20b.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/TamzenForPowerline10x20r.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/TamzenForPowerline5x9b.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/TamzenForPowerline5x9r.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/TamzenForPowerline6x12b.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/TamzenForPowerline6x12r.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/TamzenForPowerline7x13b.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/TamzenForPowerline7x13r.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/TamzenForPowerline7x14b.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/TamzenForPowerline7x14r.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/TamzenForPowerline8x15b.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/TamzenForPowerline8x15r.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/TamzenForPowerline8x16b.ttf"
  font "tamzen-font-Tamzen-#{version}/ttf/TamzenForPowerline8x16r.ttf"

  # No zap stanza required
end
