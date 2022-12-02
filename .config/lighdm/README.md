# lighdm

Lightdm uses [mini greeter](https://github.com/prikhi/lightdm-mini-greeter) as it's gretter. Colors follow the [gruvbox](https://github.com/morhetz/gruvbox) theme. 

To install this configuration a symlink of `lighdm.conf` and `lighdm-mini-greeter.conf` must be created in the `/ect/lighdm` directory.


    ln -s ~/.config/lighdm/lightdm.conf /etc/lightdm/lightdm.conf


    ln -s ~/.config/lighdm/lightdm-mini-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf



