cask 'wakeonlan' do
  version '1.0'
  sha256 '00d86efd23e9d5de5451e26d6957f3af1a1a3bc66d11c50b8563454113fd5ab1'

  url "http://www.readpixel.com/downloads/files/WakeOnLan#{version}.zip"
  appcast 'http://www.readpixel.com/wakeonlan/'
  name 'WakeOnLan'
  homepage 'http://www.readpixel.com/wakeonlan/'

  app 'WakeOnLan/WakeOnLan.app'
end
