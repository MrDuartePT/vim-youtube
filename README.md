# vim-youtube
Play Youtube in (Neo)vim

## Installation
Youtube playback uses [yewtube](https://github.com/mps-youtube/yewtube), so that must be installed first. For example:

    brew install mpv # OSX
    pip install yt-dlp
    pip install yewtube
    
To install the plugin, you can use a plugin manager as follows:

    Plug 'rishihahs/vim-youtube'
    call dein#add('rishihahs/vim-youtube')
    and so on ...
    
## Usage
`:Youtube` brings up the Youtube window (you can map it to something convenient, like `[leader]y`). Escape automatically closes the window (though the Youtube buffer still plays in the background). 

You can customize behavior by adding to your `.vimrc`:

    " Location of mpsyt
    let g:VimYoutube_yewtube = '~/anaconda3/bin/yt'
    " Size of window
    let g:VimYoutube_size = 10
