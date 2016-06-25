#!/bin/bash
# Script to load and setup my bash_prompt


# Collecting data
LOCATION=$(readlink -f $(dirname "$0")) # location of this script
PROMPT_FOLDER=.bash_prompt # bash prompt folder name
HOME=~/ # location to your home folder


# Creating prompt folder
cd $HOME; rm -R $PROMPT_FOLDER; mkdir $PROMPT_FOLDER; cd $PROMPT_FOLDER

# Copying prompt files
cp $LOCATION/.bash_profile ./
cp $LOCATION/.bash_prompt ./

# Adding prompt location to end of barshrc if prompt not exist
# then reloaded file
prompt_alias=". $HOME$PROMPT_FOLDER/.bash_prompt"
if ! grep -qe "^$prompt_alias$" $HOME.bashrc; then
    echo $prompt_alias >> $HOME.bashrc
fi
source $HOME.bashrc

# Exit
echo "Bro you yust be prompted!"