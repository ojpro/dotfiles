#export ZDOTDIR=/
#
# Global Variables
# default terminal 
#export TERMINAL=gnome-terminal

# flutter sdk path
export PATH="$HOME/Apps/flutter/bin:$PATH"

export PATH="$HOME/Apps/Android/Sdk/cmdline-tools/latest/bin:$PATH"

# add JetBrains Scripts
export PATH=$PATH:$HOME/.local/share/JetBrains/Toolbox/scripts

#  Add My Phone J2 Pro WIFI adb device serial
#export ANDROID_SERIAL=ee59f20a

#export ANDROID_SERIAL="SM-A245F"

# increase nodejs memoroy limit
export NODE_OPTIONS=--max-old-space-size=8192

# add composer binary scripts
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# add local bin to the path
export PATH="$HOME/.local/bin:$PATH"

# pub.dev global cache
export PATH="$PATH:$HOME/.pub-cache/bin"

# Add Java path
export PATH="$PATH:$HOME/.local/share/JetBrains/Toolbox/apps/android-studio/jbr/bin"

# Go bins PATH
#export PATH="$PATH:/usr/local/go/bin"


export ANDROID_HOME=$HOME/Apps/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools
export JAVA_HOME="/usr/lib/jvm/java-21-openjdk-amd64"

