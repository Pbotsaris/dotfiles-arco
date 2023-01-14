# Android SDK + Flutter Setup

## Flutter

Install flutter

    yay -S flutter

**IMPORTANT**: At the time of writting only `open-jdk8` worked for this installation. 


Create group for flutter, add your user to the group and set permissions

    sudo groupadd flutterusers
    sudo gpasswd -a $USER flutterusers
    sudo chown -R ${USER}:flutterusers /opt/flutter
    sudo chmod -R g+w /opt/flutter/


### Android SDK

Install the following packages

        yay -S android-sdk android-platform android-sdk-platform-tools android-sdk-build-tools android-sdk-cmdline-tools-latest android-google-play-licensing



Permissions

    sudo groupadd android-sdk
    sudo gpasswd -a <user> android-sdk
    sudo setfacl -R -m g:android-sdk:rwx /opt/android-sdk
    sudo setfacl -d -m g:android-sdk:rwX /opt/android-sdk


Exports to `.zshrc`. It should be in your config though double check with `shell-config`. 

    # Android SDK paths
    export ANDROID_HOME=/opt/android-sdk
    export PATH=$PATH:$ANDROID_HOME/tools
    export PATH=$PATH:$ANDROID_HOME/platform-tools
    export PATH=$PATH:$ANDROID_HOME/build-tools/33.0.1/
    export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin/
    export PATH=$PATH:$ANDROID_HOME/tools/bin
    export ANDROID_SDK_ROOT='/opt/android-sdk'


Also export java - attention for the `openjdk` version in the path that must match your installation.

    # Java
    export JAVA_HOME='/usr/lib/jvm/java-8-openjdk'
    
**Warning:** If you are having problems and looking for answers, do not export this 

    export JAVA_OPTS='-XX:+IgnoreUnrecognizedVMOptions --add-modules java.se.ee'

It will cause more harm than good


### Wrapping up & SDK licenses

Accept licenses

     flutter doctor --android-licenses


Check installation with 

      flutter doctor



## Android Emulator

To get a list of downloadable system images for the android emulator 


    sdkmanager --list


To install

    sdkmanager --install <image-name>
  

At time of writting this is what was installed

    sdkmanager --install "system-images;android-33;google_apis;arm64-v8a" 

Then generated the emulator `pixel_5_api33_google_atd_emulator`

    echo "no" | avdmanager --verbose create avd --force --name "pixel_5_api33_google_atd_emulator" --package "system-images;android-33;google_apis;arm64-v8a" --abi "arm64-v8a" --device "pixel_5"


This is a simplified version of the above command

    avdmanager create avd -n <name> -k <image-name>


Check you avd lists

    emulator -list-avd


Run

    
