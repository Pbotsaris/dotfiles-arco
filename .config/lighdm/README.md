# lighdm

Lightdm uses [mini greeter](https://github.com/prikhi/lightdm-mini-greeter) as it's gretter. Colors follow the [terafox theme](https://github.com/EdenEast/nightfox.nvim) theme. 

To install this configuration, create a symlink of `lighdm.conf` and `lighdm-mini-greeter.conf` in the `/ect/lighdm` directory.


    ln -s ~/.config/lighdm/lightdm.conf /etc/lightdm/lightdm.conf
    ln -s ~/.config/lighdm/lightdm-mini-greeter.conf /etc/lightdm/lightdm-mini-greeter.conf


Symlinking `lightdm-mini-greeter.conf` has caused issues in the past. **Please test lightdm before rebooting with**


    lightdm --test-mode -d


**Important: Ensure that the at you have entered the correct user for lightdm mini greeter in `lighdm-mini-greeter.conf` as follows**

           
    
          # lighdm-mini-greeter.conf
          [greeter]
          user = <USERNAME HERE>
          (...)


You must enter the computers user here otherwise you will be **UNABLE to login**
