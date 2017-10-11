cask 'expressvpn' do
  version '6.5.3.1937'
  sha256 'c942084be2d751428e310cdb291a49b6f1edb8cfa68ca9359cc5e2c265c32a0f'

  url "https://download.expressvpn.xyz/clients/mac/expressvpn-install_v#{version}.pkg"
  name 'ExpressVPN'
  homepage 'https://www.expressvpn.com/setup'

  pkg "expressvpn-install_v#{version}.pkg"
  uninstall pkgutil:'com.expressvpn.ExpressVPN'
end
