cask 'expressvpn' do
  version '6.5.2.1413'
  sha256 '703de1b940b0b1bba3f185ff803b3ffc4bb6990fea7c589a7733abe7de37e099'

  url "https://download.expressvpn.xyz/clients/mac/expressvpn-install_v#{version}.pkg"
  name 'ExpressVPN'
  homepage 'https://www.expressvpn.com/setup'

  app "ExpressVPN.app"
end
