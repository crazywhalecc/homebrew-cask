cask 'skype' do
  version '8.45.0.43'
  sha256 '2707f42a1371a6db11394b9c838e06164236bfb36159c75e3926f9dc601f371e'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  appcast 'https://get.skype.com/s4l-update?version&os=mac&ring=production&app=s4l'
  name 'Skype'
  homepage 'https://www.skype.com/'

  auto_updates true

  app 'Skype.app'

  zap trash: [
               '~/Library/Address Book Plug-Ins/SkypeABCaller.bundle',
               '~/Library/Address Book Plug-Ins/SkypeABDialer.bundle',
               '~/Library/Address Book Plug-Ins/SkypeABSMS.bundle',
               '~/Library/Address Book Plug-Ins/SkypeABChatter.bundle',
               '~/Library/Application Scripts/com.skype.skype.shareagent',
               '~/Library/Application Support/Skype',
               '~/Library/Application Support/T/SkypeRT',
               '~/Library/Application Support/CrashReporter/Skype_*.plist',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.skype.skype.sfl*',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.skype.skype',
               '~/Library/Caches/com.skype.skype',
               '~/Library/Caches/com.skype.skype.ShipIt',
               '~/Library/Containers/com.skype.skype.shareagent',
               '~/Library/Cookies/com.skype.skype.binarycookies',
               '~/Library/Group Containers/*.com.skype.skype',
               '~/Library/Preferences/com.skype.skype.plist',
               '~/Library/Preferences/com.skype.skypewifi.plist',
               '~/Library/Preferences/ByHost/com.skype.skype.*.plist',
               '~/Library/Saved Application State/com.skype.skype.savedState',
               '~/Library/WebKit/com.skype.skype',
             ]
end
