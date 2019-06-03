cask 'bettertouchtool-2428' do
  version '2.428'
  sha256 'cbcd1c109668b3d0cdd78c7266ea1692ed37081cef20bab00de5594375a5e515'

  # bettertouchtool.net/releases was verified as official when first introduced to the cask
  # See: https://folivora.ai/blog/post/13005
  url "https://bettertouchtool.net/releases/btt_2.428_recovery_mojave.zip"
  appcast 'https://bettertouchtool.net/releases/'

  name 'BetterTouchTool'
  homepage 'https://folivora.ai/'

  auto_updates true

  app 'BetterTouchTool.app'

  uninstall login_item: 'BetterTouchTool'

  zap trash: [
               '~/Library/Preferences/com.hegenberg.BetterTouchTool.plist',
               '~/Library/Application Support/BetterTouchTool',
             ]
end
