cask 'ivpn' do
  version '2.9.8'
  sha256 '9d54b1d2123ac76306b3ee5900b3b6e4a0b755091d0f03882f1bf0953ae8a1ad'

  url "https://cdn.ivpn.net/releases/osx/IVPN-#{version}.dmg"
  appcast 'https://www.ivpn.net/updates/mac/sparkle/ivpn_mac_appcast.xml'
  name 'IVPN'
  homepage 'https://www.ivpn.net/apps-macos'

  app 'IVPN.app'

  uninstall_preflight do
    set_ownership "#{appdir}/IVPN.app"
  end

  uninstall delete:    [
                         '/Library/Application Support/IVPN',
                         '/Library/PrivilegedHelperTools/net.ivpn.client.Helper',
                       ],
            launchctl: 'net.ivpn.client.Helper',
            quit:      'net.ivpn.client.IVPN'

  zap trash: '~/Library/Preferences/net.ivpn.client.IVPN.plist'
end
