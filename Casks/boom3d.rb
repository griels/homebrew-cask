cask 'boom3d' do
  version '1.1,1504086631'
  sha256 'e6d176a0858aa9f49e26eb07e0d3cd96ac460db42a701795dcbd31c150e054a5'

  # devmate.com/com.globaldelight.Boom2 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.globaldelight.Boom3D/#{version.before_comma}/#{version.after_comma}/Boom3D-#{version.before_comma}.dmg"

  appcast 'https://updates.devmate.com/com.globaldelight.Boom3D.xml',
          checkpoint: '7dea77223315b18c09862b7673f9c7ad2524ed932846012e454adf99c4a2dd1e'
  name 'Boom3D'
  homepage 'http://www.globaldelight.com/boom3d'

  depends_on macos: '>= :yosemite'

  app 'Boom 3D.app'

  uninstall kext:      'com.globaldelight.driver.Boom3DDevice',
            launchctl: [
                         'com.globaldelight.Boom3D.*',
                         'com.globaldelight.Boom3DHelper',
                       ],
            signal:    ['TERM', 'com.globaldelight.Boom3D']

  zap delete: [
                '~/Library/Application Support/com.globaldelight.Boom3D',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.globaldelight.boom3d.sfl',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.globaldelight.boom3dhelper.sfl',
                '~/Library/Preferences/com.globaldelight.Boom3D.plist',
                '~/Library/Preferences/com.globaldelight.Boom3DHelper.plist',
              ]
end
