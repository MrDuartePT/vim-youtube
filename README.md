# vim-youtube
Play Youtube in (Neo)vim

## Installation
Youtube playback uses [mps-youtube](https://github.com/mps-youtube/mps-youtube), so that must be installed first. For example:

    brew install mpv # OSX
    pip install youtube_dl
    pip install mps-youtube
    
To install the plugin, you can use a plugin manager as follows:

    Plug 'rishihahs/vim-youtube'
    call dein#add('rishihahs/vim-youtube')
    and so on ...
    
## Usage
`:Youtube` brings up the Youtube window (you can map it to something convenient, like `[leader]y`). Escape automatically closes the window (though the Youtube buffer still plays in the background). 

You can customize behavior by adding to your `.vimrc`:

    " Location of mpsyt
    let g:VimYoutube_mpsyt = '~/anaconda3/bin/mpsyt'
    " Size of window
    let g:VimYoutube_size = 10
